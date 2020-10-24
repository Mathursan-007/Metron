<%@page import="java.util.ArrayList"%>

<%@ page import="com.service.IFinance" %>  
<%@ page import="com.service.FinanceImpl"%>  
<%@ page import="com.model.Income" %> 


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Income</title>

<link rel="stylesheet" type="text/css" href="styles/at.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
</script>

<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
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
			
			<div class = "incom">
			<a href="AddIncome.jsp"><button class="btn btn-success">Add Income</button></a>
			</div>
			
			<div class = "search1">
			<a href="SearchIncome.jsp"><button class="btn btn-info">Search</button></a>
			</div>	
			
			
			<div class = "filter1">			
			<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search Department" title="Type department">
			</div>
			</div>
			
			
			<div class = "lower-container tbs">
			
			
				
				<h2>Income Transactions</h2>
	
		<table class = "table">
			<thead>
				<tr>
					<th>Income_ID</th>
					<th>Payment_ID</th>
					<th>Category</th>
					<th>Amount</th>
					<th>Date</th>
					<th>Action</th>
					<th></th>
				</tr>
			</thead>
			<tbody id="myTable">
<tr>
         <%
              IFinance income = new FinanceImpl();
              ArrayList<Income> Transaction=new ArrayList<>();
             
              Transaction = income.listTransaction();
             
             for(Income incom:Transaction){ %>
            <tr>
               <td><%=incom.getIncome_ID()%> </td> 
               
               <td><%=incom.getPayment_ID()%></td>
             
               <td><%=incom.getCategory()%></td>
               
               <td><%=incom.getAmount()%></td>
               
               <td><%=incom.getDate()%></td>
               
               
               
               <form action="./GetIncome" method="post"><input type="hidden" name="Income_ID" value="<%=incom.getIncome_ID()%>">
               
               <td><button type = "submit" class = "btn btn-primary" name = "edit">View</button></a></td>
               
			   </form>
			   
			   <form action="./DeleteIncome" method="post">
			   
               <input type="hidden" name="Income_ID" value="<%=incom.getIncome_ID()%>">
               
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