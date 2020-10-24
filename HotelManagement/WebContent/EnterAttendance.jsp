<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.util.ArrayList" %>
<%@ page import="com.service.IEmployee" %>  
<%@ page import="com.service.EmployeeImpl"%>   
<%@ page import="com.model.Salary" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Enter Attendance</title>

<script>

	function nodays(){
		
		var days = document.getElementById("days");
		if (!inpObj.checkValidity())
			{
			document.getElementById("demo").innerHTML = "Invalid no of days";
			}
	}

</script>

<style>

.empid{
  border-radius: 3px;
  background-color: #f2f2f2;
  padding: 20px;
  width: 60%;
  margin-left: 16%;
}
</style>

</head>
<body>

	
	<div class="viewattendance" style="padding-top: 100px;">
			
			<h1><center>Attendance</h1>
	
			<form class="empid" action="./EnterAttendance" id="attendance" method="post">
				<div class="form-group" style="padding-top: 50px;">
 					<label for="ID">Enter Employee ID :  </label>	
 					<input type="text" id="ID" name="empid" class="form-control" placeholder=" Employee ID" required> <br>
 					
 					<label for="Month"> Select month : </label>
  					<input type="month" id="month" name="month" class="form-control" placeholder="mm/yy" required> <br>
 					
 					<label for="ID">Enter No of days present :  </label>	
 					<input type="number" id="days" name="days" class="form-control" placeholder=" Days" min="0" max="30" required> <br>
 				</div>
 		
	
			<button type="submit" class="btn btn-primary btn-lg rounded mx-auto d-block" onclick="nodays()"> Enter </button>
			</form>
			
	</div>

</body>
</html>