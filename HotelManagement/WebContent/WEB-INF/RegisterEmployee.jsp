<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.service.IEmployee" %>  
<%@ page import="com.service.EmployeeImpl"%>   
<%@ page import="com.model.Employee" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Register Employee </title>
</head>
<body>

	<br>
	
	<!-- form starts -->

			<form action="addemployee" method="post" id="register" class="form">
 	
 				<h1 class="text-center"> Register </h1>
 				
 				<br>
 
 				<div class="form-group">
 					<label for="ID">Enter Employee ID :  </label>	
 					<input type="text" id="ID" name="ID" class="form-control" placeholder="Employee ID"> <br>
 				</div>
 	
 				<div class="form-group">
 					<label for="Full name"> Enter First Name : </label>
  					<input type="text" id="First name" name="fname" class="form-control" placeholder="First name"> <br>
  				</div>
  	
  				<div class="form-group">
 					<label for="Full name"> Enter Last Name : </label>
  					<input type="text" id="Last name" name="lname" class="form-control" placeholder="Last name"> <br>
  				</div>
  	
  				<div class="form-group">
 					<label for="Email">Email Address : </label>
 					<input type="email" id="Email" name="email" class="form-control" placeholder="Email"> <br>
 				</div>
 		
 				<div class="form-group">
 					<label for="phone">Contact Number : </label> 	
 					<input type="tel" id="phone" name="phone" class="form-control" placeholder="07XXXXXXXX" > <br>
 				</div>
 	
 				<div class="form-group">
 					<label for="Batch">Department</label>
 					<select id="Batch" name="Batch" class="form-control">
 						<option selected> Select department </option>
 						<option value="Inventory"> Inventory </option>
 						<option value="Finance"> Finance </option>
 						<option value="Finance"> Restaurant </option>
 					</select>	<br>
 				</div>
 	
  				<div class="form-group">
    				<label for="confirm"> Designation:</label>
    				<input type="password" id="confirm" name="confirm" class="form-control" placeholder="Re-Enter Password" required>  <br>
    				<span id="error" style="color:red"></span>    <br>
    			</div>
 	
 	
 	
 				<button type="submit" class="btn btn-success btn-block"> Submit </button>

 
 			</form>
 			
 			<br>
	
		<!-- form ends -->

</body>
</html>