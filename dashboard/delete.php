<?php

$slug = $_GET['slug'];

include_once "../lib/koneksi.php";

$query = "DELETE FROM blog WHERE slug='$slug'";

mysqli_query($db, $query);

header("location:index.php");
