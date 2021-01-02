<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"  rel="stylesheet">
<title>Customer Relationship Managment</title>
<h3 align="center">Login</h3>
</head>
<body>
<br>
<br>

<div class="container">
	<div class="col-sm-5">
		<form action="loginVerification" method="post">
		<div align="left">
			<input type="text" name="email" class="form-control" placeholder="Enter Email ID" required="required"> <br>
		</div>
		 
		 <div align="left">
		<!-- <label class="text-primary" > Enter Student Name</label> -->
		<input type="password" name = "password" class="form-control" placeholder="Enter Password" required="required"> <br> 
		 </div>
		  <div align="left">
		<div>
		<input type="submit" class="btn btn-info" value="Login">  
		<a href="registration.jsp"><input type="button" class="btn btn-info" value="registration"></a>
		</div>
				 
		</form>
	</div>
			

</div>
 
</body>
</html>