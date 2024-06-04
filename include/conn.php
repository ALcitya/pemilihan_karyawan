<?php
//-- konfigurasi database
$host = 'localhost';
$username = 'root';
$pass = '';
$nama_db = 'pemilihan_karyawan';
//-- koneksi ke database server dengan extension mysqli
$db = new mysqli($host, $username, $pass, $nama_db);
//-- hentikan program dan tampilkan pesan kesalahan jika koneksi gagal
if ($db->connect_error) {
    die('Connect Error (' . $db->connect_errno . ')' . $db->connect_error);
}
