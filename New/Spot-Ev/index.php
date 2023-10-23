
<?php
session_start();
include 'pages/connection.php';
if(isset($_POST['submit'])){
  $user = $_POST['username'];
  $pass = $_POST['password'];

  $data = mysqli_query($con,"select * from login_tb where email ='$user' and password ='$pass'");
  if(mysqli_num_rows($data)>0){
    $data1 = mysqli_fetch_assoc($data);
    $lid = $data1['login_id'];
    if($data1['user_type']=='admin'){
      header("location:pages/dashboard.php");
    }
  


  }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    <title>Ludiflex | Login</title>

</head>
<body>
   <div class="box">
    <div class="container">

        <div class="top">
            <span>Have an account?</span>
            <header>Login</header>
        </div>
        <form action="" method ="post">

        <div class="input-field">
            <input type="text" class="input" name="username" placeholder="Username" id="">
            <i class='bx bx-user' ></i>
        </div>

        <div class="input-field">
            <input type="Password" class="input" name ="password" placeholder="Password" id="">
            <i class='bx bx-lock-alt'></i>
        </div>

        <div class="input-field">
            <!-- <a href="pages/dashboard.php"> -->
                <button class="submit" name="submit">Login</button>
            <!-- </a> -->
        </div>

        </form>

    
    </div>
</div>  
</body>
</html>