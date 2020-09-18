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

.NIC, .Empid{
  border-radius: 3px;
  background-color: #f2f2f2;
  padding: 10px;
  width: 70%;
  margin-left: 16%;
}

</style>
<body>

	<%Employee employees =(Employee) request.getAttribute("employee");%>


	
	
	
	<form class="NIC" action="./SearchNic" method="post" style="padding-top: 100px;">
	<div class="form-group">
 					<label for="nic">Enter NIC :  </label>	
 					<input type="text" id="nic" name="nic" class="form-control" placeholder="NIC" > <br>
 				</div>
	
	<button type="submit" class="btn btn-success btn-lg rounded mx-auto d-block"> Search </button>
	</form>
	
		
		<form class="Empid" action="./RetrieveEmpID" method="post" id="register" class="form">
				
				<div class="empid">
				<div class="form-group">
 					<label for="empid"> Employee ID : </label>
 					<%if(employees!=null) { %>
  					<input type="text" id="empid" value="<%=employees.getempid() %>" name="empid" readonly class="form-control-plaintext" > <br>
  				    <% } %>
  				</div>
  				</div>
  				
  				<input type="hidden" name="NIC" value="">
  				
  		</form>
  		

</body>
</html>