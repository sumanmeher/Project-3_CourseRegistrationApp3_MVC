<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
session = request.getSession();
String loginType = "";
try {
	loginType = (String) session.getAttribute("loginType");
	if (loginType != null) {
		switch (loginType) {
		case "admin":
			response.sendRedirect("adminMenu.jsp");
			break;
		case "student":
			response.sendRedirect("studentMenu.jsp");
			break;
		case "professor":
			response.sendRedirect("setStudent");
			break;
		default:
			session.invalidate();
		}
	} else {
		session.invalidate();
	}
} catch (Exception e) {
	session.invalidate();
	e.printStackTrace();
}
%>

<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Course Management Application</title>
<link
	href="https://fonts.googleapis.com/css?family=Heebo:400,500,700|Playfair+Display:700"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="resource/css/style.css">
<script
	src="https://unpkg.com/scrollreveal@4.0.0/dist/scrollreveal.min.js"></script>
</head>
<body class="is-boxed has-animations">
	<div class="body-wrap boxed-container">
		<header class="site-header"> </header>

		<main>
			<section class="hero">
				<div class="container">
					<div class="hero-inner">
						<div class="hero-copy">
							<h1 class="hero-title mt-0">Welcome to our Course Management
								Website.</h1>
							<p class="hero-paragraph">Our course management website is
								the perfect solution for instructors and students who want to
								streamline their learning experience.</p>
							<div class="hero-cta">
								<a class="button button-shadow" href="adminLogin.jsp">Admin
									Login</a> <a class="button button-shadow" href="professorLogin.jsp">Professor
									Login</a> <a class="button button-shadow" href="studentLogin.jsp">Student
									Login</a>
							</div>
						</div>
						<div class="hero-app">
							<div class="hero-app-illustration"></div>
							<img class="device-mockup"
								src="https://creazilla-store.fra1.digitaloceanspaces.com/cliparts/1998567/coding-svg-clipart-md.png"
								alt="App preview">


						</div>
					</div>
				</div>
			</section>

		</main>
		
		<!-- Cards start -->
		
		<!--  -->

		<footer class="site-footer">
			<div class="container">
				<div class="site-footer-inner has-top-divider">

					<div class="footer-copyright">&copy; Course Management
						Application. All rights reserved. Digit Insurance</div>
				</div>
			</div>
		</footer>
	</div>

</body>
</html>
