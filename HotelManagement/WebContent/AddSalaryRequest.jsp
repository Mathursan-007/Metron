<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" type="text/css" href="styles/Utility.css" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Add Salary</title>
</head>
<body>


  <form action="./AddSalaryRequest" method="post">
 
  <div class = "expense">

  <div class="form-group">
 
  <h2>Add Salary</h2>
 

      <label for="Employee_ID">Employee_ID : </label>
      <input type="number" class="form-control" id="Employee_ID" name="Employee_ID" required>
      <br><br><br>
      <label for="Total_Salary"> Total_Salary : </label>
      <input type="text" class="form-control" id="Total_Salary" name="Total_Salary" required>
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
