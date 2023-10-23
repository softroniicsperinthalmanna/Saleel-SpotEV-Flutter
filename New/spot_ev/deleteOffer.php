<?php
include 'connect.php';

$offerID=$_POST['offer_id'];
$sql2=mysqli_query($con,"DELETE from offer where offer_id='$offerID'");
if( $sql2){
    $myarray['result']='Success';
}
else{
    $myarray['result']='Failed';
}
echo json_encode($myarray);
?>