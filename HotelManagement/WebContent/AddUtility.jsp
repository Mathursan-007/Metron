<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" type="text/css" href="styles/Utility.css" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Add Expense</title>
</head>
<body>


  <form action="./AddUtility" method="post">
 
  <div class = "expense">

  <div class="form-group">
 
  <h2>Add Utility</h2>
 
      <label for="paymentID">Payment_ID : </label>
      <input type="number" class="form-control" id="paymentID" placeholder="Payment_ID" name="paymentID"  required>
      <br><br><br>
      <label for="description"> Category : </label>
      <select class="form-control" input type="text" name="category" id="category" placeholder="Category" required>
      						<option value="">--Choose a Utility Expense--</option>
						    <option value="Water Bill">Water Bill</option>
						    <option value="Electricity Bill">Electricity Bill</option>
						    <option value="Gas Bill">Gas Bill</option>
						    <option value="Internet Bill">Internet Bill</option>
						    <option value="Water & Sewage">Water & Sewage</option>
						    <option value="Rental">Rental</option>
						</select>
      <br><br><br>
      <label for="amount"> Amount : </label>
      <input type="text" class="form-control" id="amount" placeholder="0" name="amount" required>
      <br><br><br>
      <label for="Date"> Date : </label>
      <input type="date" class="form-control" id="Date" placeholder="dd//mm/yyyy" name="Date" required>
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