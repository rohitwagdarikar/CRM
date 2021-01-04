<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2> Welcome to Login Module</h2>
<h2>Hello ${unameSession}</h2>
<%
	/* if(session.getAttribute("unameSession") == null)
	{
		response.sendRedirect("login.jsp");
	} */

%>
<a href="aboutus.jsp">About Us</a> <br>
<a href="logout.jsp">Logout</a>
</body>
</html>