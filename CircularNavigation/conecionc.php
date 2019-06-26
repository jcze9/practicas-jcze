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
include(cliente.html);
if ($_POST){
$a=$_POST['dni'];
$b=$_POST['apellidos'];
$c=$_POST['nombres'];
$s=$_POST['sexo'];
$FECHA_ING=$_POST['FECHA_ING'];
$FECHA_SAL=$_POST['FECHA_SAL'];

$sql = "INSERT INTO cliente (`DNI`, `APELLIDO`, `NOMBRE`, `SEXO`, `FECHA_ING`, `FECHA_SAL`)
VALUES ('$a', '$b', '$c','$s','$FECHA_ING','$FECHA_SAL')";
	$conn->query($sql) or die(mysqli_error());
}

echo '<script type="text/javascript">
window.location.assign("index.html");
</script>';  

?>