<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="./AddRoom" method="post">
	Room No : <input type="text" name="roomNo" required>
	Availability : <input type="text" name="availability" value="Available">
	
	<label for="room size-select">Choose a room size :</label>
	<select name="roomSize" id="" required>
	    <option value="">--Please choose a room size--</option>
	    <option value="Small">Small (1 bed)</option>
	    <option value="Medium">Medium (2 beds)</option>
	    <option value="Large">Large (3 beds)</option>
	</select>
	
	<label for="room type-select">Choose a room type :</label>
	<select name="roomType" id="" required>
	    <option value="">--Please choose the room type--</option>
	    <option value="1">Standard Room</option>
	    <option value="2">Platinum Room</option>
	    <option value="3">Elite Room</option>
	</select>
	
	<input type="range" name="MaxGuests" min="1" max="5">

	
	
	<input type="submit" value="Add Room">
	</form>

</body>
</html>