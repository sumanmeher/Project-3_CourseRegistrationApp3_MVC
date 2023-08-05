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
		ArrayList<ArrayList<String>> arrList = (ArrayList)session.getAttribute("setStudent");
	%>
	<form action="addMarks">
	
	<select name="student">
		<% 
		for(int i=0; i<arrList.size();i++){
			out.println("<option value="+arrList.get(i).get(0)+">"+arrList.get(i).get(1)+"</option>");
		}
		%>
		
		
		</select> <br>
		<label>Marks</label><br>
		<input type="text" name="marks"><br>
		<input type="submit">
	</form>

</body>
</html>