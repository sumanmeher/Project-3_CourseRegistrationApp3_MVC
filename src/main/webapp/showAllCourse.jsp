<%@page import="java.util.ArrayList"%>
<%@page import="com.digit.javaTraining.mvcApp.model.CourseModel"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%
	
	session = request.getSession();
	ArrayList<ArrayList> userList = (ArrayList) session.getAttribute("allCourses");
	
	
	//Iterator itr = userList.iterator();

	//while (itr.hasNext()) {
	
		/*for(int i=0; i<userList.size(); i++){
		//CourseModel course  = (CourseModel)itr.next();
		ArrayList<String> course = userList.get(i);
		out.println("Course Name: " + course.get(1) + "<BR>" + 
		"Course Duration: "+ course.get(2) + "<BR>" + 
		"Course Description: " + course.get(3)+"<BR> <BR>");
	}
		*/
	%>
	<!-- 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Courses</title>
</head>
<body>
	
	/*
	session = request.getSession();
	ArrayList<ArrayList> userList = (ArrayList) session.getAttribute("allCourses");
	
	*/
	//Iterator itr = userList.iterator();

	//while (itr.hasNext()) {
	
		/*for(int i=0; i<userList.size(); i++){
		//CourseModel course  = (CourseModel)itr.next();
		ArrayList<String> course = userList.get(i);
		out.println("Course Name: " + course.get(1) + "<BR>" + 
		"Course Duration: "+ course.get(2) + "<BR>" + 
		"Course Description: " + course.get(3)+"<BR> <BR>");
	}
		*/
	

</body>
</html>
 -->
 

<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Welcome - Course Management App</title>
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
							<%
							/*for(int i=0; i<userList.size(); i++){
							//CourseModel course  = (CourseModel)itr.next();
							ArrayList<String> course = userList.get(i);
							out.println("Course Name: " + course.get(1) + "<BR>" + 
							"Course Duration: "+ course.get(2) + "<BR>" + 
							"Course Description: " + course.get(3)+"<BR> <BR>");
						}
							%>
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
 