<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="styles/inventoryForm.css">
<title>Add Asset</title>
</head>
<body>


  				<form method="post" action="./AddInventory" >
  				
  		<div class = "asset">
					
  			<div class="form-group">
  			
  					<h2>Add New Asset</h2>
  			
      			<label for="AssetID"> Asset ID : </label>
     		 	<input type="text" class="form-control" id="assetID" placeholder="Asset ID" pattern="[A-Z][A-Z][0-9][0-9][0-9][0-9]" name="assetID" required>
     		 	<br><br><br>
     		 	<label for="AssetName"> Asset Name : </label>
     		 	<input type="text" class="form-control" id="assetName" placeholder="Asset Name" name="assetName" required>
     		 	<br><br><br>
     		 	<label for="MinQuantity"> Minimum Quantity : </label>
     		 	<input type="number" class="form-control" id="minQuantity" placeholder="0" name="minQuantity" required>
     		 	<br><br><br>
     		 	<label for="AvailableQuantity"> Available Quantity : </label>
     		 	<input type="number" class="form-control" id="availableQuantity" placeholder="0" name="availableQuantity" required>
     		 	<br><br><br>
     		 	<label for="TotalQuantity"> Total Quantity : </label>
     		 	<input type="number" class="form-control" id="totalQuantity" placeholder="0" name="totalQuantity" required>
     		 	
     		 	    		<br><br>
            <input type="submit" value="Submit" class="button">
    		</div>
    	 </div>
    	    

  					</form>
  		

</body>
</html>