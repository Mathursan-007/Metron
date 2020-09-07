<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     <form action="./AddTable" method="post">
      
      Type:
      <select name="type">
          <option value="Casual">Casual</option>
          <option value="Booth">Booth</option>
          <option value="Family">Family</option>
          <option value="Outdoor">Outdoor</option> 
      </select>
      Capacity:<input type="text" name="capacity">
      Price:<input type="text" name="price">  
      
      <input type="submit" value="Add">
    </form> 

</body>
</html>