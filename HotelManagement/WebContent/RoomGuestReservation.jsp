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

<style>
	
	.see form{
	background-image: linear-gradient(to left bottom, #acb5b5, #aeb9b9, #b1bdbd, #b3c1c2, #b5c5c6);
	border-radius:10px;
	width:700px;
	padding:90px;
	}

	.fer{
	text-align:center;
	color:#000;
	}
	
	.sbmt{
	background-image: linear-gradient(to left bottom, #606266, #797a7e, #939496, #aeaeaf, #c9c9c9);
	}

</style>


</head>
<body class="sbmt">

	<%@include file="Header.jsp" %>
	
	
	<%Room room =(Room)request.getAttribute("room");
	
	IRoom iroomservice=new RoomImpl();
	
	ArrayList<Room> Rooms=new ArrayList<>();
	
	Rooms=iroomservice.getAvailableRooms(room.getCheckIn(),room.getCheckOut(),room.getRoomTypeNo());
	int type=room.getRoomTypeNo();
	%>
	
	<div class="container-fluid see" style="padding-top:100px;">
		<div>
			<br>
			<h1 class="fer" style="color:#fff;">Reservation of rooms from <%=room.getCheckIn()%> to <%=room.getCheckOut()%></h1>
			<br>
			
			<form action="./MakeRoomPayment" method="post"  class="container">
			
					<h2 class="fer">Guest Information</h1>
					<br>
					
					<div class="form-group">
			            <input class="form-control" type="text" name="NIC" placeholder="Enter NIC/Passport number" pattern="(([0-9]{9}[V]{1})|([0-9]{12}))"  title="9 digits and V or 12 digits" required>
		            </div>
		            
		            <div class="form-group">
			            <input class="form-control" type="text" name="fullName" placeholder="Enter Full name" required>
		            </div>
		            
		            <div class="form-group">
			            <input class="form-control" type="email" name="email" placeholder="Enter personal email address" required>
		            </div>
		            
		            <div class="form-group">
			            <input class="form-control" type="text" name="contact" placeholder="Enter contact number" required>
		            </div>
		            
		            <br>
		            <h2 class="fer">Room Reservation</h1>
		           	<br>
		           
			           	
					 		<input class="form-control p-2" type="hidden" name="checkIn" value="<%=room.getCheckIn()%>">
					 		
					 		<input class="form-control p-2" type="hidden" name="checkOut" value="<%=room.getCheckOut()%>">
							<input type="hidden" name="type" value="<%=room.getRoomTypeNo() %>">
					
					
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
			            <input class="form-control" type="text" name="MaxGuests" required>
		            </div>
		            
		            <input class="btn btn-success" type="submit" value="Make reservation">
		            
			</form>
		</div>
	</div>

</body>
</html>