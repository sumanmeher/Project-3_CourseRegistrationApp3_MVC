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
@import url('https://fonts.googleapis.com/css2?family=Fira+Sans+Extra+Condensed:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Heebo:wght@100;200;300;400;500;600;700;800;900&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap');
@import url("https://use.fontawesome.com/releases/v5.13.0/css/all.css");

:root {
    --font1: 'Heebo', sans-serif;
    --font2: 'Fira Sans Extra Condensed', sans-serif;
    --font3: 'Roboto', sans-serif;

    --btnbg: #ffcc00;
    --btnfontcolor: rgb(61, 61, 61);
    --btnfontcolorhover: rgb(255, 255, 255);
    --btnbghover: #ffc116;
    --btnactivefs: rgb(241, 195, 46);


    --label-index: #960796;
    --danger-index: #5bc257;
/* PAGINATE */
    --link-color: #000;
    --link-color-hover: #fff;
    --bg-content-color: #ffcc00;

}

.container-fluid {
    max-width: 1400px;

}

.card {
    background: #fff;
    box-shadow: 0 6px 10px rgba(0, 0, 0, .08), 0 0 6px rgba(0, 0, 0, .05);
    transition: .3s transform cubic-bezier(.155, 1.105, .295, 1.12), .3s box-shadow, .3s -webkit-transform cubic-bezier(.155, 1.105, .295, 1.12);
    border: 0;
    border-radius: 1rem;
}

.card-img,
.card-img-top {
    border-top-left-radius: calc(1rem - 1px);
    border-top-right-radius: calc(1rem - 1px);
}


.card h5 {
    overflow: hidden;
    height: 55px;
    font-weight: 300;
    font-size: 1rem;
}

.card h5 a {
  color: black;
  text-decoration: none;
} 

.card-img-top {
    width: 100%;
    min-height: 250px;
    max-height: 250px;
    object-fit: contain;
    padding: 30px;
}

.card h2 {
    font-size: 1rem;
}


.card:hover {
    transform: scale(1.02);
    box-shadow: 0 10px 20px rgba(0, 0, 0, .12), 0 4px 8px rgba(0, 0, 0, .06);
}

/* Centered text */
.label-top {
    position: absolute;
    background-color: var(--label-index);
    color: #fff;
    top: 8px;
    right: 8px;
    padding: 5px 10px 5px 10px;
    font-size: .7rem;
    font-weight: 600;
    border-radius: 3px;
    text-transform: uppercase;
}

.top-right {
    position: absolute;
    top: 24px;
    left: 24px;

    width: 90px;
    height: 90px;
    border-radius: 50%;
    font-size: 1rem;
    font-weight: 900;
    background: #8bc34a;
    line-height: 90px;
    text-align: center;
    color: white;
}

.top-right span {
    display: inline-block;
    vertical-align: middle;
    /* line-height: normal; */
    /* padding: 0 25px; */
}

.aff-link {
    /* text-decoration: overline; */
    font-weight: 500;
}

.over-bg {
    background: rgba(53, 53, 53, 0.85);
    box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
    backdrop-filter: blur(0.0px);
    -webkit-backdrop-filter: blur(0.0px);
    border-radius: 10px;
}
.bold-btn {

    font-size: 1rem;
    font-weight: 500;
    text-transform: uppercase;
    padding: 5px 50px 5px 50px;
}
.box .btn {
    font-size: 1.5rem;
}

@media (max-width: 1025px) {
    .btn {
        padding: 5px 40px 5px 40px;
    }
}
@media (max-width: 250px) {
    .btn {
        padding: 5px 30px 5px 30px;
    }
}

/* START BUTTON */
.btn-warning {
    background: var(--btnbg);
    color: var(--btnfontcolor);
    fill: #ffffff;
    border: none;
    text-decoration: none;
    outline: 0;
    /* box-shadow: -1px 6px 19px rgba(247, 129, 10, 0.25); */
    border-radius: 100px;
}
.btn-warning:hover {
    background: var(--btnbghover);
    color: var(--btnfontcolorhover);
    /* box-shadow: -1px 6px 13px rgba(255, 150, 43, 0.35); */
}
.btn-check:focus + .btn-warning, .btn-warning:focus {
    background: var(--btnbghover);
    color: var(--btnfontcolorhover);
    /* box-shadow: -1px 6px 13px rgba(255, 150, 43, 0.35); */
}
.btn-warning:active:focus {
    box-shadow: 0 0 0 0.25rem var(--btnactivefs);
}
.btn-warning:active {
    background: var(--btnbghover);
    color: var(--btnfontcolorhover);
    /* box-shadow: -1px 6px 13px rgba(255, 150, 43, 0.35); */
}

/* END BUTTON */

.bg-success {
    font-size: 1rem;
    background-color: var(--btnbg)!important;
    color: var(--btnfontcolor)!important;
}
.bg-danger {
    font-size: 1rem;
}


.price-hp {
    font-size: 1rem;
    font-weight: 600;
    color: darkgray;
}

.amz-hp {
    font-size: .7rem;
    font-weight: 600;
    color: darkgray;
}

.fa-question-circle:before {
    /* content: "\f059"; */
    color: darkgray;
}

.fa-heart:before {
    color:crimson;
}
.fa-chevron-circle-right:before {
    color: darkgray;
}

.login-btn{
	background:#74b010;
}

.login-btn:hover{
background:#3c570d
}
</style>

<script
	src="https://unpkg.com/scrollreveal@4.0.0/dist/scrollreveal.min.js"></script>
</head>
<body class="is-boxed has-animations">
	<div class="body-wrap boxed-container">
		<header class="site-header"> 
			<div class="mr-3" style="display:flex; justify-content:end;">
				<a class="button button-shadow login-btn" href="welcome.jsp">Login</a>
			</div>
			
		</header>

		<main>
			<section class="hero">
				<div class="container">
					<div class="hero-inner">
						<div class="hero-copy" style="margin-top:0px !important; padding-top:0px !important;">
							<h1 class="hero-title mt-0">Welcome to our Course Management
								Website.</h1>
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
