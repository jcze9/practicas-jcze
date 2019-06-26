<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "hotel";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
include(alquiler.html);
if ($_POST){
$q=$_POST['dni'];
$w=$_POST['apellidos'];
$ee=$_POST['nomb'];
$re=$_POST['planess'];
$fea=$_POST['feha'];

$sql = "INSERT INTO alquiler (`dni`, `apellidos`,`nombres`, `plan`,`fecha`)
VALUES ('$q', '$w', '$ee','$re','$fea')";
	$conn->query($sql) or die(mysqli_error());
}
echo '<script type="text/javascript">
window.location.assign("index.html");
</script>';  

?>