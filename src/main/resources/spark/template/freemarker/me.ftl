<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no,
	initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>Me</title>
	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet"> 
	<link rel="stylesheet" href="css/me.css">
</head>
<body>
	<div class="contenedor">
		<header>
			<div class="logo">
				<img src="img/logopro.png" alt="">
			</div>
		
			<nav class="menu">
				<a href="/casa">Inicio</a>
			</nav>
		</header>
		<section class="main">
			<article>
				<div class="thumb">
					<img src="img/logopro.png" alt="">
				</div>

		  <#if user??>
     		<h1>${user.getNombre()} ${user.getApellido()}</h1>
  		  <#else>
     		<p> no hay usuario </p>
  		  </#if>
				
			</article>
		</section>
		<footer>
			<div class="autor">
				<p>Creado por Bobby Curry - Ñañarita</p>
			</div>
			
			<div class="redes-sociales">
				<a href="http://www.facebook.com/JackyThings">Facebook</a>
				<a href="http://www.twitter.com/jackyNutz">Twitter</a>
			</div>
		</footer>
	</div>
</body>
</html>