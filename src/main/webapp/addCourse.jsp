<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="addCourse" method="post">
		<h2>Add Course</h2>
		<label for="course_id">Course ID:</label> 
		<input type="text"
			name="course_id" id="course_id"> <br> 
			<label
			for="course_name">Course Name:</label> 
			<input type="text"
			name="course_name" id="course_name"> <br> 
			<label
			for="duration">Duration:</label> 
			<input type="text" name="duration"
			id="duration"> <br> 
			<label for="description">Description:</label>
		<textarea name="description" id="description"></textarea>
		<br> 
		<label for="price">Price:</label> 
		<input type="number"
			name="price" id="price"> <br> 
			<input type="submit"
			value="Submit">
	</form>
</body>
</html>