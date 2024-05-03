<?php 
echo "You have been logged out<br>";
    session_start();
    session_unset();
    session_destroy();
    header('location:index.php');
?>
