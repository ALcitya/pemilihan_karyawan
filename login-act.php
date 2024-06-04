<?php
include 'include/conn.php';

$username = $_POST['username'];
$password = md5($_POST['password']);

$login = $db->query("select * from saw_users where username='$username' and password='$password'");
$cek = mysqli_num_rows($login);

if ($cek > 0) {
    session_start();
    $_SESSION['id_user'] = $id_user;
    $_SESSION['username'] = $username;
    $_SESSION['status'] = "login";
    header("location:index.php");
} else {
    header("location:login.php");
}
