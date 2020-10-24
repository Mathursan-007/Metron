<%@page import="java.util.ArrayList"%>
<%@ page import="com.service.IInventory" %>  
<%@ page import="com.service.InventoryImpl"%>   
<%@ page import="com.model.InventoryTransaction" %>  

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transaction Details</title>

<link rel="stylesheet" href="styles/dash.css" />
<script src="https://kit.fontawesome.com/yourcode.js"></script>

<script>
$(document).ready(function(){
  $("#myInput7").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable7 tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
<style>
.tbs{
    width: 100%;
    height:550px;
  	overflow: auto;    
                
}
</style>
</head>
<body class="bt">

<section></section>


<div class = "card-container">
<div class = "upper-container">

<form action="./GetTotalQuantity" method="post">
		<div class="cal">
		<h5>Asset Id :</h5>
		<input class="cl" type="text" placeholder="RM0001" name="assetID">
	</div>
	
	<div class="cal2">
		<h5>Type :</h5>
		<input class="cl" type="text" placeholder="Income" name="type">
	</div>
	<div class="calBut">
	
	<input type="hidden" name="assetID" value="">
	<input type="submit" class="btn btn-info" value="Total">
	</div>
	
</form>	

	  		<input class="cl3" type="text" placeholder="0" name="total" value="<%=(Integer)request.getAttribute("Qty") %>">
	  		
	  			<div class="input-containerTrans">
		<i class="fa fa-search icon"></i>
		<input class="input-field" type="text" id="myInput7" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
		</div>
	  		
	  
		 
</div>

<div class = "lower-container tbs">

<div class = "row justify-content-center">



<h2>Transactions</h2>

<table class = "table">
<thead>
<tr>
<th></th>
<th>Transaction ID</th>
<th>Asset ID</th>
<th>Asset Name</th>
<th>Type</th>
<th>Quantity</th>
<th>Date</th>
</tr>
</thead>

<tbody id="myTable7">

	          <%
              IInventory transactionInventoryImpl = new InventoryImpl();
              ArrayList<InventoryTransaction> transactionInventory=new ArrayList<>();
              
              transactionInventory = transactionInventoryImpl.transactionDetails();
             
             for(InventoryTransaction assets:transactionInventory){ %>
            <tr>
               <td><%=assets.getID() %> </td> 
               
               <td><%=assets.getTransID() %> </td> 
            
               <td><%=assets.getAssetID() %> </td> 
               
               <td><%=assets.getAssetName() %></td> 
               
               <td><%=assets.getType() %></td> 
              
               <td><%=assets.getQuantity() %></td>
                                     
               <td><%=assets.getDate() %></td> 
               
               
      
            </tr>
            <%} %>
        

      </tbody>



    </table>
</div>


</div>
</div>

</body>
</html>