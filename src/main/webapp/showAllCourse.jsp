<%@page import="java.util.ArrayList"%>
<%@page import="com.digit.javaTraining.mvcApp.model.CourseModel"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%
	
	session = request.getSession();
	ArrayList<ArrayList> userList = (ArrayList) session.getAttribute("allCourses");

	%>
	
 

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
		<header class="site-header">
		<div class="d-flex justify-content-between">
				<a href="welcome.jsp" style=""> <img alt="" class="ml-5" src="https://www.pinclipart.com/picdir/big/178-1785162_white-home-icon-png-vector-royalty-free-download.png" style="width:40px;">
				</a> <a href="logout" class="mr-3" style="color:red; font-weight:700;">
        	<img class="" src="https://themayanagari.com/wp-content/uploads/2021/04/Exit-button-Transparent-1.png" style="width:40px; margin-left:11px;">
        	<div>Logout</div>
        		
        	</a>
			</div>
		</header>

		<main>
			<section class="hero" >
				<div class="container">
					<div class="hero-inner">
						<div class="hero-copy" style="padding-top:0px;">
							<h1 class="hero-title mt-0">All Courses</h1>
								
								
                    <table class="table table-hover">
                        <!--Table head-->
                        <thead class="mdb-color darken-3">
                            <tr class="text-white">
                                <th>S.N</th>
                                <th>Course Name</th>
                                <th>Duration</th>
                                <th>Description</th>
                                
                            </tr>
                        </thead>
                        <!--Table head-->
                        <!--Table body-->
                        <tbody>
                        
                        <%
							for(int i=0; i<userList.size(); i++){
							//CourseModel course  = (CourseModel)itr.next();
							ArrayList<String> course = userList.get(i);
							out.println("<tr>");
							out.println("<th scope='row'>"+(i+1)+"</th>");
							out.println("<td>" + course.get(1) + "</td>" + 
							"<td>"+ course.get(2) + "</td>" + 
							"<td>" + course.get(3)+"</td>");
						}
							%>
                            
                                
                               
                           
                        </tbody>
                        <!--Table body-->
                    </table>
                    <!--Table-->

								
							
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
 