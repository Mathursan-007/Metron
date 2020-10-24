<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page import="com.model.Expense" %> 
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" type="text/css" href="styles/Utility.css" />

<title>Edit Expense</title>
</head>
<body>


<% Expense expens =(Expense)request.getAttribute("expense");%>
<%if(expens!=null) { %>
  		<form method="post" action="./UpdateExpense"   >
  				

  <div class = "expense">

  <div class="form-group">
 
  <h2>Edit Expense</h2>
 
      <label for="expenseID">Expense_ID : </label>
      <input type="text" class="form-control" id="expenseID" name="Expense_ID" value="<%=expens.getExpense_ID() %>" readonly="readonly" required>
      <br><br><br>
      <label for="Payment_ID">Payment_ID : </label>
      <input type="number" class="form-control" id="Payment_ID" name="Payment_ID" value="<%=expens.getPayment_ID() %>" readonly="readonly" required>
      <br><br><br>
      <label for="Category"> Category : </label>
      <select class="form-control" input type="text" name="Category" id="Category"  required>
      						<option value="<%=expens.getCategory() %>"> <%=expens.getCategory() %> </option>					    
      						<option value="Stock">Stock</option>
      						<option value="Salary">Salary</option>
						    <option value="Miscellaneous">Miscellaneous</option>
						    <option value="Water Bill">Water Bill</option>
						    <option value="Electricity Bill">Electricity Bill</option>
						    <option value="Gas Bill">Gas Bill</option>
						    <option value="Internet Bill">Internet Bill</option>
						    <option value="Water & Sewage">Water & Sewage</option>
						    <option value="Rental">Rental</option>				    
						</select>
      <br><br><br>
      <label for="amount"> Amount : </label>
      <input type="text" class="form-control" id="amount" placeholder="0" name="Amount" value="<%=expens.getAmount() %>" required>
      <br><br><br>
      <label for="Date"> Date : </label>
      <input type="date" class="form-control" id="Date" placeholder="dd//mm/yyyy" name="Date" value="<%=expens.getDate() %>" required>
      <br><br><br>
      
      		 <div class = "bck">
             <button onclick="goBack()">Back</button>
             
             
             
             <script>
				function goBack() {
  				window.history.back();
				}
			</script>
             
			 </div>  
     
            <input type="Submit" value="SAVE" class="button">
    </div>
    </div>
       

  </form>
 
<% } %>
</body>
</html>
