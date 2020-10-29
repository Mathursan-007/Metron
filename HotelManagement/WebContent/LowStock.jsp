<%@page import="java.util.ArrayList"%>
<%@ page import="com.service.IInventory" %>  
<%@ page import="com.service.InventoryImpl"%>   
<%@ page import="com.model.Inventory" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Low Stocks</title>

<link rel="stylesheet" href="styles/dash.css" />
<script src="https://kit.fontawesome.com/yourcode.js"></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script>
$(document).ready(function(){
  $("#myInput3").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable3 tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>

<style>
.tbs{
    width: 100%;
    height:525px;
  	overflow: auto;    
                
}
</style>
</head>
<body class="bt">


<section></section>


<div class = "card-container">
<div class = "upper-container">

		<button class="btn btn-success" id="myBtn" style="margin-top:10px;">Request Order</button></a>
		
				<div class="input-container">
		<i class="fa fa-search icon"></i>
		<input class="input-field" type="text" id="myInput3" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
		</div>


</div>

<div class = "lower-container tbs">

<div class = "row justify-content-center">



<h2>Low Stocks</h2>

<table class = "table">
<thead>
<tr>
<th>Asset ID</th>
<th>Asset Name</th>
<th>Minimum Quantity</th>
<th>Available Quantity</th>
<th>Total Quantity</th>
<th>Status</th>
<th>Action</th>
</tr>
</thead>

<tbody id="myTable3">

	          <%
              IInventory inventoryImpl = new InventoryImpl();
	          
              ArrayList<Inventory> lowStocks=new ArrayList<>();
              
              lowStocks = inventoryImpl.listLowInventories();
             
             for(Inventory assets:lowStocks){ %>
            <tr>
               <td><%=assets.getAssetID() %> </td> 
               
               <td><%=assets.getAssetName() %></td> 
              
               <td><%=assets.getMinQuantity() %></td>
               <td><%=assets.getAvailableQuantity() %></td>
               <td><%=assets.getTotalQuantity() %></td>
               <td><%=assets.getStatus() %></td> 
               
               
               <td>
               <form action="./GetLowStock" method="post">
               <input type="hidden" name="assetID" value="<%=assets.getAssetID() %>">
               <input type="submit" class="btn btn-success" value="Order">
               </form>
               </td>
            </tr>
            <%} %>       
      </tbody>

</table>
</div>
</div>
</div>

<div id="myModal" class="modal" id="myForm">

    <div class="container">
        <div class="row justify justify-content-center">
            <div class="col-11 col-md-8 col-lg-6 col-xl-5">
            

  				<form method="post" action="./AddInventoryRequest" >
  				
			<div class="card bg-dark">
                        <div class="row mt-0">
                            <div class="col-md-12 ">
                            
                            
                            <h4 style="color:white;text-align:center;">Request Order</h4>
                            
                                  </div>
                        </div>
                        
                        
                        <div class="form-group row">
                            <div class="col-md-12 mb-2">
                            <label for="AssetID"> Asset ID : </label>
     		 	<input type="text" class="form-control input-box rm-border" id="assetID" placeholder="Asset ID" pattern="[R/E/S][M/E/P/V][0-9][0-9][0-9][0-9]" name="assetID" required>
     		 	 </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12 mb-2">
                            <label for="AssetName"> Asset Name : </label>
     		 	<input type="text" class="form-control input-box rm-border" id="assetName" placeholder="Asset Name" name="assetName" required>
     		 	
     		 	         </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12 mb-2">
                            <label for="Quantity"> Quantity : </label>
     		 	<input type="number" class="form-control input-box rm-border" id="quantity" placeholder="0" name="quantity" required>
     		 	
     		 	   </div>
                        </div>
                        <div class="form-group row justify-content-center mb-0">
                          <div class="col-md-12 px-3">
                          <input type="submit" value="Submit" class="btn btn-block btn-purple rm-border">
                           <input type="button" value="Cancel" onclick="closeForm()" class="btn btn-block btn-purple rm-border"> 
                           </div>
                        </div>
                    </div>
                
                </form>
            </div>
        </div>
</div>

</div>

<script>

// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal


// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

function closeForm() {
	  document.getElementById("myModal").style.display = "none";
	}
	
</script>
     		 	
</body>
</html>