<%@page import="java.util.ArrayList"%>

<%@ page import="com.service.IFinance" %>  
<%@ page import="com.service.FinanceImpl"%>  
<%@ page import="com.model.StockRequest" %> 


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Stock Request</title>

<link rel="stylesheet" type="text/css" href="styles/at.css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
</script>

<script>
$(document).ready(function(){
  $("#myInput5").on("keyup", function() {
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
			
			<div style="margin-left:50px">
			
			<input type="text" id="myInput5" onkeyup="myFunction()" placeholder="Search Stock" title="Type stock">
				
			</div>
			
			</div>
			
			
			<div class = "lower-container tbs">
			
			
				
				<h2>Stock Transactions</h2>
	
		<table class = "table">
			<thead>
				<tr>
					<th>Request_No</th>
					<th>Asset_ID</th>
					<th>Asset_Name</th>
					<th>Quantity</th>
					<th>Date</th>
					<th>Action</th>
					<th></th>
				</tr>
			</thead>
			<tbody id="myTable">
<tr>
         <%
              IFinance stock = new FinanceImpl();
              ArrayList<StockRequest> req=new ArrayList<>();
             
              req = stock.listReq();
             
             for(StockRequest asset:req){ %>
            <tr>
               <td><%=asset.getRequest_No()%> </td> 
               
               <td><%=asset.getAsset_ID()%></td>
             
               <td><%=asset.getAsset_Name()%></td>
               
               <td><%=asset.getQuantity()%></td>
               
               <td><%=asset.getDate()%></td>
               
               
               
               <form action="./GetPurchaseOrder" method="post"><input type="hidden" name="Request_No" value="<%=asset.getRequest_No()%>">
               
               <td><button type = "submit" class = "btn btn-info" name = "view">Purchase Order</button></a></td>
               
			   </form>
              
			   <form action="./DeleteStockRequest" method="post">
			   
               <input type="hidden" name="Request_No" value="<%=asset.getRequest_No()%>">
               
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