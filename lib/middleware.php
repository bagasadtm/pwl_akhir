<?php 
session_start();

$logged_in = isset($_SESSION['logged_in']);

function setMiddleware($auth = false, $redirect = 'login.php')
{
    global $logged_in;

    if ($auth && !$logged_in){
        header("Location: $redirect");
        exit;
    }

    if (!$auth && $logged_in){
        header("Location: $redirect");
        exit;
    }
}
?>