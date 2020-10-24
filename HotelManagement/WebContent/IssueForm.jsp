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

  				<form method="post" action="./AddIssueDetails" >
  				
  		<div class = "asset">
					
  			<div class="form-group">
  			
  					<h2>Issue Asset</h2>
  			
      			<label for="AssetID"> Asset ID : </label>
     		 	<input type="text" class="form-control" id="assetID" placeholder="Asset ID" name="assetID" value="<%=inventory.getAssetID()%>" readonly="readonly" required>
     		 	<br><br><br>
     		 	<label for="AssetName"> Asset Name : </label>
     		 	<input type="text" class="form-control" id="assetName" placeholder="Asset Name" name="assetName" value="<%= inventory.getAssetName() %>" readonly="readonly" required>
     		 	<br><br><br>
     		 	<label for="Quantity"> Quantity : </label>
     		 	<input type="number" class="form-control" id="quantity" placeholder="0" name="quantity" required>
     		 	<br><br><br>
     		 	<label for="DepAssetID"> Department Asset ID : </label>
     		 	<input type="text" class="form-control" id="depAssetID" placeholder="Department Asset ID" pattern="[R/E/S][M/E/P/V][5-9][0-9][0-9][0-9]" name="depAssetID" required>
     		 	
     		 	
     		 	    		<br><br>
            <input type="submit" value="Submit" class="button">
    		</div>
    	 </div>
    	    

  					</form>
  		

</body>
</html>