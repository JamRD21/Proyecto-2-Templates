<!DOCTYPE html>
	<head> 
	<#include "./header.ftl">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no,
	 initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,600,700" rel="stylesheet">
	<title>Chef Pepper</title>
</head>
<body>
<header>
	<div class="contenedor">
		<nav class="menu">
			<a href="#" id="btn-menu">Menu</a>
			<a href="#" id="btn-acerca-de">Nosotros</a>
			<a href="#" id="btn-galeria">Galeria</a>
			<a href="/me">Ubicacion</a>
			<a href="/home" id="btn-contacto">Login</a>
		</nav>
			<div class="image">
				<img src="img/logo.png" alt="" width=950 height=500>
			</div>
	</div>
</header>

	<section class="main">
		<section class="acerca-de" id="acerca-de">
			<div class="contenedor">
				<div class="foto">
					<img src="img/acerca-de.jpg" alt="">
				</div>
				<article>
					<h3>Nosotros</h3>
					<p>Misi�n</p> <br>
					<p>Hacer que nuestro arte culinario sastisfazca las necesidades y antojos del cliente de manera que resuelva su apetito.</p><br>
					
					<p>Visi�n</p><br>
					<p>Ser la empresa culinaria/restaurante m�s significativo del mercado.</p><br>
				
					<p>Valores</p><br>
					<p>Disciplina, Responsabilidad, Respeto, Integridad y Servicio.</p>
					
				</article>
			</div>
	</section>

		<section class="menu">
			<div class="contenedor">
				<h3 class="titulo" id="platillos">Menu</h3>
				<div class="contenedor-menu">
					<div class="contenedor-menu2">
						<article>
							<p class="categoria">De Comer</p>
							<div class="platillo">
								<p class="nombre">Grilled Chicken Wrap</p>
								<p class="precio">RD$350</p>
								<p class="descripcion">Wrap de pollo a la parrilla.</p>
							</div>
							<div class="platillo">
								<p class="nombre">Chicken Brochette</p>
								<p class="precio">RD$250</p>
								<p class="descripcion">Brochetas de pollo asadas.</p>
							</div>
							<div class="platillo">
								<p class="nombre">Milanesa de Pollo</p>
								<p class="precio">RD$375</p>
								<p class="descripcion">Papas con pollo empanizado y salsa agridulce de tomate.</p>
							</div>
							<div class="platillo">
								<p class="nombre">Iceberg Salad</p>
								<p class="precio">RD$125</p>
								<p class="descripcion">Gran monta�a de vegetales y frutas frescas.</p>
							</div>
						</article>

						<article>
							<p class="categoria">Bebidas</p>
							<div class="platillo">
								<p class="nombre">Agua Dasani</p>
								<p class="precio">RD$75</p>
								<p class="descripcion">Agua purificada.</p>
							</div>
							<div class="platillo">
								<p class="nombre">Coca-Cola</p>
								<p class="precio">RD$100</p>
								<p class="descripcion">Refresco negro.</p>
							</div>
							<div class="platillo">
								<p class="nombre">Jugos Naturales</p>
								<p class="precio">RD$165</p>
								<p class="descripcion">(Naranja, Mango, Lim�n, Toronja, Chinola, Uva, Pera).</p>
							</div>
							<div class="platillo">
								<p class="nombre">Gatorade</p>
								<p class="precio">RD$150</p>
								<p class="descripcion">Bebida hidratante (Uva, Naranja, Lim�n, Fresa).</p>
							</div>
						</article>
					</div>
				</div>
			</div>
		</section>

		<section class="galeria" id="galeria">
			<div class="foto">
				<img src="img/1.jpg" alt="">
			</div>
			<div class="foto">
				<img src="img/2.jpg" alt="">
			</div>
			<div class="foto">
				<img src="img/3.jpg" alt="">
			</div>
			<div class="foto">
				<img src="img/4.jpg"= alt="">
			</div>
			<div class="foto">
				<img src="img/5.jpg" alt="">
			</div>
			<div class="foto">
				<img src="img/6.jpg" alt="">
			</div>
			<div class="foto">
				<img src="img/7.jpg" alt="">
			</div>
			<div class="foto">
				<img src="img/8.jpg" alt="">
			</div>
		</section>
		
		<section class="ubicacion" id="ubicacion">
			<div class="contenedor">
				<h3 class="titulo">Ubicacion</h3>
				<div class="direccion">
					<p class="calle">Rep�blica Dominicana<br />Ave. 27 de febrero,Santiago de Los Caballeros 51000</p><br>
					<p class="telefono">(809) 565-4068</p>
					<p class="correo">chef@pepper.com</p>
				</div>

				<div class="horarios">
					<h4>Horarios</h4>
					<p class="entre-semana">Lunes a Viernes <br> 8:00am - 9:00pm</p>
					<p class="fin-semana">Sabados y Domingos <br> 11:00am - 11:00pm</p>
				</div>
			</div>
		</section>

		<section class="mapa">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3761.8852093318733!2d-70.69189188509291!3d19.460515386868426!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8eb1c58b98bc53c5%3A0x31f512aea3b2d6ea!2sChef+Pepper!5e0!3m2!1ses!2sdo!4v1518279922038" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
		</section>
	</section>

	<footer>
		<div class="contenedor">
			<div class="copyright">
				<p>Copyright Chef Pepper @ 2018</p>
			</div>
		</div>
	</footer>
	</body>
	
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/archivo.js"></script>
	<script type="text/javascript" src="js/parallax_fx.js"></script>

</html>