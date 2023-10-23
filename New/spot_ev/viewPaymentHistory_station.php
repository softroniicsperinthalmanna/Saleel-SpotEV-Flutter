<?php
include 'connect.php';
// $id = $_POST['id'];
$sql1=mysqli_query($con,"SELECT * from bookings INNER JOIN user_register_tb on bookings.user_id=user_register_tb.login_id where completed_status='completed';");
$list=array();
if($sql1->num_rows>0){
    while($rows=mysqli_fetch_assoc($sql1)){
        $myarray['result']='Success';
        $myarray['user_id']=$rows['user_id'];
        $myarray['date']=$rows['date'];
        $myarray['time']=$rows['time'];
        $myarray['name']=$rows['name'];
        $myarray['place']=$rows['place'];
        $myarray['mobile_no']=$rows['mobile_no'];
      
        array_push($list,$myarray);
    }
}
else{
    $myarray['result']='failed';
    array_push($list,$myarray);
}
echo json_encode($list);

?>