<?php
include 'connection.php';
$id = $_GET['id'];
mysqli_query($con,"delete from vehicles where v_id = '$id'");
header("location:view-vehicles.php");
?>