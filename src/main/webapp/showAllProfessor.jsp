<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	session = request.getSession();
	ArrayList<ArrayList> userList = (ArrayList) session.getAttribute("allProfessor");
	//Iterator itr = userList.iterator();

	//while (itr.hasNext()) {
	for (int i = 0; i < userList.size(); i++) {
		//CourseModel course  = (CourseModel)itr.next();
		ArrayList<String> prof = userList.get(i);
		out.println("Professor Name: " + prof.get(0) + "<BR> <BR>");
	}
	%>

</body>
</html>