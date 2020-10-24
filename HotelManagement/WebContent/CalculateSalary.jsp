<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.model.Salary" %>
    <%@ page import="com.model.Employee" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Calculate Salary </title>
</head>

<style>

.empid{
  border-radius: 3px;
  background-color: #f2f2f2;
  padding: 20px;
  width: 60%;
  margin-left: 16%;
}

.calcSalary{
  border-radius: 3px;
  background-color: white;
  padding: 5px 5px;
  padding-top: 50px;
  padding-left: 120px;
  width: 60%;
  margin-left: 16%;
}
.sal{
	width: 70%;
}

</style>

<body>

	<%Salary salary =(Salary) request.getAttribute("salary");%>

	<div class="viewattendance" style="padding-top: 100px;">
			
			<h1><center> Calculate Salary </h1>
	
			<form class="empid" action="./CalculateSalary" method="post">
			<div class="form-row" style="padding-top: 30px;">
				<div class="form-group col-md-6">
 					<label for="ID">Enter Employee ID :  </label>	
 					<input type="text" id="ID" name="empid" class="form-control" placeholder=" Employee ID" > <br>
 				</div>
 				
 				<div class="form-group col-md-6">
 					<label for="date"> Select Month : </label>
  					<input type="month" id="date" name="date" class="form-control" > <br>
 				</div>
 			</div>
 			
 			<button type="submit" class="btn btn-primary btn-lg rounded mx-auto d-block"> Calculate </button>
 			
 			</form>
 			
 			<br><br><br><br>
 					
 			<%if(salary!=null) { %>
 			
				<form class="calcSalary" action="./CalculateSalary" method="post" id="calculate" class="form">
				
 					<div class="form-group row">
 					<label class="col-sm-5 col-form-label" for="days"> No of days attended :  </label>
 					<div class="col-mb-1">
 					<input type="text" id="days" name="days" value="<%=salary.getDays() %>" readonly class="form-control-plaintext" > 
 					</div>
 					</div>	<br>
 					
 					<div class="form-group row">
 					<label class="col-sm-3 col-form-label" for="ID"> Basic Salary :  </label>
 					<div class="col-mb-2" style= "width: 20%">	
 					<input type="number" id="basicsalary" name="basicsalary" value="<%=salary.getBasicSal() %>" readonly class="form-control-plaintext" > 
 					</div>
 					</div>	<br>
 					
 					
 					<%if(salary.getDays()>20){ %>
 					<div class="sal row">
 					<label class="col-sm-6 col-form-label" for="ID"> Over time salary :  </label>
 					<div class="col-mb-2" style= "width: 20%">	
 					<input type="number" id="ot" name="ot" value="<%=salary.getOvertime() %>" readonly class="form-control-plaintext" > 
 					</div>
 					</div>	<br>
 					<%}else if(salary.getDays()<=13){%>
 					
 					<div class="sal row">
 					<label class="col-sm-6 col-form-label" for="ID"> Leave Deduction :  </label>
 					<div class="col-mb-2" style= "width: 20%">	
 					<input type="number" id="leave" name="leave" value="<%=salary.getLeave() %>" readonly class="form-control-plaintext" > 
 					</div>
 					</div>	<br>
 					<%} %>
	
			
					<div class="form-group row">
 					<label class="col-sm-3 col-form-label" for="ID"> Net Salary :  </label>
 					<div class="col-mb-2" style= "width: 20%">
 					<input type="number" id="netsalary" name="netsalary" value="<%=salary.getNetSal() %>" readonly class="form-control-plaintext" > 
 					</div>
 					</div>	<br><br>
 					</form>
 					
					<br><br>
				
					<div class="insertsal">
						<form action="./InsertSalary" method="post"  class="form">
							<input type="hidden" name="empid" value="<%=salary.getEmpid() %>">
							<input type="hidden" name="date" value="<%=salary.getMonth() %>">
							<input type="hidden" name="basicsalary" value="<%=salary.getBasicSal() %>">
							<input type="hidden" name="ot" value="<%=salary.getOvertime() %>">
							<input type="hidden" name="leave" value="<%=salary.getLeave() %>">
							<input type="hidden" name="netsalary" value="<%=salary.getNetSal() %>">
							<button type="submit" class="btn btn-primary btn-lg rounded mx-auto d-block"> Save </button>
						</form>
					</div>	
					
 					
 					<%} %>
			
	</div>

</body>
</html>