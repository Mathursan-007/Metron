<%@page import="java.util.ArrayList"%>

<%@ page import="com.service.IUtility" %>  
<%@ page import="com.service.UtilityImpl"%>  
<%@ page import="com.model.Utility" %> 


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Utility Transaction</title>

<link rel="stylesheet" type="text/css" href="styles/at.css" />

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
				
			 <a href="AddUtility.jsp" class="button"><button>Add Expense</button></a>
			
			</div>
			
			
			<div class = "lower-container tbs">
			
			
				
				<h2>Utility Transactions</h2>
	
		<table class = "table">
			<thead>
				<tr>
					<th>Payment_ID</th>
					<th>Description</th>
					<th>Amount</th>
					<th>Date</th>
					<th>Action</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
<tr>
         <%
              IUtility utility = new UtilityImpl();
              ArrayList<Utility> Expense=new ArrayList<>();
             
              Expense = utility.listExpense();
             
             for(Utility util:Expense){ %>
            <tr>
               <td><%=util.getPayment_ID()%> </td>
               
               <td><%=util.getDescription()%></td>
             
               <td><%=util.getAmount()%></td>
               
               <td><%=util.getDate()%></td>
               
               
               <form action="./GetUtility" method="post"><input type="hidden" name="Payment_ID" value="<%=util.getPayment_ID()%>">
               
               <td><button type = "submit" class = "btn btn-primary" name = "edit">Edit</button></a></td>
               
			   </form>
			   
			   <form action="./DeleteUtility" method="post">
			   
               <input type="hidden" name="paymentID" value="<%=util.getPayment_ID()%>">
               
               <td><button type = "submit" class = "btn btn-primary" name = "delete">Delete</button></a></td>
               
               
         
               
               
               </form>
             
     
               
            </tr>
            <%} %>
       

      </tbody>

		
			
						
				</table>
			</div>		
			
			
		</div>
		
</body>
</html>