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
	  <span class="jd"> <h1>Checked in guest</h1> </span>
	  
		  <div class="tbl-header">
		    <table cellpadding="0" cellspacing="0" border="0" class="Dubu">
		      <thead>
		        <tr>
		          	   <th>Rerservation ID</th>
		               <th>Guest name</th>
		               <th>Total bill</th>
		               <th>Action</th>
		        </tr>
		      </thead>
		    </table>
		  </div>
		  
		  <div class="tbl-content">
		    <table cellpadding="0" cellspacing="0" border="0" class="Dubu">
		      <tbody class="hovEvent">
		        
			          <%
		              IRoom iroomservice3=new RoomImpl();
		              ArrayList<GuestReservation> Reservations1=new ArrayList<>();
		              
		              Reservations1=iroomservice3.listCheckInDetails();
		              
		              if(Reservations1.isEmpty()) { %>
		            	  
		            	  <h1 class="errorMessage">There aren't any guests checked in at the moment</h1>
		            	  
		             <% }else{%>
		             
		            <%  for(GuestReservation reservation1:Reservations1){ %>
		            <tr>
		               <td><%=reservation1.getRoom_RID() %> </td> 
		               <td><%=reservation1.getFullName() %></td> 
		               <td><%=reservation1.getBill() %></td>
		               <td class="bisca ascre">
			               <form action="GuestCheckout.jsp" method="post">
			               <input type="hidden" name="fullName" value="<%=reservation1.getFullName() %>">
			               <input type="hidden" name="rrid" value="<%=reservation1.getRoom_RID() %>">
			               <button class="btn btn-success" type="submit"><i class="fa fa-credit-card" aria-hidden="true"></i>   Check-out</button>
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