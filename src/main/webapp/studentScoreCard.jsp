<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Score Card</title>
</head>
<body>
	Score Card.<br><br>
	<%
out.println(session.getAttribute("s_name"));
out.println(session.getAttribute("s_marks"));
out.println(session.getAttribute("c_name"));
out.println(session.getAttribute("duration"));
out.println(session.getAttribute("description"));
out.println(session.getAttribute("p_name"));

%>

</body>
</html>