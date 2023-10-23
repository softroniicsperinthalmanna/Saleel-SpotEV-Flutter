<?php
include 'connect.php';
$id = $_POST['id'];
$sql1=mysqli_query($con,"SELECT * from bookings INNER JOIN station_tb on bookings.station_id=station_tb.login_id where completed_status='completed'&& user_id='$id' ;");
$list=array();
if($sql1->num_rows>0){
    while($rows=mysqli_fetch_assoc($sql1)){
        $myarray['result']='Success';
        $myarray['station_id']=$rows['station_id'];
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