<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Professor</title>
</head>
<body>

	
	<form action="addProfessor">
		<label>Name</label><br>
		<input type="text" name="name"><br>
		<label>Username</label><br>
		<input type="text" name="username"><br>
		<label>Password</label><br>
		<input type="text" name="password"><br>
		<label>Age</label><br>
		<input type="text" name="age"><br>
		<select name="course">
		
		</select> <br>
		<input type="submit">
	</form>
</body>
</html>

 -->
 
 
<!DOCTYPE html> 
<html lang="en" class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Add Course</title>
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

<style>
button, input, select, textarea, label {
	font-size: 17px;
	line-height: 10px;
}
</style>

</head>
<body class="is-boxed has-animations">
<%
		session = request.getSession();
		ArrayList<ArrayList<String>> arrList = (ArrayList)session.getAttribute("unassigned_courses");
	%>
	<div class="body-wrap boxed-container">
		<header class="site-header"> </header>

		<main>
			<section class="hero">
				<div class="container">
					<div class="hero-inner">
						<div class="hero-copy"
							style="padding: 30px !important; margin-top: -80px; border-radius: 10px; box-shadow: 0px 8px 24px #2f2222;">
							<h2 class="text-center mt-1 mb-1">Add Professor</h2>

							<br>

							<form action="addProfessor" method="post">

  <div class="form-outline mb-4">
    <label class="form-label" for="name">Name:</label>
    <input type="text" class="form-control" name="name" placeholder="Name" />
  </div>
  <div class="form-outline mb-4">
    <label class="form-label" for="username">Username:</label>
    <input type="text" class="form-control" name="username" placeholder="Username" />
  </div>
  <div class="form-outline mb-4">
    <label class="form-label" for="password">Password:</label>
    <input type="text" class="form-control" name="password" placeholder="Password" />
  </div>
  <div class="form-outline mb-4">
    <label class="form-label" for="age">Age:</label>
    <input type="text" class="form-control" name="age" placeholder="Age" />
  </div>
  <div class="form-outline mb-4">
    <label class="form-label" for="course">Course:</label>
    <select class="form-control" name="course">
      <% 
		for(int i=0; i<arrList.size();i++){
			out.println("<option value="+arrList.get(i).get(0)+">"+arrList.get(i).get(1)+"</option>");
		}
		%>
    </select>
  </div>
  <div class="text-center pt-1 mb-2 pb-1">
    <input type="submit" value="Submit" class="btn btn-success btn-block fa-lg gradient-custom-2 mb-3">
  </div>
</form>




						</div>
						<div class="hero-app">
							<div class="hero-app-illustration"></div>
							<img class="device-mockup"
								src="https://www.adazing.com/wp-content/uploads/2019/02/stacked-book-clipart-07.png"
								alt="App preview">


						</div>
					</div>
				</div>
			</section>

		</main>

		<footer class="site-footer">
			<div class="container">
				<div class="site-footer-inner has-top-divider">
					<div class="brand footer-brand"></div>
					<ul class="footer-links list-reset">
						<li><a href="#">Contact</a></li>
						<li><a href="#">About us</a></li>
						<li><a href="#">FAQ's</a></li>
						<li><a href="#">Support</a></li>
					</ul>
					<ul class="footer-social-links list-reset">
						<li><a href="#"> <span class="screen-reader-text">Facebook</span>

						</a></li>
						<li><a href="#"> <span class="screen-reader-text">Twitter</span>

						</a></li>
						<li><a href="#"> <span class="screen-reader-text">Google</span>

						</a></li>
					</ul>
					<div class="footer-copyright">&copy; 2018 Laurel, all rights
						reserved</div>
				</div>
			</div>
		</footer>
	</div>

</body>
</html>
 