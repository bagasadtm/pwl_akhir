<?php 

$db = mysqli_connect("localhost", "root", "", "db_bagas");

if (mysqli_connect_error())
    die("koneksi ke database gagal: " . mysqli_connect_error());
