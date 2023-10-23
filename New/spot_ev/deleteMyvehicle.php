<?php
include 'connect.php';

$vehID=$_POST['veh_id'];
$sql2=mysqli_query($con,"DELETE from myvehicle where mv_id='$vehID'");
if( $sql2){
    $myarray['result']='Success';
}
else{
    $myarray['result']='Failed';
}
echo json_encode($myarray);
?>