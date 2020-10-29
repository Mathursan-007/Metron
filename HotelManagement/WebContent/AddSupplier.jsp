<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" type="text/css" href="styles/Utility.css" />

<title>Add Supplier</title>
</head>
<body>


  <form action="./AddSupplier" method="post">
 
  <div class = "expense">

  <div class="form-group">
 
  <h2>Add Suppliers</h2>
 
      <label for="Supplier_ID">Supplier_ID : </label>
      <input type="text" class="form-control" id="Supplier_ID" placeholder="Supplier_ID" name="Supplier_ID"  required>
      <br><br><br>
      <label for="Name"> Name : </label>
      <input type="text" class="form-control" id="Name" placeholder="Name" name="Name" required>
      <br><br><br>
      <label for="Type"> Type : </label>
      <input type="text" class="form-control" id="Type" placeholder="Type" name="Type" required>
      <br><br><br>
      <label for="Contact_No"> Contact_No : </label>
      <input type="number" class="form-control" id="Contact_No" placeholder="07xxxxxxxx" name="Contact_No" pattern="[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]" required>
      <br><br><br>
      <label for="Email"> Email : </label>
      <input type="text" class="form-control" id="Email" placeholder="abc@gmail.com" name="Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>
      <br><br><br>
      <label for="Address"> Address : </label>
      <input type="text" class="form-control" id="Address" placeholder="Address" name="Address" required>
      <br><br><br>
      
      <div class = "bck">
             <button onclick="goBack()">Back</button>
             
             
             
             <script>
				function goBack() {
  				window.history.back();
				}
			</script>
             
			 </div>  
     
            
            <input type="Submit" value="ADD" class="button">
    </div>
    </div>
       

  </form>
 

</body>
</html>
