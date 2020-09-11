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


<link rel="stylesheet" type="text/css" href="styles/m.css" />

<style>

bg.{
	position : center;
	background-color: lightblue;
  	width: 200px;
  	height: 900px;
	overflow: auto;
}

.form{
	width: 400px;
	margin-left: 200px;
	
}

</style>

</head>
<body>

	<br>
	
	<div class = " card-container">
	
	<div class = "upper-container">
	<h1 class="text-center"> Register </h1>
	</div>
	
	<div class = "lower-container">	
	
	
	<div class="container-fluid bg">
	
	<!-- form starts -->

			<form action="addemployee" method="post" id="register" class="form">
 				
 				<br>
 				<br>
 				<br>
 				<br>
 
 				<div class="form-group">
 					<label for="ID">Enter Employee ID :  </label>	
 					<input type="text" id="ID" name="ID" class="form-control" placeholder="Employee ID" required> <br>
 				</div>
 	
 				<div class="form-group">
 					<label for="Full name"> Enter First Name : </label>
  					<input type="text" id="First name" name="fname" class="form-control" placeholder="First name"required> <br>
  				</div>
  	
  				<div class="form-group">
 					<label for="Full name"> Enter Last Name : </label>
  					<input type="text" id="Last name" name="lname" class="form-control" placeholder="Last name"required> <br>
  				</div>
  				
  				<div class="form-group">
 					<label for="Full name"> Enter NIC : </label>
  					<input type="text" id="nic" name="nic" class="form-control" placeholder="NIC"required> <br>
  				</div>
  	
  				<div class="form-group">
 					<label for="Email">Email Address : </label>
 					<input type="email" id="Email" name="email" class="form-control" placeholder="Email"required> <br>
 				</div>
 		
 				<div class="form-group">
 					<label for="phone">Contact Number : </label> 	
 					<input type="tel" id="phone" name="phone" class="form-control" placeholder="07XXXXXXXX" required> <br>
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
    				<input type="text" id="designation" name="designation" class="form-control" placeholder="Designation" required>  <br>
    				<span id="error" style="color:red"></span>    <br>
    			</div>
 	
 	
 	
 				<button type="submit" class="btn btn-success btn-block"> Submit </button>

 
 			</form>
 			
 			<br>
	
		<!-- form ends -->
	</div>


</div>
</div>
=======
=======


>>>>>>> 8521f07 employee
<style>

bg.{
	position : center;
	background-color: lightblue;
  	width: 200px;
  	height: 900px;
	overflow: auto;
}

.form{
	width: 400px;
	margin-left: 200px;
	
}

</style>

</head>
<body>

	<br>
	
	<div class = " card-container">
	
	<div class = "upper-container">
	<h1 class="text-center"> Register </h1>
	</div>
	
	<div class = "lower-container">	
	
	
	<div class="container-fluid bg">
	
	<!-- form starts -->

			<form action="addemployee" method="post" id="register" class="form">
 				
 				<br>
 				<br>
 				<br>
 				<br>
 
 				<div class="form-group">
 					<label for="ID">Enter Employee ID :  </label>	
 					<input type="text" id="ID" name="ID" class="form-control" placeholder="Employee ID" required> <br>
 				</div>
 	
 				<div class="form-group">
 					<label for="Full name"> Enter First Name : </label>
  					<input type="text" id="First name" name="fname" class="form-control" placeholder="First name"required> <br>
  				</div>
  	
  				<div class="form-group">
 					<label for="Full name"> Enter Last Name : </label>
  					<input type="text" id="Last name" name="lname" class="form-control" placeholder="Last name"required> <br>
  				</div>
  				
  				<div class="form-group">
 					<label for="Full name"> Enter NIC : </label>
  					<input type="text" id="nic" name="nic" class="form-control" placeholder="NIC"required> <br>
  				</div>
  	
  				<div class="form-group">
 					<label for="Email">Email Address : </label>
 					<input type="email" id="Email" name="email" class="form-control" placeholder="Email"required> <br>
 				</div>
 		
 				<div class="form-group">
 					<label for="phone">Contact Number : </label> 	
 					<input type="tel" id="phone" name="phone" class="form-control" placeholder="07XXXXXXXX" required> <br>
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
    				<input type="text" id="designation" name="designation" class="form-control" placeholder="Designation" required>  <br>
    				<span id="error" style="color:red"></span>    <br>
    			</div>
 	
 	
 	
 				<button type="submit" class="btn btn-success btn-block"> Submit </button>

 
 			</form>
 			
 			<br>
	
		<!-- form ends -->
	</div>

<<<<<<< Upstream, based on branch 'master' of https://github.com/Mathursan-007/Metron.git
>>>>>>> f270cfb Employee Management
=======

</div>
</div>
>>>>>>> 8521f07 employee
</body>
</html>