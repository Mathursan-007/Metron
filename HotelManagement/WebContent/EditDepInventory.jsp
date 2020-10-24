<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.model.DepInventory" %> 
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<link rel="stylesheet" href="styles/inventoryForm.css">

<title>Edit Form</title>
</head>
<body>


	<% DepInventory inventory =(DepInventory)request.getAttribute("inventory");%>
  		<form method="post" action="./UpdateDepInventory"   >
  				
  		<div class = "asset">
					
  			<div class="form-group">
  			
  					<h2>Edit Asset</h2>
  			
      			<label for="AssetID"> Asset ID : </label>
     		 	<input type="text" class="form-control" id="assetID" placeholder="Asset ID" name="assetID" value="<%=inventory.getDepAssetID()%>" readonly="readonly" required>
     		 	<br><br><br>
     		 	<label for="AssetName"> Asset Name : </label>
     		 	<input type="text" class="form-control" id="assetName" placeholder="Asset Name" name="assetName" value="<%= inventory.getAssetName() %>" readonly="readonly" required>
     		 	<br><br><br>
     		 	<label for="Category"> Category : </label>
     		 	<input type="text" class="form-control" id="category" placeholder="0" name="category" value="<%= inventory.getCategory() %>" required>
     		 	<br><br><br>
     		 	<label for="Quantity"> Available Quantity : </label>
     		 	<input type="number" class="form-control" id="quantity" placeholder="0" name="quantity" value="<%= inventory.getQuantity() %>" required>
     		 	
     		 	    		<br><br>
            <input type="submit"  class="btn btn-success" value="Update">
    		</div>
    	 </div>
    	    

  					</form>
  		

</body>
</html>