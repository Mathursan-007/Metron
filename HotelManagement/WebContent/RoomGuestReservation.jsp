<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.service.IRoom" %>  
<%@ page import="com.service.RoomImpl"%>   
<%@ page import="com.model.Room" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<script src= "https://code.jquery.com/jquery-3.3.1.slim.min.js"> </script>
<script src= "https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"> </script>

<link rel="stylesheet" href="styles/RoomGuestReservation.css">

</head>
<body>

	<%@include file="Header.jsp" %>
	
	
	<%Room room =(Room)request.getAttribute("room");
	
	IRoom iroomservice=new RoomImpl();
	
	ArrayList<Room> Rooms=new ArrayList<>();
	
	Rooms=iroomservice.getAvailableRooms(room.getCheckIn(),room.getCheckOut(),room.getRoomTypeNo());
	int type=room.getRoomTypeNo();
	%>
	
	<div class="container-fluid" style="padding-top:100px;">
		<div>
			<h1>Reservation of rooms from <%=room.getCheckIn()%> to <%=room.getCheckOut()%></h1>
			
			<form action="./MakeRoomPayment" method="post">
			
					<h1>Guest Information</h1>
					
					<div class="form-group">
			            <input class="form-control" type="text" name="NIC" placeholder="Enter NIC/Passport number">
		            </div>
		            
		            <div class="form-group">
			            <input class="form-control" type="text" name="fullName" placeholder="Enter Full name">
		            </div>
		            
		            <div class="form-group">
			            <input class="form-control" type="email" name="email" placeholder="Enter personal email address">
		            </div>
		            
		            <div class="form-group">
			            <input class="form-control" type="text" name="contact" placeholder="Enter contact number">
		            </div>
		            
		            <h1>Room Reservation</h1>
		           
		           
			           	
					 		<input class="form-control p-2" type="hidden" name="checkIn" value="<%=room.getCheckIn()%>">
					 		
					 		<input class="form-control p-2" type="hidden" name="checkOut" value="<%=room.getCheckOut()%>">
						
					
					
					<div class="form-group">
						<label class="form-check-label" for="exampleCheck1">Select available rooms : </label>
					</div>
					
					<div class="scrollvieww">
			             <%  for(Room roomss:Rooms){ %>
			             <div class="form-check">
						    <input type="checkbox" class="form-check-input" name="roomsArray" value="<%=roomss.getRoomNo() %>">
						    <label class="form-check-label" for="exampleCheck1"><%=roomss.getRoomNo() %></label>
						  </div>
			            <% } %>
		            </div>
		            
		            <div class="form-group">
		            	<label for="Check-in Date" class="p-2">Enter number of guests: </label>
			            <input class="form-control" type="text" name="MaxGuests" placeholder="Enter contact number">
		            </div>
		            
		            <input type="submit" value="Make reservation">
		            
			</form>
		</div>
	</div>

</body>
</html>