<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.model.Supplier" %> 
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" type="text/css" href="styles/Utility.css" />

<title>Edit Supplier</title>
</head>
<body style = background:url(vv.jpg);>


<% Supplier suppliers =(Supplier)request.getAttribute("supplier");%>
<%if(suppliers!=null) { %>
  		<form method="post" action="./UpdateSupplier"   >
  				

  <div class = "expense">

  <div class="form-group">
 
  <h2>Edit Supplier</h2>
 
      <label for="Supplier_ID">Supplier_ID : </label>
      <input type="text" class="form-control" id="SupplierID" placeholder="Supplier_ID" name="Supplier_ID" value="<%=suppliers.getSupplier_ID() %>" required>
      <br><br><br>
      <label for="Name"> Name : </label>
      <input type="text" class="form-control" id="Name" placeholder="Name" name="Name" value="<%=suppliers.getName() %>" required>
      <br><br><br>
      <label for="Type"> Type : </label>
      <input type="text" class="form-control" id="Type" placeholder="Type" name="Type" value="<%=suppliers.getType() %>" required>
      <br><br><br>
      <label for="Contact_No"> Contact_No : </label>
      <input type="number" class="form-control" id="Contact_No" placeholder="07xxxxxxxx" pattern="[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]" name="Contact_No" value="<%=suppliers.getContact_No() %>" required>
      <br><br><br>
       <label for="Email"> Email : </label>
      <input type="text" class="form-control" id="Email" placeholder="abc@gmail.com" name="Email" value="<%=suppliers.getEmail() %>" required>
      <br><br><br>
       <label for="Address"> Address : </label>
      <input type="text" class="form-control" id="Address" placeholder="Address" name="Address" value="<%=suppliers.getAddress() %>" required>
      <br><br><br>
     
            <input type="Submit" value="SAVE" class="button">
    </div>
    </div>
       

  </form>
 
<% } %>
</body>
</html>