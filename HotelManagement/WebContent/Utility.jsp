<%@page import="java.util.ArrayList"%>

<%@ page import="com.service.IFinance" %>  
<%@ page import="com.service.FinanceImpl"%>  
<%@ page import="com.model.Utility" %> 


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Utility Transaction</title>

<link rel="stylesheet" type="text/css" href="styles/at.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>
$(document).ready(function(){
  $("#myInput3").on("keyup", function() {
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
			<a href="AddUtility.jsp"><button class="btn btn-success">Add Utility</button></a>
			</div>
			 
			 <div class = "filter3">			
			<input type="text" id="myInput3" onkeyup="myFunction()" placeholder="Search Utility" title="Type utility">		
			</div>
			
			</div>
			
			
			<div class = "lower-container tbs">
			
			
				
				<h2>Utility Transactions</h2>
	
		<table class = "table">
			<thead>
				<tr>
					<th>Payment_ID</th>
					<th>Category</th>
					<th>Amount</th>
					<th>Date</th>
					<th>Action</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody id="myTable">
<tr>
         <%
              IFinance utility = new FinanceImpl();
              ArrayList<Utility> Expense=new ArrayList<>();
             
              Expense = utility.listExpense();
             
             for(Utility util:Expense){ %>
            <tr>
               <td><%=util.getPayment_ID()%> </td>
               
               <td><%=util.getCategory()%></td>
             
               <td><%=util.getAmount()%></td>
               
               <td><%=util.getDate()%></td>
               
               
               <form action="./GetUtility" method="post"><input type="hidden" name="Payment_ID" value="<%=util.getPayment_ID()%>">
               
               <td><button type = "submit" class = "btn btn-primary" name = "edit">View</button></a></td>
               
			   </form>
			   
			   <form action="./DeleteUtility" method="post">
			   
               <input type="hidden" name="paymentID" value="<%=util.getPayment_ID()%>">
               
               <td><button type = "submit" class = "btn btn-danger" name = "delete">Delete</button></a></td>
               
               
         
               
               
               </form>
             
     
               
            </tr>
            <%} %>
   </tr>    

      </tbody>

		
			
						
				</table>
			</div>		
			
			
		</div>
		
</body>
</html>