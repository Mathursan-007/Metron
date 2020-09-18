<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page import="com.model.Utility" %> 
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" type="text/css" href="styles/Utility.css" />

<title>Edit Expense</title>
</head>
<body style = background:url(vv.jpg);>


<% Utility utilitys =(Utility)request.getAttribute("utility");%>
<%if(utilitys!=null) { %>
  		<form method="post" action="./UpdateUtility"   >
  				

  <div class = "expense">

  <div class="form-group">
 
  <h2>Edit Expense</h2>
 
      <label for="paymentID">Payment_ID : </label>
      <input type="number" class="form-control" id="paymentID" placeholder="Payment_ID" name="paymentID" value="<%=utilitys.getPayment_ID() %>" required>
      <br><br><br>
      <label for="description"> Description : </label>
      <input type="text" class="form-control" id="description" placeholder="Description" name="description" value="<%=utilitys.getDescription() %>" required>
      <br><br><br>
      <label for="amount"> Amount : </label>
      <input type="number" class="form-control" id="amount" placeholder="0" name="amount" value="<%=utilitys.getAmount() %>" required>
      <br><br><br>
      <label for="Date"> Date : </label>
      <input type="date" class="form-control" id="Date" placeholder="dd//mm/yyyy" name="Date" value="<%=utilitys.getDate() %>" required>
      <br><br><br>
     
            <input type="Submit" value="SAVE" class="button">
    </div>
    </div>
       

  </form>
 
<% } %>
</body>
</html>
