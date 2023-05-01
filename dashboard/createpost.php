<?php
include "../lib/middleware.php";
setMiddleware(true);

include "../lib/koneksi.php";
include "../lib/slugify.php";

$title = $_POST["title"];
$body = mysqli_real_escape_string($db, $_POST["body"]);
$slug = slugify($title);
$date = date('Y-m-d');

$query = "INSERT INTO blog (title, slug, body, created_at) VALUES ('$title', '$slug', '$body', '$date')";

mysqli_query($db, $query);

header("location:index.php");