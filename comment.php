<?php

$blog = $_GET['blog'];
$id = $_GET['id'];

require_once "lib/koneksi.php";

$name = $_POST['name'];
$content = $_POST['body'];
$date = date('Y-m-d');

$query = "INSERT INTO comments (name, content, created_at, blog_id) VALUES ('$name', '$content', '$date', $id)";

mysqli_query($db, $query);

header('location:read.php?read=' . $blog);