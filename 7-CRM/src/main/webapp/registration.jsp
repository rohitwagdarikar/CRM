<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"  rel="stylesheet">
<title>Customer Relationship Management</title>
<h3 align="center">Registration</h3>
</head>
<body>
<br>
<br>

<div class="container">
	<div class="col-sm-5">
		<form action="registration" method="post">
		<div align="left">
		<input type="text" name = "email" class="form-control" placeholder="Enter Email Id" required="required"> <br> 
		 </div>
		<div align="left">
			<input type="text" name="fullName" class="form-control" placeholder="Enter FullName" required="required"> <br>
		</div>
		<div align="left">
		  <input type="text" name = "mobileNo" class="form-control" placeholder="Enter Mobile Number" required="required"> <br>
		<div>
		<div align="left">
		  <input type="text" name = "password" class="form-control" placeholder="Enter Password" required="required"> <br>
		<div>
		<input type="submit" class="btn btn-info">  
		 <a href="login.jsp"><input type="button" class="btn btn-info" value="login"></a>
		</div>
				 
		</form>
	</div>
			

</div>
 
</body>
</html>