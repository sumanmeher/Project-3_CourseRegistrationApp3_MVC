<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
session = request.getSession();
String loginType = (String) session.getAttribute("loginType");
if(loginType!="admin"){
	response.sendRedirect("welcome.jsp");
}
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
							<h2 class="text-center mt-1 mb-1">Add Course</h2>

							<br>

							<form action="addCourse" method="post">
								<div class="form-outline mb-4">
									<label class="form-label" for="course_id">Course ID:</label> <input
										type="text" class="form-control" name="course_id"
										id="course_id" placeholder="Course ID" />
								</div>
								<div class="form-outline mb-4">
									<label class="form-label" for="course_name">Course
										Name:</label> <input type="text" class="form-control"
										name="course_name" id="course_name" placeholder="Course Name" />
								</div>
								<div class="form-outline mb-4">
									<label class="form-label" for="duration">Duration:</label> <input
										type="text" class="form-control" name="duration" id="duration"
										placeholder="Duration" />
								</div>
								<div class="form-outline mb-4">
									<label class="form-label" for="description">Description:</label>
									<textarea class="form-control" name="description"
										id="description" placeholder="Description"></textarea>
								</div>
								<div class="form-outline mb-4">
									<label class="form-label" for="price">Price:</label> <input
										type="number" class="form-control" name="price" id="price"
										placeholder="Price" />
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

					<div class="footer-copyright">&copy; Course Management
						Application. All rights reserved. Digit Insurance</div>
				</div>

			</div>
		</footer>
	</div>

</body>
</html>
