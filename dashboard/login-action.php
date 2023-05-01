<?php  

include "../lib/middleware.php";

setMiddleware(false, 'index.php');

if ($_POST ['username'] == 'admin' && $_POST['password'] == 'admin'){
    $_SESSION['logged_in'] = true;
    header("Location: index.php");
    exit;
}