<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" type="text/css" href="styles/Utility.css" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Add Income</title>
</head>
<body>


  <form action="./AddIncome" method="post">
 
  <div class = "expense">

  <div class="form-group">
 
  <h2>Add Income</h2>
 
      
      <label for="Payment_ID">Payment_ID : </label>
      <input type="number" class="form-control" id="Payment_ID" name="Payment_ID" required>
      <br><br><br>
      <label for="Category"> Category : </label>
      <select class="form-control" input type="text" name="Category" id="Category"  required>
      						<option value="">--Choose a department--</option>
						    <option value="Room">Room</option>
						    <option value="Extra Service">Extra Service </option>
						    <option value="Transport">Transport </option>
						    <option value="Event Management">Event Management </option>
						    <option value="Restaurant">Restaurant</option>
						</select>
      <br><br><br>
      <label for="Amount"> Amount : </label>
      <input type="text" class="form-control" id="Amount" placeholder="0" name="Amount" required>
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
