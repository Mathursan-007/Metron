<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Item" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Item</title>
</head>
<body>
<%Item item =(Item)request.getAttribute("item"); %>
  
     <form action="./UpdateItem" method="post">
     
	      Item Number:<input type="text" name="itemno" value="<%=item.getItemno()%>" >
	      Name:<input  type="text" name="name" value="<%=item.getName()%>"> 
	      Category:<input type="text" name="category" value="<%=(String)item.getCategory() %>">
	      Price:<input type="text" name="price" value="<%=item.getPrice()%>">  
	      
	      <input type="submit" value="Update">
    </form> 


</body>
</html>