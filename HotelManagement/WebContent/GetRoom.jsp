<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Room" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<%Room room =(Room)request.getAttribute("room");%>
  
     <form action="./UpdateRoom" method="post">
     	
     	<h1><%=room.getRoomNo()%></h1>
     	 <label for="room type-select">Room type :</label>
			<select name="roomType" id="" required>
			    <option value="<%=room.getRoomTypeNo()%>">Default</option>
			    <option value="1">Standard Room</option>
			    <option value="2">Platinum Room</option>
			    <option value="3">Elite Room</option>
			</select>
     	
     	 <label for="room size-select">Room size :</label>
			<select name="roomSize" id="" required>
			    <option value="<%=room.getRoomSize()%>">Default</option>
			    <option value="Small">Small (1 bed)</option>
			    <option value="Medium">Medium (2 beds)</option>
			    <option value="Large">Large (3 beds)</option>
			</select>
	
	
			
	
		<input type="range" name="MaxGuests" min="1" max="5" value="<%=room.getMaxGuests()%>"> 
		
		<input type="hidden" name="roomno" value="<%=room.getRoomNo() %>">
	      
	      <input type="submit" value="Update">
    </form> 	
	
		
</body>
</html>