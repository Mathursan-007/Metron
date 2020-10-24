<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Inventory" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="styles/inventoryForm.css">
<title>Add Asset</title>
</head>
<body>
<% Inventory inventory =(Inventory)request.getAttribute("inventory");%>

  				<form method="post" action="./AddInventoryRequest" >
  				
  		<div class = "asset">
					
  			<div class="form-group">
  			
  					<h2>Request Order</h2>
  			
      			<label for="AssetID"> Asset ID : </label>
     		 	<input type="text" class="form-control" id="assetID" placeholder="Asset ID" name="assetID" value="<%=inventory.getAssetID()%>" readonly="readonly" required>
     		 	<br><br><br>
     		 	<label for="AssetName"> Asset Name : </label>
     		 	<input type="text" class="form-control" id="assetName" placeholder="Asset Name" name="assetName" value="<%= inventory.getAssetName() %>" readonly="readonly" required>
     		 	<br><br><br>
     		 	<label for="Quantity"> Quantity : </label>
     		 	<input type="number" class="form-control" id="quantity" placeholder="0" name="quantity" required>
     		 	<br><br><br>
     		 	
     		 	    		<br><br>
            <input type="submit" value="Submit" class="button">
    		</div>
    	 </div>
    	    

  					</form>
  		

</body>
</html>