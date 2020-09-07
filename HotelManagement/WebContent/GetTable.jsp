<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Table" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TableInfo</title>
</head>
<body>
  <%Table table=(Table)request.getAttribute("table"); %>
  
     <form action="./UpdateTable" method="post">
     Table Number:<input type="text" name="tableno" value="<%=table.getTableno()%>" readonly>
	 Type:
      <select name="type">
          <option value="<%=table.getType()%>" selected><%=table.getType()%></option>
          <option value="Casual">Casual</option>
          <option value="Booth">Booth</option>
          <option value="Family">Family</option>
          <option value="Outdoor">Outdoor</option> 
      </select>
      Capacity:<input type="text" name="capacity" value="<%=table.getCapacity() %>">
      Price:<input type="text" name="price" value=<%=table.getPrice() %>>  
      <input type="submit" value="Add">
    </form> 
  

</body>
</html>