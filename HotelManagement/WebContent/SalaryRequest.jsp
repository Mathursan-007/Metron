<%@page import="java.util.ArrayList"%>

<%@ page import="com.service.IFinance" %>  
<%@ page import="com.service.FinanceImpl"%>  
<%@ page import="com.model.SalaryRequest" %> 


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SalaryRequest</title>

<link rel="stylesheet" type="text/css" href="styles/at.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
</script>

<script>
$(document).ready(function(){
  $("#myInput4").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>

<style>
.tbs{
		width:100%;
		height:500px;
		overflow:auto;
}
</style>

</head>
<body class="bt">



		<div class = " card-container">
			<div class = "upper-container">
					
			
			<div style = "margin-left:50px">
			
			<input type="text" id="myInput4" onkeyup="myFunction()" placeholder="Search Employee" title="Type Id">
		
			
			</div>
			</div>
			
			
			<div class = "lower-container tbs">
			
			
				
				<h2>Salary Transactions</h2>
	
		<table class = "table">
			<thead>
				<tr>
					<th>Request_ID</th>
					<th>Employee_ID</th>
					<th>Total_Salary</th>
					<th>Date</th>
					<th>Action</th>
					<th></th>
				</tr>
			</thead>
			<tbody id="myTable">
<tr>
         <%
              IFinance salary = new FinanceImpl();
              ArrayList<SalaryRequest> Infor=new ArrayList<>();
             
              Infor = salary.listSalary();
             
             for(SalaryRequest sal:Infor){ %>
            <tr>
               <td><%=sal.getRequest_ID()%> </td>
               
               <td><%=sal.getEmployee_ID()%></td>
             
               <td><%=sal.getTotal_Salary()%></td>
               
              <td><%=sal.getDate()%></td>
               
         
         
               
               
               <form action="./DeleteSalaryRequest" method="post">
			   
               <input type="hidden" name="Request_ID" value="<%=sal.getRequest_ID()%>">
               
               <td><button type = "submit" class = "btn btn-success" name = "confirm">Confirm</button></a></td>
               
               
                <form action="./DeleteSalaryRequest" method="post">
			   
               <input type="hidden" name="Request_ID" value="<%=sal.getRequest_ID()%>">
               
               <td><button type = "submit" class = "btn btn-danger" name = "delete">Delete</button></a></td>
               
               
			   
			   
		
               
               
         
               
               
               </form>
             
     
               
            </tr>
            <%} %>
       

      </tbody>

		
			
						
				</table>
			</div>		
			
			
		</div>
		
</body>
</html>