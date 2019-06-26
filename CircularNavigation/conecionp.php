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
include(personal.html);
if ($_POST){
$aas=$_POST['ape'];
$bas=$_POST['nob'];
$cas=$_POST['dne'];
$sas=$_POST['tele'];
$dias=$_POST['dire'];
$tuas=$_POST['tur'];

$sql = "INSERT INTO personal (`APELLIDOS`, `NOMBRE`, `DNI`, `TELEFONO`, `DIRECCION`, `Turno`)
VALUES ('$aas', '$bas', '$cas','$sas','$dias','$tuas')";
	$conn->query($sql) or die(mysqli_error());
}
echo '<script type="text/javascript">
window.location.assign("index.html");
</script>';  

?>