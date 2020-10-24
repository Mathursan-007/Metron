<%@page import="java.util.ArrayList"%>
<%@ page import="com.service.IInventory" %>  
<%@ page import="com.service.InventoryImpl"%>   
<%@ page import="com.model.Inventory" %>  

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" name="viewport" content="width=device-width, initial-scale=1">
<title>New Stocks</title>

<link rel="stylesheet" href="styles/dash.css" />
<script src="https://kit.fontawesome.com/yourcode.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

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
    width: 100%;
    height:40px;
  	overflow: auto;    
                
}


</style>
</head>
<body class="bt">


<section></section>


<div class = "card-container">
<div class = "upper-container">

		<a href="AddAssets.jsp" class="button"><button class="btn btn-success" style="margin-top:10px;">Add New Asset</button></a>
			<a href="InventoryPDF.jsp" class="button"><button class="btn btn-info" style="margin-top:10px;">Print Report</button></a>
		
		
		<div class="input-container">
		<i class="fa fa-search icon"></i>
		<input class="input-field" type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
		</div>


</div>

<div class = "lower-container tbs">

<div class = "row justify-content-center">



<h2>List of Assets</h2>


<table class = "table">
<thead>
<tr>
<th>Asset ID</th>
<th>Asset Name</th>
<th>Safety Stock Level</th>
<th>Available Stock</th>
<th>Total Received Stock</th>
<th></th>
<th>Action</th>
<th></th>
</tr>

</thead>
<tbody id="myTable">

	          <%
              IInventory inventory = new InventoryImpl();
              ArrayList<Inventory> Inventories=new ArrayList<>();
              
              Inventories = inventory.listInventories();
             
             for(Inventory assets:Inventories){ %>
            <tr>
               <td><%=assets.getAssetID() %> </td> 
               
               <td><%=assets.getAssetName() %></td> 
              
               <td><%=assets.getMinQuantity() %></td>
               <td><%=assets.getAvailableQuantity() %></td>
               <td><%=assets.getTotalQuantity() %></td>
               <td>
               
               <form action="./GetIssue" method="post">
               <input type="hidden" name="assetID" value="<%=assets.getAssetID() %>">
               <input type="submit" class="btn btn-info" value="Issue">
               </form>
               </td>
               <td>
			   <form action="./GetAsset" method="post">
			   <input type="hidden" name="assetID" value="<%=assets.getAssetID() %>">
			   <input type="submit" class="btn btn-primary"  value="Edit">
			   </form>
			   </td>
			   <td>
			   <form action="./DeleteAsset" method="post">
               <input type="hidden" name="assetID" value="<%=assets.getAssetID() %>">
               <input type="submit" class="btn btn-danger" value="Delete">
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