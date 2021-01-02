<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"  rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<h3 align="center">Add Faculty Details</h3>
</head>
<body>
<div class="container">
	<div class="col-sm-3">
		<form action="addFaculty" method="post">
		<div align="left">
			<input type="text" name="fid" class="form-control" placeholder="Enter Faculty ID" required="required"> <br>
		</div>
		 
		 <div align="left">
		<input type="text" name = "fname" class="form-control" placeholder="Enter Faculty Name" required="required"> <br> 
		 </div>
		  <div align="left">
		<input type="text" name = "fdept" class="form-control" placeholder="Enter Faculty Department" required="required"> <br> 
		 </div>
		
		<div align="left">
		<input type="text" name = "faddress" class="form-control" placeholder="Enter Faculty Address" required="required"> <br> 
		 </div>
		<div align="right">
		<input type="submit" class="btn btn-info">  
		<a href="search_result.jsp"><input type="button" class="btn btn-info" value="Search"></a>
		</div>
				 
		</form>
	</div>
			

</div>
</body>
</html>