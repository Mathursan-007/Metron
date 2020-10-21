<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.service.IRoom" %>  
<%@ page import="com.service.RoomImpl"%>   
<%@ page import="com.model.GuestReservation" %>   

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List rooms</title>
<link rel="stylesheet" href="styles/ListRooms.css">
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<link rel="stylesheet" href="styles/AddRoom.css">
</head>
<body >
<div class="bree">

	<section class="ListingRooms">
	  <!--for demo wrap-->
	  <span class="jd"> <h1>Reservation Details</h1> </span>
	  
		  <div class="tbl-header">
		    <table cellpadding="0" cellspacing="0" border="0" class="Dubu">
		      <thead>
		        <tr>
		          	   <th>Rerservation ID</th>
		               <th>Guest name</th>
		               <th>No. of Rooms</th>
		               <th>No. of guests</th>
		               <th>Check-in date</th>
		               <th>Action</th>
		        </tr>
		      </thead>
		    </table>
		  </div>
		  
		  <div class="tbl-content">
		    <table cellpadding="0" cellspacing="0" border="0" class="Dubu">
		      <tbody class="hovEvent">
		        
			          <%
		              IRoom iroomservice1=new RoomImpl();
		              ArrayList<GuestReservation> Reservations=new ArrayList<>();
		              
		              Reservations=iroomservice1.listGuestReservationInfo();
		              
		              if(Reservations.isEmpty()) { %>
		            	  
		            	  <h1 class="errorMessage">There are no reservations yet</h1>
		            	  
		             <% }else{%>
		             
		            <%  for(GuestReservation reservation:Reservations){ %>
		            <tr>
		               <td><%=reservation.getRoom_RID() %> </td> 
		               <td><%=reservation.getFullName() %></td> 
		               <td><%=reservation.getNo_Of_Rooms() %></td>
		               <td><%=reservation.getNo_Of_Guests() %></td>
		               <td><%=reservation.getCheckIn() %></td>
		               <td class="bisca d-flex flex-row ascre">
			               <form action="./RoomCheckIn" method="post">
			               <input type="hidden" name="fullName" value="<%=reservation.getFullName() %>">
			               <input type="hidden" name="rrid" value="<%=reservation.getRoom_RID() %>">
			               <button class="btn btn-info p-2" type="submit"><i class="fa fa-eye" aria-hidden="true"></i>   Check-in</button>
			               </form>
			               
			               <form action="./CancelRoomReservation" method="post" style="margin-left:10px;">
			               <input type="hidden" name="rrid" value="<%=reservation.getRoom_RID() %>">
			               <button class="btn btn-danger p-2" type="submit"><i class="fa fa-trash" aria-hidden="true"></i>   Cancel</button>
			               </form>
		               </td>
		            </tr>
		            <%} }%>
		        
		      </tbody>
		    </table>
		  </div>
	
	</section> 
</div>


</body>
</html>