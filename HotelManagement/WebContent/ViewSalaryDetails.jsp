<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> View Salary Details </title>
</head>

<style>
.salarydetails{
	margin-left: 150px;
	margin-right: 80px;
}
.empSal{
  border-radius: 3px;
  background-color: #f2f2f2;
  padding: 10px;
  width: 60%;
  margin-left: 16%;
}
.Sal{
  border-radius: 3px;
  background-color: #f2f2f2;
  padding: 10px;
  width: 60%;
  margin-left: 16%;
}
</style>

<body>

	<div class="salarydetails" style="padding-top: 100px;">
	
		<h1> <center> Summary of an Employee's Salary </center> </h1>
	
		<form class="empSal" action="./ViewSalaryDetails" method="post" target="new">
				<div class="form-group" style="padding-top: 30px;">
 					<label for="ID">Enter Employee ID :  </label>	
 					<input type="text" id="ID" name="empid" class="form-control" placeholder=" Employee ID" required> <br>
 					
 					<div class="form-row">
    					<div class="form-group col-md-6">
 							<label for="date"> From : </label>
  							<input type="month" id="fromdate" name="fromdate" class="form-control" placeholder="mm/yy" required> <br>
  						</div>
 					
 						<div class="form-group col-md-6">
 							<label for="date"> To : </label>
 							<input type="month" id="todate" name="todate" class="form-control" placeholder="mm/yy" required> <br>
 						</div>
 					</div>
 				
 				<button type="submit" class="btn btn-primary btn-lg rounded mx-auto d-block"> Print </button>
 				
 				</div>
 		</form>
 		
 		<br>
 		<br>
 		<br>
 		<br>
 		<br>
 		</div class="salary">
	
		<h1> <center> Monthly Salary report </center> </h1>
 		
 		<div>
 		<form class="Sal" action="./MonthlySalary" method="post" target="new">
 		
 			
 				<div class="form-inline" style="padding-top: 10px; padding-left: 60px;">
    				<div class="form-group mb-2">
 						<label class="mb-2 mr-sm-3" for="date"> Select Month : </label>
  						<input type="month" id="month" name="month" class="form-control mb-2 mr-sm-2" placeholder="mm/yy" required> <br>
  					</div>
 					
 				
 				<button type="submit" class="btn btn-primary btn-lg rounded mb-4 mr-sm-6"> Print </button>
 				
 				</div>
 		
 		</form>
	</div>

</body>
</html>