<%@page import="java.util.ArrayList"%>
<%@page import="com.digit.javaTraining.mvcApp.model.CourseModel"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Courses</title>
</head>
<body>
	<%
	session = request.getSession();
	ArrayList<ArrayList> userList = (ArrayList) session.getAttribute("allCourses");
	//Iterator itr = userList.iterator();

	//while (itr.hasNext()) {
	for(int i=0; i<userList.size(); i++){
		//CourseModel course  = (CourseModel)itr.next();
		ArrayList<String> course = userList.get(i);
		out.println("Course Name: " + course.get(1) + "<BR>" + 
		"Course Duration: "+ course.get(2) + "<BR>" + 
		"Course Description: " + course.get(3)+"<BR> <BR>");
	}
	%>

</body>
</html>