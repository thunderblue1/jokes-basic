<html>
<head>

</head>
 <?php
 session_start();
 error_reporting(E_ALL);
 ini_set('display_errors', 1);
 
include "db_connect.php";

$username = addslashes($_POST['username']);
$password = addslashes($_POST['password']);

echo "<h2>You attempted to login with " . $username . " and " . $password . "</h2>";

//$sql = "SELECT users.user_id,users.user_name, users.password FROM users WHERE user_name = '$username' AND password = '$password'";

//echo "SQL = ".$sql."<br>";

//$result = $mysqli->query($sql);

// echo "<pre>";
// print_r($result);
// echo "</pre>";

// John Keen wrote this code
//with the help of the provided code

// $gotten = $mysqli->query($sql);
// if($gotten->num_rows>0) {
//     $row = $gotten->fetch_object();
//     if($row->password!=null) {
//         echo " pw matches<br>";
//         echo "<p>Login success</p>"; 
//         $_SESSION['username'] = $username;
//         $_SESSION['userid'] = $row->user_id;
//     } else {
//         echo "Password does not match<br>";        
//     }
// } else {
//     echo "0 results. Not logged in<br>";
//     $_SESSION =  [];
//     session_destroy();
// }

$stmt = $mysqli->prepare ("SELECT user_id, user_name, password FROM users WHERE user_name = ?");
$stmt->bind_param('s', $username);
$stmt->execute();
$stmt->store_result();
$stmt->bind_result($userid, $uname, $pw);

if ($stmt->num_rows == 1 ) {
    $stmt->fetch();
    echo "Found 1 person with that username<br>";
    if (password_verify($password,$pw)) {
        echo " pw matches<br>";
        echo "<p>Login success</p>"; 
        $_SESSION['username'] = $uname;
        $_SESSION['userid'] = $userid;
    }
    else {
        echo "Password does not match<br>";
    } 
} else {
    echo "0 results. Not logged in<br>";
    $_SESSION =  [];
    session_destroy();
}

echo "Session variable = ";
print_r($_SESSION);

echo "<br>";

echo "<a href='index.php'>Return to main page</a>";
?>

</html>
