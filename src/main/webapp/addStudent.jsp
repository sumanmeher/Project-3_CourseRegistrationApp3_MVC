<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	 <%
session = request.getSession();
String loginType = (String) session.getAttribute("loginType");

if(loginType!="admin"){
	response.sendRedirect("welcome.jsp");
}
%>
	
<%
session = request.getSession();
ArrayList<ArrayList<String>> arrList = (ArrayList) session.getAttribute("set_courses");
%>

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
	//session = request.getSession();
	//ArrayList<ArrayList<String>> arrList = (ArrayList) session.getAttribute("unassigned_courses");
	%>
	<div class="body-wrap boxed-container">
		<header class="site-header">

			<div class="d-flex justify-content-between">
				<a href="welcome.jsp" style=""> <img alt="" class="ml-5"
					src="https://sashabarab.org/wp-content/uploads/2015/02/course-icon.png"
					style="width: 60px;">
				</a> <a href="logout" style=""> <img class="mr-5"
					src="https://th.bing.com/th/id/R.65bc3a94db4c6f3dbcee59a207fb353e?rik=5C7HnAJqtxWSVQ&riu=http%3a%2f%2fwww.clker.com%2fcliparts%2fY%2fl%2f1%2fR%2f8%2fp%2fred-logout-hi.png&ehk=f7yPz41es5F4%2b%2f2kp7s%2bAicUA3UhCBZ6t7HLzNxwQos%3d&risl=&pid=ImgRaw&r=0"
					style="width: 50px;">
				</a>
			</div>

		</header>

		<main>
			<section class="hero mt-3">
				<div class="container">
					<div class="hero-inner">
						<div class="hero-copy"
							style="padding: 30px !important; margin-top: -80px; border-radius: 10px; box-shadow: 0px 8px 24px #2f2222;">
							<h2 class="text-center mt-1 mb-1">Add Student</h2>

							<br>

							<form action="addStudent" method="post">

								<div class="form-outline mb-4">
									<label class="form-label" for="name">Name:</label> <input
										type="text" class="form-control" name="name"
										placeholder="Name" />
								</div>
								<div class="form-outline mb-4">
									<label class="form-label" for="username">Username:</label> <input
										type="text" class="form-control" name="username"
										placeholder="Username" />
								</div>
								<div class="form-outline mb-4">
									<label class="form-label" for="password">Password:</label> <input
										type="password" class="form-control" name="password"
										placeholder="Password" />
								</div>
								<div class="form-outline mb-4">
									<label class="form-label" for="age">Age:</label> <input
										type="text" class="form-control" name="age" placeholder="Age" />
								</div>
								<div class="form-outline mb-4">
									<label class="form-label" for="course">Course:</label> <select
										class="form-control" name="course"> 
										
										<%
										if(arrList!=null)
										for (int i = 0; i<arrList.size(); i++) { 
											out.println("<option value=" + arrList.get(i).get(0) + ">" +arrList.get(i).get(1) + "</option>"); 
											} 
										%>
									</select>
								</div>
								<div class="text-center pt-1 mb-2 pb-1">
									<input type="submit" value="Submit"
										class="btn btn-success btn-block fa-lg gradient-custom-2 mb-3">
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
