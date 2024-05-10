<?php
header('Content-type:text/html; charset=utf-8');
//开启session
session_start();

//先判断cookie是否有用户信息
if(isset($_COOKIE['username'])){
    $_SESSION['username'] = $_COOKIE['username'];
    $_SESSION['islogin'] = 1;
    #print_r($_SESSION);
}
if(isset($_SESSION['islogin'])){
    //如果已经登陆
    echo "你好".$_SESSION['username']." ,欢迎来到个人中心!<br>";
    echo "<a href='zhuxiao.php'>注销</a>";
}else{
    //如果没有登录
    echo "你还没有登录，请<a href = 'login.html'>登录</a>";
}
?>
