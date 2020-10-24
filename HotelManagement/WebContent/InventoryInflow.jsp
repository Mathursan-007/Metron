<%@page import="java.util.ArrayList"%>
<%@ page import="com.service.IInventory" %>  
<%@ page import="com.service.InventoryImpl"%>   
<%@ page import="com.model.InventoryPurchase" %>  

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Issued Details</title>

<link rel="stylesheet" href="styles/dash.css" />
<script src="https://kit.fontawesome.com/yourcode.js"></script>

<script>
$(document).ready(function(){
  $("#myInput6").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable6 tr").filter(function() {
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

		<div class="input-containerIssue">
		<i class="fa fa-search icon"></i>
		<input class="input-field" type="text" id="myInput6" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
		</div>

</div>

<div class = "lower-container tbs">

<div class = "row justify-content-center">



<h2>Inflows</h2>

<table class = "table">
<thead>
<tr>
<th>GoodRecNo</th>
<th>Asset ID</th>
<th>Asset Name</th>
<th>Quantity</th>
<th>SupplierID</th>
<th>Date</th>
<th>Action></th>
</tr>
</thead>

<tbody id="myTable6">

	          <%
              IInventory inflowInventoryImpl = new InventoryImpl();
              ArrayList<InventoryPurchase> inflowInventory=new ArrayList<>();
              
              inflowInventory = inflowInventoryImpl.Inflows();
             
             for(InventoryPurchase assets:inflowInventory){ %>
            <tr>
                <td><%=assets.getID() %> </td> 
                        
               <td><%=assets.getAssetID() %> </td> 
               
               <td><%=assets.getAssetName() %></td> 
              
               <td><%=assets.getQuantity() %></td>               
               
               <td><%=assets.getSupplierID() %></td>
                      
               <td><%=assets.getDate() %></td>    
               
               <td>
               <form action="./DeleteInflow" method="post">
               <input type="hidden" name="goodRecNo" value="<%=assets.getID() %>">
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