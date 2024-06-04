<?php
session_start();
require 'include/conn.php';

// Check if form is submitted
if (isset($_POST['submit'])) {
    // Get the form data
    $username = $_POST['username'];
    $telp = $_POST['telp'];
    $password = $_POST['password'];
    $id_user = $_SESSION['id_user']; // Assuming you store the user's ID in session
    $photo_lama = $_POST['photo_lama'];

    // Handle file upload
    if ($_FILES['photo']['error'] === 4) {
        $photo = $photo_lama;
    } else {
        $photo = upload();
    }

    // Update query
    if (!empty($password)) {
        $hashedPassword = password_hash($password, PASSWORD_BCRYPT);
        $sql = "UPDATE saw_users SET username='$username', telp='$telp', password='$hashedPassword', photo='$photo' WHERE id_user='$id_user'";
    } else {
        $sql = "UPDATE saw_users SET username='$username', telp='$telp', photo='$photo' WHERE id_user='$id_user'";
    }

    if (mysqli_query($db, $sql)) {
        echo "<script>alert('Profile Berhasil Diubah');
        document.location.href = 'profile.php';
        </script>";
    } else {
        echo "<script>alert('Profile Gagal Diubah');
        document.location.href = 'profile.php';
        </script>";
    }
}

function upload() {
    $namaFile = $_FILES['photo']['name'];
    $ukuranFile = $_FILES['photo']['size'];
    $error = $_FILES['photo']['error'];
    $tmpName = $_FILES['photo']['tmp_name'];

    // Check if no file is uploaded
    if ($error === 4) {
        echo "<script>
            alert('Pilih Gambar Terlebih Dahulu!');
            window.location='profile.php';
          </script>";
        return false;
    }

    // Check if the uploaded file is an image
    $ekstensiImageValid = ['jpg', 'jpeg', 'png'];
    $ekstensiImage = explode('.', $namaFile);
    $ekstensiImage = strtolower(end($ekstensiImage));
    if (!in_array($ekstensiImage, $ekstensiImageValid)) {
        echo "<script>
            alert('Yang Anda Upload Bukan Gambar!');
            window.location='profile.php';
          </script>";
        return false;
    }

    // Check if the file size is too large
    if ($ukuranFile > 2000000) {
        echo "<script>
            alert('Ukuran Gambar Terlalu Besar!');
            window.location='profile.php';
          </script>";
        return false;
    }

    // Generate a new unique name for the image
    $namaFileBaru = uniqid();
    $namaFileBaru .= '.';
    $namaFileBaru .= $ekstensiImage;

    move_uploaded_file($tmpName, './assets/photo/' . $namaFileBaru);

    return $namaFileBaru;
}
?>
