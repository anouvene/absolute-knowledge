<%@page import="com.absoluteknowledge.model.Cours"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.absoluteknowledge.service.ServiceCours" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Absolute Knowledge</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/notrestyle.css" />
</head>
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<header id="header">
					<a href="index.jsp" class="logo"><strong>Absolute
							Knowledge</strong> by M2i</a>
					<ul class="icons">

						<li class="active"><a href="index.jsp"><span>Accueil</span></a></li>
						<li><a href="cours.jsp"><span>Cours</span></a></li>

					</ul>

				</header>

				<!-- Banner -->
				<section id="banner">
					<div class="content">
						<header>
							<h1>Bienvenue, petit n�ophyte !</h1>
							<p>Un site pour apprendre la programmation</p>
						</header>
						<p>
							<strong>Absolute Knowledge</strong> est n� des doigts experts de
							plusieurs d�veloppeurs acharn�s. Son doux nom fut donn� par <strong>Michael</strong>
							(� prononcer � la fran�aise ou �l'am�ricaine). </br>Nous esp�rons
							que ton voyage dans l'apprentissage de l'informatique se
							d�roulera sans trop d'encombres...
						</p>
						<ul class="actions">
							<li><a href="#" class="button big">Voir plus</a></li>
						</ul>
					</div>
					<span class="image object"> <img src="images/pic10.jpg"
						alt="" />
					</span>
				</section>



				<!-- Section -->
				<section>
					<header class="major">
						<h2>Cours � la une</h2>
					</header>
					<div class="posts">

					
					<%
					
					ServiceCours sc = new ServiceCours();
					List<Cours> lstCours = sc.getAllCours();
					
					
 					for (int i=0; i<1; i++) {
						 
						 // récupérer le chapitre sélectionné
						 String article = "<article><a href='chapitre.jsp?id=";
						 article += lstCours.get(i).getId() + "' class='image'><img src='";
						 article += lstCours.get(i).getImage() + "' alt=''/></a><h3>";
						 article += lstCours.get(i).getTitre() + "</h3><p>";
						 article += lstCours.get(i).getResume() + "</p><ul class='actions'><li><a href='chapitre.jsp?id=";
						 article += lstCours.get(i).getId() + "' class='button'>voir plus</a></li></ul></article>";
						 
						 out.println(article);
						 
	
					} 
					
					
					%>  

					
					
					</div>
				</section>

			</div>

			<footer id="footer">
				<p class="copyright">
					&copy; Untitled. All rights reserved. Demo Images: <a
						href="https://unsplash.com">Unsplash</a>. Design: <a
						href="https://html5up.net">HTML5 UP</a>.
				</p>
			</footer>
		</div>
	</div>


	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>