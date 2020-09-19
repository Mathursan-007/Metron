<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Venues</title>
</head>
<body>

<form action="./AddVenue" method="post">
      Venue ID:<input type="text" name="venueid"> 
      Venue Type:<input  type="text" name="venuetype">
      Price:<input type="text" name="price">
      Capacity:<input type="text" name="capacity">
      Availability:<input type="text" name="avail"> 
      E_ReserveID:<input type="text" name="rid">
      
      <input type="submit" value="Add Venue">
    </form> 


</body>
</html>