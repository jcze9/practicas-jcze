<!DOCTYPE html>
<html lang="es" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Hotel</title>
		<link rel="stylesheet" type="text/css" href="css/style.css"/>		
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component1.css" />
		<link rel="stylesheet" type="text/css" href="css/formulario.css" />		
		<link href="https://fonts.googleapis.com/css?family=Amatic+SC|Indie+Flower&display=swap" rel="stylesheet">		
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans&effect=3d|fire-animation|destruction|putting-green|anaglyph|shadow-multiple|outline|neon|brick-sign|ice">
		<script src="js/modernizr-2.6.2.min.js"></script>
		<meta name="robots" content="noindex,follow" />
<script type="text/javascript">
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-7243260-2']);
_gaq.push(['_trackPageview']);
(function() {
var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();
</script>
	</head>		
	<body id="ere">
		<header id="re">
				<h1 class = "font-effect-fire-animation">Hotel Tanos</h1>
				<span >Acciones desvanecidas</span>					
			</header>				
					<!-- Top Navigation -->				

				<div id="cn-overlay" class="cn-overlay"></div>
				<!-- End Nav Structure -->
			<form class="form" action="conexion.php" method="POST">
  <h2 class="font-effect-ice">Registrate</h2>
  <input name="dni" placeholder="DNI" type="text" tabindex="1" required autofocus></input><p>
  <input name="apellidos" placeholder="apellidos" type="text" tabindex="2" required ></input><p>
  <input name="nombres" placeholder="nombres" type="text" tabindex="3" required ></input><p>
  <select name="sexo" id="" class="seso" tabindex="4"	required ><p>
      			<option value="Elija">Elija su sexo</option>
      			<option value="Hombre">Hombre</option>
				<option value="Mujer">Mujer</option>
      		</select><p>
  <input name="FECHA_ING" type="date" tabindex="5" required ></input><p>
 <input name="FECHA_SAL"type="date" tabindex="6" required ></input><p>
  <button class="font-effect-fire-animation" type="submit" value="submit form">Send Message</button> 
</form>

		</div><!-- /container -->
		<script src="js/polyfills.js"></script>
		<script src="js/demo1.js"></script>
		<!-- For the demo ad only -->
		<?php 
$a=$_POST['dni'];
$b=$_POST['apellidos'];
$c=$_POST['nombres'];
$s=$_POST['sexo'];
$FECHA_ING=$_POST['FECHA_ING'];
$FECHA_SAL=$_POST['FECHA_SAL'];

$sql = "INSERT INTO cliente (`DNI`, `APELLIDO`, `NOMBRE`, `SEXO`, `FECHA_ING`, `FECHA_SAL`)
VALUES ('$a', '$b', '$c','$s','$FECHA_ING','$FECHA_SAL')";
	$conn->query($sql) or die(mysqli_error());

echo '<script type="text/javascript">
window.location.assign("index.html");
</script>';  
 ?>
	
	</body>
</html>