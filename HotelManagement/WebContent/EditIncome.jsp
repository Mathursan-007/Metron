<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page import="com.model.Income" %> 
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" type="text/css" href="styles/Utility.css" />

<title>Edit Income</title>
</head>
<body>


<% Income incomes =(Income)request.getAttribute("income");%>
<%if(incomes!=null) { %>
  		<form method="post" action="./UpdateIncome"   >
  				

  <div class = "expense">

  <div class="form-group">
 
  <h2>Edit Income</h2>
 
      <label for="Income_ID">Income_ID : </label>
      <input type="number" class="form-control" id="Income_ID" name="Income_ID" value="<%=incomes.getIncome_ID() %>" readonly="readonly" required>
      <br><br><br>
      <label for="Payment_ID">Payment_ID : </label>
      <input type="number" class="form-control" id="Payment_ID" name="Payment_ID" value="<%=incomes.getPayment_ID() %>" readonly="readonly" required>
      <br><br><br>
      <label for="Category"> Category : </label>
      <select class="form-control" input type="text" name="Category" id="Category"  required>
      						<option value="<%=incomes.getCategory() %>"> <%=incomes.getCategory() %> </option>
						    <option value="Room">Room</option>
						    <option value="Extra Service">Extra Service</option>
						    <option value="Transport">Transport</option>
						    <option value="Event Management">Event Management</option>
						    <option value="Restaurant">Restaurant</option>
						</select>
      <br><br><br>
      <label for="amount"> Amount : </label>
      <input type="text" class="form-control" id="amount" placeholder="0" name="Amount" value="<%=incomes.getAmount() %>" required>
      <br><br><br>
      <label for="Date"> Date : </label>
      <input type="date" class="form-control" id="Date" placeholder="dd//mm/yyyy" name="Date" value="<%=incomes.getDate() %>" required>
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
