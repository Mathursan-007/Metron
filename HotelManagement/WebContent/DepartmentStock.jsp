<%@page import="java.util.ArrayList"%>
<%@ page import="com.service.IInventory" %>  
<%@ page import="com.service.InventoryImpl"%>   
<%@ page import="com.model.DepInventory" %>  

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Department Stocks</title>

<link rel="stylesheet" href="styles/dash.css" />
<script src="https://kit.fontawesome.com/yourcode.js"></script>

<script>
$(document).ready(function(){
  $("#myInput2").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable2 tr").filter(function() {
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

		<a href="AddDepAssets.jsp" class="button"><button class="btn btn-success" style="margin-top:10px;">Add New Asset</button></a>
		
		<div class="input-container">
		<i class="fa fa-search icon"></i>
		<input class="input-field" type="text" id="myInput2" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
		</div>
	

</div>

<div class = "lower-container tbs">

<div class = "row justify-content-center">



<h2>Department Inventories</h2>

<table class = "table">
<thead>
<tr>
<th>Dep Asset ID</th>
<th>Asset Name</th>
<th>Category</th>
<th>Quantity</th>
<th> Action</th>
<th></th>
</tr>
</thead>
<tbody id="myTable2">

	          <%
              IInventory depInventoryImpl = new InventoryImpl();
              ArrayList<DepInventory> depInventories=new ArrayList<>();
              
              depInventories = depInventoryImpl.listDepInventories();
             
             for(DepInventory assets:depInventories){ %>
            <tr>
               <td><%=assets.getDepAssetID() %> </td> 
               
               <td><%=assets.getAssetName() %></td> 
              
               <td><%=assets.getCategory() %></td>
               <td><%=assets.getQuantity() %></td>
               
               <td>
			   <form action="./GetDepInventory" method="post">
			   <input type="hidden" name="assetID" value="<%=assets.getDepAssetID() %>">
			   <input type="submit" class="btn btn-primary"  value="Edit">
			   </form>
			   </td>
			   <td>
			   <form action="./DeleteDepInventory" method="post">
               <input type="hidden" name="assetID" value="<%=assets.getDepAssetID() %>">
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