<?php
include 'connect.php';
$bookingID=$_POST['id'];
$sql2=mysqli_query($con,"UPDATE bookings set completed_status='completed' WHERE booking_id='$bookingID'");
if( $sql2){
    $myarray['result']='Success';
}
else{
    $myarray['result']='Failed';
}
echo json_encode($myarray);
?>