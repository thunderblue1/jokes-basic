<?php
error_reporting(E_ALL);
ini_set('display_errors',1);
session_start();
require_once('vendor/autoload.php');
use GuzzleHttp\Client;

$db_username = "root";
$db_password = "root";
$db_host_name = "localhost";
$db_name = "jokesdb";
$port = "3306";

$client_id="9649929985-im2ks3qf69i9pgc4hgpaatss089ujp40.apps.googleusercontent.com";
$client_secret = "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";
$redirect_uri = "http://localhost/jokes-basic/google_login.php";

$guzzle = new Client(['verify'=>false]);
$client = new Google_Client();
$client->setHttpClient($guzzle);
$client->setClientId($client_id);
$client->setClientSecret($client_secret);
$client->setRedirectUri($redirect_uri);
$client->addScope("email");
$client->addScope("profile");
$service = new Google_Service_Oauth2($client);

//Case 1: logout user
if(isset($_GET['logout'])) {
    $client->revokeToken($_SESSION['access_token']);
	session_unset();
    session_destroy();
    header('Location: index.php');
}

//Case 2: URL contains a code from google login service
if(isset($_GET['code'])) {
    $client->authenticate($_GET['code']);
    $_SESSION['access_token']=$client->getAccessToken();
    $go_here = filter_var($redirect_uri, FILTER_SANITIZE_URL);
    header('Location: '.$go_here);
}

//Case3 - the access_token session variable is set. The user has been logged in.
//else if the user has not been logged in, set the variable $authUrl to the login page.
if (isset($_SESSION['access_token']) && $_SESSION['access_token']) {
	$client->setAccessToken($_SESSION['access_token']);
}
else{
	$authUrl=$client->createAuthUrl(); 
}
 
//Case 4 - the user is not logged in. Display the login page
if (isset($authUrl)) {
	//show login url
	?> 
	<div align="center">
		<h1>Login</h1>
		<p>You will need a Google account to use this login</p>
		<a href="<?php echo $authUrl; ?>">Login Here</a>
	</div> 
	<?php
	exit; 
}

//case 5 - user has been logged in. Display data about him and add him to the mySQL database
$user = $service->userinfo->get();//get user info

//connect to database
$mysqli = new mysqli($db_host_name, $db_username,$db_password, $db_name, $port);
	if ($mysqli-> connect_error) {
		die('Error : ('. $mysqli->connect_errno .') '. $mysqli->connect_error);
	}
//check if user exists in google_users table
$stmt = $mysqli->prepare("SELECT user_id, user_name, password, google_id, google_name, google_email, google_picture_link FROM users WHERE google_id=?");
$stmt->bind_param("s", $user->id);
$stmt->execute();
$stmt->store_result();
$stmt->bind_result($userid, $username, $password, $google_id, $google_name, $google_email, $google_picture_link);

if ($stmt->num_rows > 0) {
	// we found a record in the users table. This is a returning user.
	echo "<h2>Welcome back " .$user->name. "!</h2>";
	echo "<p><a href='" .$redirect_uri. "?logout=1'>Log Out</a></p>";
	echo "<p><a href='index.php'>Go to main page</a></p>";
	while ($stmt->fetch()) {
		echo "According to the database records you are:<br>";
		echo "<br>userid = " . $userid;
		echo "<br>username = " . $username;
		echo "<br>password = " . $password;
		echo "<br>google_id = " . $google_id;
		echo "<br>google_name = " . $google_name;
		echo "<br>google_email = " . $google_email;
		echo "<br>google_picture_link = " . $google_picture_link;
	}
	// save the login for other pages in the app to utilize.
	$_SESSION['username']=$user->name; 
	$_SESSION['googleuserid']=$user->id;
	$_SESSION['useremail']=$user->email; 
	$_SESSION['userid'] = $userid;
}
else
{
	// this user is not found in the users table yet.  New user.
	echo "<h2>Welcome " . $user->name . " Thanks for Registering!</h2>";
	// put the user into the google users table
	$statement = $mysqli->prepare("INSERT INTO users(google_id,google_name,google_email,google_picture_link) VALUES(?,?,?,?)");
	$statement->bind_param('ssss',$user->id,$user->name,$user->email,$user->picture);
	
	$statement->execute();
	$newuserid = $statement->insert_id;
	echo $mysqli->error;
	echo "<p>Created new user:</p>";

	echo "New user id = " . $newuserid . "<br>";
	echo "<br>username = " ;  // left blank for google users
	echo "<br>password = " ;  // left blank for google users
	echo "<br>google_id = " . $user->id;
	echo "<br>google_name = " . $user->name;
	echo "<br>google_email = " . $user->email;
	echo "<br>google_picture_link = " . $user->picture;

	$_SESSION['userid'] = $newuserid; 
	$_SESSION['username']=$user->name; 
	$_SESSION['googleuserid']=$user->id;
	$_SESSION['useremail']=$user->email; 
}

//print user details
	echo "<p>About this user</p>";
	echo "<ul>";
	echo "<img src='"  .$user->picture."'/>";
	echo "<li>Username: " . $user->name .  "</li>";
	echo "<li>User ID: " . 	$_SESSION['userid'] .  "</li>";
	echo "<li>User Email: " . $user->email .  "</li>"; 
	echo "</ul>";
	echo "<p>Now go check the database to see if the new user has been inserted into the table.</p>";
	echo "<a href ='index.php'>Return to the main page</a>"; 

	echo "<br>Session values = <br>";
	echo "<pre>";
	print_r($_SESSION);
	echo "</pre>";
?>
<!-- add some simple styles according to your preference -->
<style>
body{
	font-family: "helvetica";
}
img{
	height:100px;
}

</style>