<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Professor</title>
</head>
<body>

	<%
		session = request.getSession();
		ArrayList<ArrayList<String>> arrList = (ArrayList)session.getAttribute("unassigned_courses");
	%>
	
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
		<% 
		for(int i=0; i<arrList.size();i++){
			out.println("<option value="+arrList.get(i).get(0)+">"+arrList.get(i).get(1)+"</option>");
		}
		%>
		</select> <br>
		<input type="submit">
	</form>
</body>
</html>