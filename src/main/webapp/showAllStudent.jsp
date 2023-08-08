<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Student</title>
</head>
<body>
	<%
	session = request.getSession();
	ArrayList<ArrayList> userList = (ArrayList) session.getAttribute("allStudent");
	//Iterator itr = userList.iterator();

	//while (itr.hasNext()) {
	for (int i = 0; i < userList.size(); i++) {
		ArrayList<String> stud = userList.get(i);
		out.println("Student Name: " + stud.get(0)+"<BR> <BR>");
	}
	%>

</body>
</html>