<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.model.Employee" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Employee</title>

<style>

.fname, .lname, .nic, .email, .dob, .add, .dep, .desig div {
  border-radius: 3px;
  background-color: #e6ccff;
  padding: 20px;
  width: 70%;
  margin-left: 16%;
  
}

</style>
</head>
<body>

	<%Employee employee =(Employee) request.getAttribute("employee");%>
	
	
	<div class="viewtable" style="padding-top: 100px;">
			
			<h1><center>Profile Details</h1>
	<br>
	
	<form action="./GetEmployee" method="post">
	<div class="form-group">
 					<label for="ID">Enter Employee ID :  </label>	
 					<input type="text" id="ID" name="empid" class="form-control" placeholder="Employee ID" > <br>
 				</div>
 		
	
	<button type="submit" class="btn btn-success btn-lg rounded mx-auto d-block"> Enter </button>
	</form>

	<br>
	<br>
	<br>
	
		 
	<%if(employee!=null && employee.getempid()>=1) { %>
		<form action="./UpdateEmployee" method="post" id="register" class="form">
				
				<div class="fname">
				<div class="form-group">
 					<label for="Full name"> First Name : </label>
  					<input type="text" id="First name" value="<%=employee.getFirstname() %>" name="firstname" class="form-control" > <br>
  				</div>
  				</div>
  	
  				<div class="lname">
  				<div class="form-group">
 					<label for="Full name"> Last Name : </label>
  					<input type="text" id="Last name" value="<%=employee.getLastname() %>" name="lastname" class="form-control" > <br>
  				</div>
  				</div>
  				
  				<div class="nic">
  				<div class="form-group">
 					<label for="Full name"> NIC : </label>
  					<input type="text" id="nic" value="<%=employee.getNIC() %>" name="nic" class="form-control" > <br>
  				</div>
  				</div>
  	
  				<div class="email">
  				<div class="form-group">
 					<label for="Email">Email Address : </label>
 					<input type="email" id="Email" value="<%=employee.getEmail() %>" name="email" class="form-control" > <br>
 				</div>
 				</div>
 				
 				<div class="dob">
 				<div class="form-group">
 					<label for="Full name"> Date of birth : </label>
  					<input type="date" id="dob" value="<%=employee.getDOB() %>" name="dob" class="form-control" > <br>
  				</div>
  				</div>
 				
 				<div class="add">
 				<div class="form-group">
 					<label for="phone">Address : </label> 	
 					<input type="text" id="address" value="<%=employee.getAddress() %>" name="address" class="form-control"  > <br>
 				</div>
 				</div>
 				
 				<div class="dep">
 				<div class="form-group">
 					<label for="Batch">Department</label>
 					<input type="text" id="department" value="<%=employee.getDepartment() %>" name="department" class="form-control"> <br>
 				</div>
 				</div>
 				
 				<div class="desig">
 				<div class="form-group">
    				<label for="confirm"> Designation:</label>
    				<input type="text" id="designation" value="<%=employee.getDesignation() %>" name="designation" class="form-control" placeholder="Designation" >  <br>
    				<span id="error" style="color:red"></span>    <br>
    			</div>
    			</div>
    			
    			<input type="hidden" name="emp_ID" value="<%=employee.getempid() %>">
   		
				<button type="submit" name="save" class="btn btn-success btn-lg rounded float-right"> Save changes </button>
				
				</form>
				
				
				<form action="./DeleteEmployee" method="post"  class="form">
				<input type="hidden" name="emp_ID" value="<%=employee.getempid() %>">
				
				<button type="submit" name="delete" class="btn btn-danger btn-lg rounded float-left"> Delete </button>
  				 </form>
				
    			
    			<%} %>
    			
    			
			</div>

</body>
</html>