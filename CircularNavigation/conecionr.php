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
include(reservas.html);
if ($_POST){
$qq=$_POST['cocl'];
$ww=$_POST['perso'];
$ree=$_POST['plane'];
$feae=$_POST['fecha'];

$sql = "INSERT INTO reservas (`COD_CLIENTE`,`n_personas`,`plan`,`fecha`)
VALUES ('$qq', '$ww', '$ree','$feae')";
	$conn->query($sql) or die(mysqli_error());
}
echo '<script type="text/javascript">
window.location.assign("index.html");
</script>';  

?>