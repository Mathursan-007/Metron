<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page import="com.model.SalaryRequest" %> 
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" type="text/css" href="styles/Utility.css" />

<title>Edit Salary</title>
</head>
<body>


<% SalaryRequest sals =(SalaryRequest)request.getAttribute("salary");%>
<%if(sals!=null) { %>
  		<form method="post" action="./UpdateSalaryRequest"   >
  				

  <div class = "expense">

  <div class="form-group">
 
  <h2>Edit Salary</h2>
 
      
      <label for="Employee_ID">Employee_ID : </label>
      <input type="number" class="form-control" id="Employee_ID" name="Employee_ID" value="<%=sals.getEmployee_ID() %>"required>
      <br><br><br>
      <label for="Total_Salary"> Total_Salary : </label>
      <input type="text" class="form-control" id="Total_Salary" name="Total_Salary" value="<%=sals.getTotal_Salary() %>" required>
      <br><br><br>
      <label for="Date"> Date : </label>
      <input type="date" class="form-control" id="Date" placeholder="dd//mm/yyyy" name="Date" required>
      <br><br><br>
      
      
      
      		 <div class = "bck">
             <button onclick="goBack()">Back</button>
             
             
             
             <script>
				function goBack() {
  				window.history.back();
				}
			</script>
             
			 </div>  
     
            <input type="Submit" value="SAVE" class="button">
    </div>
    </div>
       

  </form>
 
<% } %>
</body>
</html>
