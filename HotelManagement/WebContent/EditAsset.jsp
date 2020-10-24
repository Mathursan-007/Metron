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
     		 	<input type="text" class="form-control" id="assetID" placeholder="Asset ID" name="assetID" value="<%=inventory.getAssetID()%>" readonly="readonly" required>
     		 	<br><br><br>
     		 	<label for="AssetName"> Asset Name : </label>
     		 	<input type="text" class="form-control" id="assetName" placeholder="Asset Name" name="assetName" value="<%= inventory.getAssetName() %>" readonly="readonly" required>
     		 	<br><br><br>
     		 	<label for="MinQuantity"> Safety Stock Level : </label>
     		 	<input type="number" class="form-control" id="minQuantity" placeholder="0" name="minQuantity" value="<%= inventory.getMinQuantity() %>" required>
     		 	<br><br><br>
     		 	<label for="AvailableQuantity"> Available Stock : </label>
     		 	<input type="number" class="form-control" id="availableQuantity" placeholder="0" name="availableQuantity" value="<%= inventory.getAvailableQuantity() %>" required>
     		 	<br><br><br>
     		 	<label for="TotalQuantity"> Total Received Stock : </label>
     		 	<input type="number" class="form-control" id="totalQuantity" placeholder="0" name="totalQuantity" value="<%= inventory.getTotalQuantity() %>" required>
     		 	
     		 	    		<br><br>
            <input type="submit" value="Submit" class="button">
    		</div>
    	 </div>
    	    

  					</form>
  		

</body>
</html>