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

<style>
img {
	height: 150px;
	width: 100%;
}

.item {
	padding-left: 5px;
	padding-right: 5px;
}

.item-card {
	transition: 0.5s;
	cursor: pointer;
}

.item-card-title {
	font-size: 15px;
	transition: 1s;
	cursor: pointer;
}

.item-card-title i {
	font-size: 15px;
	transition: 1s;
	cursor: pointer;
	color: #ffa710
}

.card-title i:hover {
	transform: scale(1.25) rotate(100deg);
	color: #18d4ca;
}

.card:hover {
	transform: scale(1.05);
	box-shadow: 10px 10px 15px rgba(0, 0, 0, 0.3);
}

.card-text {
	height: 80px;
}

.card{
	background:transparent;
	border:2px solid white;
	
}

.card h5{
	padding:5px;
	margin-top:0px !important;
	margin-bottom:0px !important;
}

.card p{
	padding:5px;
	font-size:15px;
}

.card::before, .card::after {
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	transform: scale3d(0, 0, 1);
	transition: transform .3s ease-out 0s;
	background: rgba(255, 255, 255, 0.1);
	content: '';
	pointer-events: none;
}

.card::before {
	transform-origin: left top;
}

.card::after {
	transform-origin: right bottom;
}

.card:hover::before, .card:hover::after, .card:focus::before, .card:focus::after
	{
	transform: scale3d(1, 1, 1);
}

.device-mockup{
	width:200px;
}
</style>

<script
	src="https://unpkg.com/scrollreveal@4.0.0/dist/scrollreveal.min.js"></script>
</head>
<body class="is-boxed has-animations">
	<div class="body-wrap boxed-container">
		<header class="site-header">
			<div class="mr-3" style="display: flex; justify-content: end;">
				<a class="button button-shadow login-btn" href="welcome.jsp">Login</a>
			</div>

		</header>

		<main>
			<section class="hero" style="padding:0px;">
				<div class="container">
					<div class="hero-inner">
						<div class="hero-copy"
							style="margin-top: 0px !important; padding-top: 0px !important;">
							<h1 class="hero-title mt-0">Course Management System.</h1>
							<p class="hero-paragraph">Our course management website is
								the perfect solution for instructors and students who want to
								streamline their learning experience.</p>

							

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
							<div class="container mt-4">
								<div class="row">
									<div class="col-md-3 col-sm-6 item">
										<div class="card item-card card-block">
											
											<img
												src="https://static.pexels.com/photos/7357/startup-photos.jpg"
												alt="Photo of sunset">
											<h5 class="card-title  mt-3 mb-3">ProVyuh</h5>
											<p class="card-text">This is a company that builds
												websites, web .</p>
										</div>
									</div>
									<div class="col-md-3 col-sm-6 item">
										<div class="card item-card card-block">
											
											<img
												src="https://static.pexels.com/photos/7357/startup-photos.jpg"
												alt="Photo of sunset">
											<h5 class="card-title  mt-3 mb-3">ProVyuh</h5>
											<p class="card-text">This is a company that builds
												websites, web .</p>
										</div>
									</div>
									<div class="col-md-3 col-sm-6 item">
										<div class="card item-card card-block">
											
											<img
												src="https://static.pexels.com/photos/262550/pexels-photo-262550.jpeg"
												alt="Photo of sunset">
											<h5 class="card-title  mt-3 mb-3">ProVyuh</h5>
											<p class="card-text">This is a company that builds
												websites, web apps and e-commerce solutions.</p>
										</div>
									</div>
									<div class="col-md-3 col-sm-6 item">
										<div class="card item-card card-block">
											
											<img
												src="https://static.pexels.com/photos/326424/pexels-photo-326424.jpeg"
												alt="Photo of sunset">
											<h5 class="card-title  mt-3 mb-3">ProVyuh</h5>
											<p class="card-text">This is a company that builds
												websites, web apps and e-commerce solutions.</p>
										</div>
									</div>
								</div>

							</div>

							<!--  Cards Ends -->


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
