<%@page import="java.util.ArrayList"%>

<%@ page import="com.service.IFinance" %>  
<%@ page import="com.service.FinanceImpl"%>  
<%@ page import="com.model.Expense" %> 


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense</title>

<link rel="stylesheet" type="text/css" href="styles/at.css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
</script>

<script>
$(document).ready(function(){
  $("#myInput1").on("keyup", function() {
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
			<a href="AddExpense.jsp"><button class="btn btn-success">Add Expense</button></a>
			</div>
			
			
			<div class = "search1">
			<a href="SearchExpense.jsp"><button class="btn btn-info">Search</button></a>
			</div>
			
			
			<div class = "filter">			
			<input type="text" id="myInput1" onkeyup="myFunction()" placeholder="Search Expense" title="Type expense">			
			</div>
							
			</div>
			
			
			<div class = "lower-container tbs">
			
			
				
				<h2>Expense Transactions</h2>
	
		<table class = "table">
			<thead>
				<tr>
					<th>Expense_ID</th>
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
              IFinance expense = new FinanceImpl();
              ArrayList<Expense> Tranct=new ArrayList<>();
             
              Tranct = expense.exTransaction();
             
             for(Expense expen:Tranct){ %>
            <tr>
               <td><%=expen.getExpense_ID()%> </td>
               
               <td><%=expen.getPayment_ID()%></td>
             
               <td><%=expen.getCategory()%></td>
               
               <td><%=expen.getAmount()%></td>
               
               <td><%=expen.getDate()%></td>
               
               
               
               <form action="./GetExpense" method="post"><input type="hidden" name="Expense_ID" value="<%=expen.getExpense_ID()%>">
               
               <td><button type = "submit" class = "btn btn-primary" name = "edit">View</button></a></td>
               
			   </form>
			   
			   <form action="./DeleteExpense" method="post">
			   
               <input type="hidden" name="Expense_ID" value="<%=expen.getExpense_ID()%>">
               
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