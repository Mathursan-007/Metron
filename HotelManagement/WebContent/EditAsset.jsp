<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.model.Inventory" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="styles/inventoryForm.css">
<title>Edit Asset</title>
</head>
<body>


	<% Inventory inventory =(Inventory)request.getAttribute("inventory");%>
  		<form method="post" action="./UpdateAsset"   >
  				
  		<div class = "asset">
					
  			<div class="form-group">
  			
  					<h2>Edit Asset</h2>
  			
      			<label for="AssetID"> Asset ID : </label>
     		 	<input type="text" class="form-control" id="assetID" placeholder="Asset ID" name="assetID" value="<%=inventory.getAssetID()%>">
     		 	<br><br><br>
     		 	<label for="AssetName"> Asset Name : </label>
     		 	<input type="text" class="form-control" id="assetName" placeholder="Asset Name" name="assetName" value="<%= inventory.getAssetName() %>">
     		 	<br><br><br>
     		 	<label for="MinQuantity"> Minimum Quantity : </label>
     		 	<input type="text" class="form-control" id="minQuantity" placeholder="0" name="minQuantity" value="<%= inventory.getMinQuantity() %>">
     		 	<br><br><br>
     		 	<label for="AvailableQuantity"> Available Quantity : </label>
     		 	<input type="text" class="form-control" id="availableQuantity" placeholder="0" name="availableQuantity" value="<%= inventory.getAvailableQuantity() %>">
     		 	<br><br><br>
     		 	<label for="TotalQuantity"> Total Quantity : </label>
     		 	<input type="text" class="form-control" id="totalQuantity" placeholder="0" name="totalQuantity" value="<%= inventory.getTotalQuantity() %>">
     		 	
     		 	    		<br><br>
            <input type="submit" value="Submit" class="button">
    		</div>
    	 </div>
    	    

  					</form>
  		

</body>
</html>