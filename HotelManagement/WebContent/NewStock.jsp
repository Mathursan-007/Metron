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
<title>My Profile</title>

<link rel="stylesheet" href="styles/dash.css" />
<script src="https://kit.fontawesome.com/yourcode.js"></script>

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

		<a href="AddAssets.jsp" class="button"><button>Add New Asset</button></a>


</div>

<div class = "lower-container tbs">

<div class = "row justify-content-center">



<h2>List of Assets</h2>

<table class = "table">
<thead>
<tr>
<th>Asset ID</th>
<th>Asset Name</th>
<th>Minimum Quantity</th>
<th>Available Quantity</th>
<th>Total Quantity</th>
<th></th>
<th>Action</th>
<th></th>
</tr>
</thead>

<tbody>

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
               
               <input type="submit" value="Issue">
               </td>
               <td>
			   <form action="./GetAsset" method="post">
			   <input type="hidden" name="assetID" value="<%=assets.getAssetID() %>">
			   <input type="submit" class="btn-btn-primary"  value="Edit">
			   </form>
			   </td>
			   <td>
			   <form action="./DeleteAsset" method="post">
               <input type="hidden" name="assetID" value="<%=assets.getAssetID() %>">
               <input type="submit" value="Delete">
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