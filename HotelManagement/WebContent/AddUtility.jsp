<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" type="text/css" href="styles/Utility.css" />

<title>Add Expense</title>
</head>
<body style = background:url(vv.jpg);>


  <form action="./AddUtility" method="post">
 
  <div class = "expense">

  <div class="form-group">
 
  <h2>Add Expense</h2>
 
      <label for="paymentID">Payment_ID : </label>
      <input type="number" class="form-control" id="paymentID" placeholder="Payment_ID" name="paymentID"  required>
      <br><br><br>
      <label for="description"> Description : </label>
      <input type="text" class="form-control" id="description" placeholder="Description" name="description" required>
      <br><br><br>
      <label for="amount"> Amount : </label>
      <input type="number" class="form-control" id="amount" placeholder="0" name="amount" required>
      <br><br><br>
      <label for="Date"> Date : </label>
      <input type="date" class="form-control" id="Date" placeholder="dd//mm/yyyy" name="Date" required>
      <br><br><br>
     
            
            <input type="Submit" value="ADD" class="button">
    </div>
    </div>
       

  </form>
 

</body>
</html>
