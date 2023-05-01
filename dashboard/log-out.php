<?php  

include "../lib/middleware.php";

setMiddleware(true, 'login.php');

unset($_SESSION['logged_in']);
session_destroy();

header("Location: login.php");