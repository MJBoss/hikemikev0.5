<?php
include("../includes/connect.php");
include("../templates/header.php");
include("../modals/addmodal.php");
include("../modals/uploadmodal.php");
include("../modals/gr_uploadmodal.php");


// if (!isset($_SESSION['u_id']) || $_SESSION['u_id'] == '') {
//   header("location:../index.php?error=nopass");
// }else{
//   echo 'Set and not empty, and no undefined index error!';
//   var_dump($_SESSION);
// }

define("ROW_PER_PAGE",20);

?>
<style>
.f-right {
    display: inline-block;
    float: right;
}
</style>


  <!--================ Hero sm Banner start =================-->    
  <section class="mb-30px">
    <div class="container">
      <div class="hero-banner hero-banner--sm">
        <div class="hero-banner__content">
          <h1>Grade Table</h1>
          <nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item active" aria-current="page">Under Construction</li>
            </ol>
          </nav>
        </div>
      </div>
    </div>
  </section>
  <!--================ Hero sm Banner end =================-->    

  

  <!--================ Start Blog Post Area =================-->
<section class="section-margin--small section-margin">
<div class="container">

<link rel="stylesheet" href="../vendors/bootstrap/bootstrap.min.css">
<script src="../vendors/bootstrap/js/bootstrap.bundle.min.js" ></script>



<?php	
  $search_keyword = '';
  
    if(!empty($_POST['search']['keyword'])) {
      $search_keyword = $_POST['search']['keyword'];
    }
// SELECT *, student.s_id FROM tbl_grades INNER JOIN student ON tbl_grades.s_id=student.s_id
  $sql = 'SELECT
  *
  FROM tbl_grades
  INNER JOIN tbl_students
  ON tbl_grades.s_id=tbl_students.s_id
  INNER JOIN tbl_subject
  ON tbl_grades.sbj_id=tbl_subject.sbj_id 
  WHERE tbl_grades.s_id LIKE :keyword OR tbl_students.s_name LIKE :keyword OR tbl_subject.sbj_code LIKE :keyword ORDER BY tbl_students.s_name ASC ';

  /* Pagination Code starts */
    $per_page_html = '';
    $page = 1;
    $start=0;
    if(!empty($_POST["page"])) {
      $page = $_POST["page"];
      $start=($page-1) * ROW_PER_PAGE;
    }

  $limit=" limit " . $start . "," . ROW_PER_PAGE;
  $pagination_statement = $conn->prepare($sql);
  $pagination_statement->bindValue(':keyword', '%' . $search_keyword . '%', PDO::PARAM_STR);
  $pagination_statement->execute();

  $row_count = $pagination_statement->rowCount();
    if(!empty($row_count)){
      $per_page_html .= "<div style='text-align:center;margin:20px 0px;'>";
      $page_count=ceil($row_count/ROW_PER_PAGE);
        if($page_count>1) {
          for($i=1;$i<=$page_count;$i++){
            if($i==$page){
              $per_page_html .= '<input type="submit" name="page" value="' . $i . '" class="btn-page current" />';
            }else {
              $per_page_html .= '<input type="submit" name="page" value="' . $i . '" class="btn-page" />';
            }
          }
        }
      $per_page_html .= "</div>";
    }

  $query = $sql.$limit;
  $pdo_statement = $conn->prepare($query);
  $pdo_statement->bindValue(':keyword', '%' . $search_keyword . '%', PDO::PARAM_STR);
  $pdo_statement->execute();
  $result = $pdo_statement->fetchAll();
?>

<h2>Grade Table</h2>
<!-- Button trigger modal -->

<div class="prompt"><?php echo $message ?></div>

<form name='frmSearch' action='' method='post'>

  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addModal" style=" margin-bottom: 15px; "> Add  </button>
  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#gr_uplodaModal" style=" margin-bottom: 15px; "> Upload </button>
  <div class="f-right">Search: <input type='text' name='search[keyword]' value="<?php echo $search_keyword; ?>" id='keyword' maxlength='25'>
  </div>
  
  <table id='myTable' class='table table-striped table-bordered'>
    <tr>
      <!-- <th>Edit</th> -->
      <th>Student Id</th>
      <th>Name</th>
      <th>Subject</th>
      <th>Prelim</th>
      <th>Midterm</th>
      <th>Prefinal</th>
      <th>Final</th>
      <th>Action</th>
    </tr>

  <tbody id='table-body'>

    <?php if(!empty($result)) { foreach($result as $item) { ?>

    <tr>
      <!-- <td><input type="checkbox" class="select"></td> -->
      <td><?php echo $item["s_id"]?></td>
      <td><?php echo $item["s_name"]?></td>
      <td><?php echo $item["sbj_code"]?></td>
      <td><?php echo $item["prelim"]?></td>
      <td><?php echo $item["midterm"] ?></td>
      <td><?php echo $item["prefinal"] ?></td>
      <td><?php echo $item["final"] ?></td>
      <td>
        <a href="#edit_<?php echo $item["s_id"]; ?>" class="btn btn-success" data-bs-toggle="modal">EDIT</a>
          <!-- < ?php include("../modals/update.modal.php"); ?> -->
        <a href="#del_<?php echo $item["s_id"]; ?>" class="btn btn-danger" data-bs-toggle="modal">DELETE</a>
          <!-- < ?php include("../modals/delmodal.php"); ?> -->
      </td>
    </tr>
    <?php
    }
    }
    ?>
  </tbody>
  </table>
  <?php echo $per_page_html; ?>
</form>

</div>
</section>
<!--================ End Blog Post Area =================-->
</main>

<?php 
include_once '../templates/footer.php';
?>