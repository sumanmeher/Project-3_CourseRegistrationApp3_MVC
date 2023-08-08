<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Marks</title>
</head>
<body>
<%
out.println("Your marks is "+session.getAttribute("s_marks"));
%>
</body>
</html>