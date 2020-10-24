<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
    <%@ page import="com.model.PurchaseOrder" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" type="text/css" href="styles/Utility.css" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Add Purchase Order</title>
</head>
<body>

<% PurchaseOrder orders =(PurchaseOrder)request.getAttribute("order");%>
<%if(orders!=null) { %>

  <form action="./AddPurchaseOrder" method="post">
 
  <div class = "expense">

  <div class="form-group">
 
  <h2>Add Purchase Order</h2>
 
      <label for="Request_No">Request_No : </label>
      <input type="number" class="form-control" id="Request_No" name="Request_No" value="<%=orders.getRequest_No() %>" readonly="readonly" required>
      <br><br><br>
      
      <label for="Asset_ID">Asset_ID : </label>
      <input type="text" class="form-control" id="Asset_ID" name="Asset_ID" value="<%=orders.getAsset_ID() %>" readonly="readonly" required>
      <br><br><br>
      
      <label for="Asset_Name"> Asset_Name : </label>
      <input type="text" class="form-control" id="Asset_Name" name="Asset_Name" value="<%=orders.getAsset_Name() %>" readonly="readonly" required>
      <br><br><br>
      
      <label for="Quantity"> Quantity : </label>
      <input type="number" class="form-control" id="Quantity" name="Quantity" value="<%=orders.getQuantity() %>" readonly="readonly" required>
      <br><br><br>      
      
      <label for="Amount"> Amount : </label>
      <input type="text" class="form-control" id="Amount" name="Amount" placeholder="0" required>
      <br><br><br>
      
      <label for="Supplier_ID"> Supplier_ID : </label>
      <input type="text" class="form-control" id="Supplier_ID" name="Supplier_ID"  required>
      <br><br><br>
      
       		 <div class = "bck">
             <button onclick="goBack()">Back</button>
             
             
             
             <script>
				function goBack() {
  				window.history.back();
				}
			</script>
             
			 </div>  
            <input type="Submit" value="SAVE" class="button">
    </div>
    </div>
       

  </form>
 
 <% } %>

</body>
</html>