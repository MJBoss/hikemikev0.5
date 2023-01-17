<?php
include_once "connect.php";


if (isset($_POST["submit"])){
    $id=$_POST["updateid"];
    $fn=$_POST["fname"];
    $ln=$_POST["lname"];
    $em=$_POST["emailupdate"];

    //$sql = "UPDATE tbl_user SET firstName = :fname, lastName = :lname, email = :email WHERE user_id = :id";

    $sql = "UPDATE tbl_user SET firstName=?, lastName=?, email=? WHERE user_id=?";
    $statement= $conn->prepare($sql);
    $statement->execute([$fn, $ln, $em, $id]);


    // $sql = "UPDATE tbl_user 
    //     SET firstName=?, lastName=?, email=?
	// 	WHERE user_id=?";

    // $statement=$conn->prepare($sql);
    // $statement->execute(array($fn,$ln,$em,$id));

    header("location:../admin/user-table.php?error=updated");

    

    
    }else{

        header("location:../admin/user-table.php?error=invalidmodal");

    }

?>