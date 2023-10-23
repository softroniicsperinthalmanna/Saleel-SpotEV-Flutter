<?php
include 'connect.php';
// $id = $_POST['id'];
$sql1=mysqli_query($con,"SELECT * FROM offer INNER JOIN station_tb on offer.station_log_id=station_tb.login_id ");
$list=array();
if($sql1->num_rows>0){
    while($rows=mysqli_fetch_assoc($sql1)){
        $myarray['result']='Success';
        $myarray['img']=$rows['image'];
        $myarray['name']=$rows['name'];
        $myarray['place']=$rows['place'];
      
        array_push($list,$myarray);
    }
}
else{
    $myarray['result']='failed';
    array_push($list,$myarray);
}
echo json_encode($list);

?>