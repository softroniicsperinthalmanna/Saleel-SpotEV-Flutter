<?php
include 'connect.php';
$id = $_POST['id'];
$sql1=mysqli_query($con,"SELECT * FROM offer where station_log_id = '$id'");
$list=array();
if($sql1->num_rows>0){
    while($rows=mysqli_fetch_assoc($sql1)){
        $myarray['result']='Success';
        $myarray['img']=$rows['image'];
        $myarray['offer_id']=$rows['offer_id'];
      
        array_push($list,$myarray);
    }
}
else{
    $myarray['result']='failed';
    array_push($list,$myarray);
}
echo json_encode($list);

?>