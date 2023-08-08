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
	ArrayList<ArrayList> userList = (ArrayList) session.getAttribute("allProfessor");
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
			<section class="hero" >
				<div class="container">
					<div class="hero-inner">
						<div class="hero-copy" style="padding-top:0px;">
							<h1 class="hero-title mt-0">All Professors</h1>
								
								
                    <table class="table table-hover">
                        <!--Table head-->
                        <thead class="mdb-color darken-3">
                            <tr class="text-white">
                                <th>S.N</th>
                                <th>Professor Name</th>
                                
                                
                            </tr>
                        </thead>
                        <!--Table head-->
                        <!--Table body-->
                        <tbody>
                        
                        <%
                        if(userList!=null)
							for(int i=0; i<userList.size(); i++){
							//CourseModel course  = (CourseModel)itr.next();
							ArrayList<String> course = userList.get(i);
							out.println("<tr>");
							out.println("<th scope='row'>"+(i+1)+"</th>");
							out.println("<td>" + course.get(0) + "</td>" 
							);
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