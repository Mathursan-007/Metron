<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.model.Employee" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Employee</title>

<script>
	$().alert()
</script>

<style>

.view {
	margin-top: 40px;
}

.empid{
  border-radius: 3px;
  background-color: #f2f2f2;
  padding: 20px;
  width: 60%;
  margin-left: 16%;
}

.fname, .lname, .nic, .email, .dob, .add, .dep, .desig div {
  border-radius: 3px;
  background-color: #e6ccff;
  padding: 20px;
  width: 70%;
  margin-left: 16%;
  
}

.save button{
	margin-right: 170px;
}

.delete button{
	margin-left: 200px;
}

</style>
</head>
<body>

	<%Employee employee =(Employee) request.getAttribute("employee");%>
	
	
	<div class="viewtable" style="padding-top: 100px;">
			
			<h1><center>Profile Details</h1>
	
			<form class="empid" action="./GetEmployee" method="post">
	<div class="form-group" style="padding-top: 50px;">
 					<label for="ID">Enter Employee ID :  </label>	
 					<input type="text" id="ID" name="empid" class="form-control" placeholder=" Employee ID" > <br>
 				</div>
 		
	
	<button type="submit" class="btn btn-primary btn-lg rounded mx-auto d-block"> Search </button>
	</form>
	
	 
	<%if(employee!=null && employee.getempid()>=1 && employee.getNIC()!=null) { %>
		<form class="view" action="./UpdateEmployee" method="post" id="register" class="form">
				
				<div class="fname">
				<div class="form-group">
 					<label for="Full name"> First Name : </label>
  					<input type="text" id="First name" value="<%=employee.getFirstname() %>" name="firstname" readonly class="form-control" > <br>
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
  					<input type="date" id="dob" value="<%=employee.getDOB() %>" name="dob" readonly class="form-control" > <br>
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
   		
   				<div class="save">
				<button type="submit" class="btn btn-success btn-lg rounded float-right"> Save changes </button>
				</div>
				
				</form>
				
				
				<div class="delete">
				<form action="./DeleteEmployee" method="post"  class="form">
				<input type="hidden" name="emp_ID" value="<%=employee.getempid() %>">
				
				<button type="submit" class="btn btn-danger btn-lg rounded float-left"> Delete </button>
  				 </form>
				</div>
				
    			
    			<%} %>
    			
    			
			</div>

</body>
</html>