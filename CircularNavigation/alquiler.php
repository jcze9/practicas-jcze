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
  <h2 class="font-effect-ice">Algo Rapido¿?</h2>
  <input name="dni" placeholder="DNI" type="text" tabindex="1" required autofocus></input><p>
  <input name="apellidos" placeholder="apellidos" type="text" tabindex="2" required ></input><p>
  <input name="nomb" placeholder="nombres" type="text" tabindex="2" required ></input><p>  	
  	<span class="label info">Elije tu plan</span>  
  <select name="planess" id="" class="seso" tabindex="3"	required ><p>
      			<option value="simple">Simple</option>
      			<option value="doble">Doble</option>
				<option value="matrimonial">Matrimonial</option>
      		</select><p>
  <input name="feha" type="date" tabindex="4" required ></input><p>
  <button class="font-effect-fire-animation" type="submit" value="submit form">Send Message</button> 
</form>

		</div><!-- /container -->
		<script src="js/polyfills.js"></script>
		<script src="js/demo1.js"></script>
		<!-- For the demo ad only -->
	<?php 
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
	</body>
</html>