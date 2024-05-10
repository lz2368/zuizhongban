<?php
require('lianjie.php');

header('Content-type:text/html;charset=utf-8');

$username = $_POST['username'];
$passwd = $_POST['passwd'];


$sql = "select username from user where username = '$username'";
$result = mysqli_query($db_link,$sql);
$row = mysqli_fetch_assoc($result);
//判断用户名是否存在
if($username == $row['username']){
    
    echo "<script>alert('用户名.$username.已经存在!请重新注册')</script>";

}else{
    //用户名不存在 将注册的账号密码加入数据库
    $sql_insert = "insert into user(username,passwd) values('$username','$passwd')";
    mysqli_query($db_link,$sql_insert);
    header('refrsh:3;url=login.html');
    echo "<script>alert('$username.用户注册成功，请点击登录去登录!')</script>";
}


?>
