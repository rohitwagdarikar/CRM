<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.ArrayList"%>      <%--Importing all the dependent classes--%>
<%@page import="java.util.Iterator"%> 
<!DOCTYPE html>
<html>
<head>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"  rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Search Form</title>
<h3 align="center">Search Form</h3>
</br>
</br>
</head>
<body>
<%@page import="com.rohit.webapp.model.StudentModel"%>
<%@page import="java.util.Iterator"%>
<div class="container">
	<div class="col-sm-8">
	<div class="col-sm-5">
		<form action="getStudent" method="post">
		<div>
		<input type="text" name="rollno" class="form-control" placeholder="Enter Student Roll Number" required="required">
		<input type="submit" class="btn btn-info">  
		</div>
		</form>
	</div>
	<br>
	<div class="panel-body">
		
		<table id="tbl-faculty" class="table table-sm table-dark" cellpadding="0" width="50%">
		<tr>
				<th scope="col"><b>Student Roll Number </b></th>
				<th scope="col"><b>Student Name </b></th>
				<th scope="col"><b>Student Address </b></th>
				
		</tr>
		<tr class= "table-success">
				<td>${student.rollno}</td>
				<td>${student.sname}</td>
				<td>${student.saddress}</td>
				
		</tr>
		</table>
			
 	</div>
 </div>

<div class="col-sm-8">
<div class="col-sm-5">
		<form action="getFaculty" method="post">
		<div>
		<input type="text" name="fid" class="form-control" placeholder="Enter Faculty ID" required="required"> 
		<input type="submit" class="btn btn-info">  
		</div>
		</form>
	</div>
	<br>
	<div class="panel-body">
		
		<table id="tbl-faculty" class= "table table-striped" cellpadding="0" width="50%">
		<tr>
				<th scope="col"><b>Faculty ID : </b></th>
				<th scope="col"><b>Faculty Name : </b></th>
				<th scope="col"><b>Faculty Dept : </b></th>
				<th scope="col"><b>Faculty Address : </b></th>
		</tr>
		<tr>
				<td scope="col">${faculty.fid}</td>
				<td scope="col">${faculty.fname}</td>
				<td scope="col"> ${faculty.fdept}</td>
				<td scope="col">${faculty.faddress}</td>
		</tr>
		</table>
</div>
 		<a href="home.jsp"><input type="button" class="btn btn-info" value="Home"></a>
 		<a href="facultyView.jsp"><input type="button" class="btn btn-info" value="Faculty"></a>
</div>		

<div class="col-sm-8">
<div class="col-sm-5">
		<form action="getStudentByAddress" method="post">
		<div>
		<input type="text" name="saddress" class="form-control" placeholder="Enter Student Address" required="required"> 
		<input type="submit" class="btn btn-info">  
		</div>
		</form>
	</div>
	<br>
	<div class="panel-body">
		
		<table id="tbl-faculty" class= "table table-striped" cellpadding="0" width="50%">
		<tr>
				<th scope="col"><b>Student Roll Number </b></th>
				<th scope="col"><b>Student Name  </b></th>
				<th scope="col"><b>Student Address : </b></th>
		</tr>
		<c:forEach var="student" items="${studentAddress}">
                <tr>
                    <td scope="col"><c:out value="${student.rollno}" /></td>
                     <td scope="col"><c:out value="${student.sname}" /></td>
                      <td scope="col"><c:out value="${student.saddress}" /></td>
                </tr>
		</c:forEach>
		</table>
</div>
 		<a href="home.jsp"><input type="button" class="btn btn-info" value="Home"></a>
 		<a href="facultyView.jsp"><input type="button" class="btn btn-info" value="Faculty"></a>
</div>
	
 	</div>
 
</body>
</html>