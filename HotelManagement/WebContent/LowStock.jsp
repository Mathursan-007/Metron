<%@page import="java.util.ArrayList"%>
<%@ page import="com.service.IInventory" %>  
<%@ page import="com.service.InventoryImpl"%>   
<%@ page import="com.model.Inventory" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Low Stocks</title>

<link rel="stylesheet" href="styles/dash.css" />
<script src="https://kit.fontawesome.com/yourcode.js"></script>

<script>
$(document).ready(function(){
  $("#myInput3").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable3 tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>

<style>
.tbs{
    width: 100%;
    height:525px;
  	overflow: auto;    
                
}
</style>
</head>
<body class="bt">


<section></section>


<div class = "card-container">
<div class = "upper-container">

		<a href="RequestOrderForm.jsp" class="button"><button class="btn btn-success" style="margin-top:10px;">Request Order</button></a>
		
				<div class="input-container">
		<i class="fa fa-search icon"></i>
		<input class="input-field" type="text" id="myInput3" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
		</div>


</div>

<div class = "lower-container tbs">

<div class = "row justify-content-center">



<h2>Low Stocks</h2>

<table class = "table">
<thead>
<tr>
<th>Asset ID</th>
<th>Asset Name</th>
<th>Minimum Quantity</th>
<th>Available Quantity</th>
<th>Total Quantity</th>
<th>Action</th>
</tr>
</thead>

<tbody id="myTable3">

	          <%
              IInventory inventoryImpl = new InventoryImpl();
	          
              ArrayList<Inventory> lowStocks=new ArrayList<>();
              
              lowStocks = inventoryImpl.listLowInventories();
             
             for(Inventory assets:lowStocks){ %>
            <tr>
               <td><%=assets.getAssetID() %> </td> 
               
               <td><%=assets.getAssetName() %></td> 
              
               <td><%=assets.getMinQuantity() %></td>
               <td><%=assets.getAvailableQuantity() %></td>
               <td><%=assets.getTotalQuantity() %></td>
               
               <td>
               <form action="./GetLowStock" method="post">
               <input type="hidden" name="assetID" value="<%=assets.getAssetID() %>">
               <input type="submit" class="btn btn-success" value="Order">
               </form>
               </td>
            </tr>
            <%} %>
        

      </tbody>

</table>
</div>


</div>
</div>

</body>
</html>