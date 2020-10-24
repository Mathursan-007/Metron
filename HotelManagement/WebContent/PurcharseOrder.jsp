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
  $("#myInput4").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable4 tr").filter(function() {
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
		<input class="input-field" type="text" id="myInput4" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
		</div>

</div>

<div class = "lower-container tbs">

<div class = "row justify-content-center">



<h2>Purchase Order</h2>

<table class = "table">
<thead>
<tr>
<th>PurchaseID</th>
<th>ReqNo</th>
<th>Asset ID</th>
<th>Asset Name</th>
<th>Quantity</th>
<th>Amount</th>
<th>SupplierID</th>
<th>Date</th>
<th>Status</th>
<th>Action</th>
<th></th>

</tr>
</thead>

<tbody id="myTable4">

	          <%
              IInventory purchaseInventoryImpl = new InventoryImpl();
              ArrayList<InventoryPurchase> purchaseInventory=new ArrayList<>();
              
              purchaseInventory = purchaseInventoryImpl.purchaseDetails();
             
             for(InventoryPurchase assets:purchaseInventory){ %>
            <tr>
                <td><%=assets.getID() %> </td> 
            
               <td><%=assets.getReqNo() %> </td> 
            
               <td><%=assets.getAssetID() %> </td> 
               
               <td><%=assets.getAssetName() %></td> 
              
               <td><%=assets.getQuantity() %></td>
               
               <td><%=assets.getAmount() %> </td> 
               
               
               <td><%=assets.getSupplierID() %></td>
                      
               <td><%=assets.getDate() %></td>
               
               <td><%=assets.getStatus() %> </td> 
                
                           
               <td>
               <form action="./UpdateStatus" method="post">
               
               <input type="hidden" name="purchaseID" value="<%=assets.getID() %>">
               <button class="btnConfirm"><i class="fa fa-check"></i></button>
               </form>
               </td>
               
               <td>
               <form action="./DeletePurchase" method="post">
               
               <input type="hidden" name="purchaseID" value="<%=assets.getID() %>">
               <button class="btnCancel"><i class="fa fa-times"></i></button>
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