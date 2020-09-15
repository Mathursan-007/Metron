<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.model.Employee" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Employee</title>
</head>
<style>
form.{
	width : 400px;
	height: 400px;
	position : absolute;
	left: 70%;
}
</style>
<body>


	<form action="./GetEmployee" method="post">
	<div class="form-group" style="padding-top: 100px;">
 					<label for="ID">Enter Employee ID :  </label>	
 					<input type="text" id="ID" name="empid" class="form-control" placeholder="Employee ID" > <br>
 				</div>
 		
	
	<button type="submit" class="btn btn-success btn-lg rounded mx-auto d-block"> Search </button>
	</form>
	
	<br>
	<br>
	
	<form action="./GetEmployee" method="post">
	<div class="form-group">
 					<label for="nic">Enter NIC :  </label>	
 					<input type="text" id="nic" name="nic" class="form-control" placeholder="NIC" > <br>
 				</div>
	
	<button type="submit" class="btn btn-success btn-lg rounded mx-auto d-block"> Search </button>
	</form>
	
	
		<form action="./UpdateEmployee" method="post" id="register" class="form">
				
				<div class="empid">
				<div class="form-group">
 					<label for="empid"> Employee ID : </label>
  					<input type="text" id="empid" value="" name="empid" class="form-control" > <br>
  				</div>
  				</div>
  		</form>

</body>
</html>