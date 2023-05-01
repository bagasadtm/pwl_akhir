<?php

include_once "../lib/koneksi.php";

$slug = $_POST['slug'];
$title = $_POST['title'];
$body = $_POST['body'];
$date = date('Y-m-d');

$query = "UPDATE blog SET created_at='$date', title='$title', body='$body' WHERE slug='$slug'";


mysqli_query($db, $query);


header("location:index.php");