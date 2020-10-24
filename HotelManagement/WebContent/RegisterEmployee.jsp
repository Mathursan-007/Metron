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


<link rel="stylesheet" type="text/css" href="styles/wa.css" />

<style>


</style>

</head>
<body>

	
	<h1 class="text-center"  style="padding-top: 100px;"> Register </h1>
	
	
	<!-- form starts -->

			<form action="./Registeremployee" method="post" id="register" class="form">
 				
 				<div class="Fname">
 				<div class="form-group">
 					<label for="Full name"> Enter First Name : </label>
  					<small id="firstnameInline" class="text-muted" style= "padding-left: 500px;">
      					Must be filled
    				</small>
  					<input type="text" id="First name" name="firstname" class="form-control" placeholder="First name"required> <br>
  				</div>
  				</div>
  	
  				<div class="Lname">
  				<div class="form-group">
 					<label for="Full name"> Enter Last Name : </label>
  					<input type="text" id="Last name" name="lastname" class="form-control" placeholder="Last name"> <br>
  				</div>
  				</div>
  				
  				<div class="Nic">
  				<div class="form-group">
 					<label for="Full name"> Enter NIC : </label>
 					<small id="firstnameInline" class="text-muted" style= "padding-left: 530px;">
      					Must be filled
    				</small>
  					<input type="text" id="nic" name="nic" class="form-control" placeholder="NIC" required> <br>
  				</div>
  				</div>
  	
  				<div class="Email">
  				<div class="form-group">
 					<label for="Email">Enter Email Address : </label>
 					<small id="firstnameInline" class="text-muted" style= "padding-left: 460px;">
      					Must be filled
    				</small>
 					<input type="email" id="Email" name="email" class="form-control" placeholder="xxx@xxx.com" required> <br>
 				</div>
 				</div>
 		
 				<div class="DOB">
 				<div class="form-group">
 					<label for="DOB"> Enter Date of birth : </label>
 					<small id="firstnameInline" class="text-muted" style= "padding-left: 480px;">
      					Must be filled
    				</small>
  					<input type="date" id="dob" name="dob" class="form-control" placeholder="dd/mm/yy" required> <br>
  				</div>
  				</div>
 		
 				<div class="Contact">
 				<div class="form-group">
 					<label for="phone">Enter Contact Number : </label> 	
 					<input type="number" id="phone" name="contact" class="form-control" placeholder="07XXXXXXXX" pattern="[0-9]{10}"> <br>
 				</div>
 				</div>
 				
 				<div class="Address">
 				<div class="form-group">
 					<label for="address">Enter Address : </label> 	
 					<input type="text" id="address" name="address" class="form-control" placeholder="Address" > <br>
 				</div>
 				</div>
 	
 				<div class="Department">
 				<div class="form-group">
 					<label for="Batch">Department</label>
 					<small id="firstnameInline" class="text-muted" style= "padding-left: 530px;">
      					Must be filled
    				</small>
 					<select id="department" name="department" class="form-control">
 						<option selected> Select department </option>
 						<option value="Inventory"> Inventory </option>
 						<option value="Finance"> Finance </option>
 						<option value="Restaurant"> Restaurant </option>
 						<option value="Event"> Event </option>
 						<option value="Room"> Room </option>
 						<option value="Extra Service"> Extra Service </option>
 						<option value="Transport"> Transport </option>
 					</select>	<br>
 				</div>
 				</div>
 	
 				<div class="Designation">
  				<div class="form-group">
    				<label for="designation">Enter Designation:</label>
    				<small id="firstnameInline" class="text-muted" style= "padding-left: 480px;">
      					Must be filled
    				</small>
    				<input type="text" id="designation" name="designation" class="form-control" placeholder="Designation" required>  <br>
    				<span id="error" style="color:red"></span>    <br>
    			</div>
 				</div>
 	
 	
 				<button type="submit" class="btn btn-primary btn-lg rounded mx-auto d-block"> Submit </button>

 
 			</form>
 			
 			<br>
	
		<!-- form ends -->
	
</body>
</html>