<?php
require "include/conn.php";
$username = $_POST['username'];
$telp = $_POST['telp'];
$password = md5($_POST['password']);
// $x = $db->query($sql);
// var_dump($x);
$sql = "INSERT INTO saw_users (username, telp, password) VALUES ('$username','$telp','$password')";

if ($db->query($sql) === true) {
    echo "<script>
        alert('Registrasi berhasil');
        window.location='login.php';
      </script>";
} else {
    echo "Error: " . $sql . "<br>" . $db->error;
}

