<?php
include_once("../includes/connect.php");
$connect = mysqli_connect("localhost", "root", "", "mike");

    
   if (isset($_POST["Import"])){

    if ($_FILES['file']['name'] == "")
    {
    header('Location:grade-table.php?error=Nofile');
    exit();
    }else{

      $syid = $_POST["sy"];
      $semid = $_POST["sem"];
      $sbjid = $_POST["subject"];
      //$semid = $_POST["sem"];
      // $sbjid = $_POST["subject"];



        if($_FILES['file']['name'])
{
$filename = explode(".", $_FILES['file']['name']);
if($filename[1] == 'csv'){

    $handle = fopen($_FILES['file']['tmp_name'], "r");

    while($data = fgetcsv($handle))//handling csv file 
    
    {
      $item1 = mysqli_real_escape_string($connect, utf8_encode($data[0]));
      $item2 = mysqli_real_escape_string($connect, utf8_encode($sbjid));
      $item3 = mysqli_real_escape_string($connect, utf8_encode($syid));
      $item4 = mysqli_real_escape_string($connect, utf8_encode($semid));
      $item5 = mysqli_real_escape_string($connect, utf8_encode($data[1]));
      $item6 = mysqli_real_escape_string($connect, utf8_encode($data[2]));
      $item7 = mysqli_real_escape_string($connect, utf8_encode($data[3]));
      $item8 = mysqli_real_escape_string($connect, utf8_encode($data[4]));
      // $item5 = password_hash(mysqli_real_escape_string($connect, utf8_encode($data[4])), PASSWORD_DEFAULT);



      // $statement=$conn->prepare("SELECT * FROM tbl_students LEFT JOIN tbl_grades ON tbl_students.s_id=tbl_grades.s_id WHERE tbl_students.s_id = :stid");
      $statement=$conn->prepare("SELECT s_id, sbj_id FROM tbl_grades WHERE s_id = '$item1' AND sbj_id = '$item2'");
      // $statement->bindParam(':stid', $sid);
      $statement->execute();
      $result = $statement->fetch(PDO::FETCH_ASSOC);

      $itemone = $item1;
      $itemtwo = $item2;

      if(!empty($result)){
        $query = "UPDATE tbl_grades SET prelim = '$item5', midterm = '$item6', prefinal = '$item7', final = '$item8' WHERE s_id = '$item1' AND sbj_id = '$item2'";
      }else{
      $query = "INSERT into tbl_grades (s_id, sbj_id, sy_id, sem_id, prelim, midterm, prefinal,final) 
      values('$item1', '$item2', '$item3','$item4','$item5','$item6','$item7','$item8')";
        
      }



      // $query = "INSERT into tbl_grades (s_id, sbj_id, sy_id, sem_id, prelim, midterm, prefinal,final) 
      // values('$item1', '$item2', '$item3','$item4','$item5','$item6','$item7','$item8')";

      mysqli_query($connect, $query);
}

}

fclose($handle);
header("location:grade-table.php?error=Uploaded");
     exit;

}


    // $filename=$_FILES["file"]["tmp_name"];    
    //  if($_FILES["file"]["size"] > 0)
    //  {
    //     $file = fopen($filename, "r");
    //       while (($getData = fgetcsv($file, 10000, ",")) !== FALSE)
    //        {
    //          $sql = "INSERT INTO tbl_user (user_id,firstName,lastName,email,password) 
    //                VALUES ('".$getData[0]."','".$getData[1]."','".$getData[2]."','".$getData[3]."','".$getData[4]."')
    //                ON DUPLICATE KEY UPDATE 
    //                    firstName='".$getData[1]."', lastName='".$getData[2]."', email='".$getData[3]."', password='".$getData[4]."'";
    //                $result = mysqli_query($connect, $sql);
    //     if(!isset($result))
    //     {
    //       echo "<script type=\"text/javascript\">
    //           alert(\"Invalid File:Please Upload CSV File.\");
    //           window.location = \"upload.php\"
    //           </script>";    
    //     }
    //     else {
    //         echo "<script type=\"text/javascript\">
    //         alert(\"CSV File has been successfully Imported.\");
    //         window.location = \"upload.php\"
    //       </script>";
    //     }
    //        }
      
    //        fclose($file);  
    //  }
    }
  } 


 ?>











