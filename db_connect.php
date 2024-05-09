<?php
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);

// modify these settings according to the account on your database server.
// $host = getenv('DB_HOST');
// $port = getenv('DB_PORT');
// $username = getenv('DB_USER');
// $user_pass = getenv('DB_PASSWORD');
// $database_in_use = getenv('DB_DATABASE_NAME');

$host = "localhost";
$port = "3306";
$username = "root";
$user_pass = "root";
$database_in_use = "jokesdb";


$mysqli = new mysqli($host, $username, $user_pass, $database_in_use);
if ($mysqli->connect_error) {
    echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}
echo $mysqli->host_info . "<br>";

?>