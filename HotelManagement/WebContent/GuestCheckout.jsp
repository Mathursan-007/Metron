<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.service.IRoom" %>  
<%@ page import="com.service.RoomImpl"%>   
<%@ page import="com.model.GuestReservation" %>
<%@ page import="com.model.RoomBill" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<link rel="stylesheet" href="styles/dropdown.css">
	<script src= "https://code.jquery.com/jquery-3.3.1.slim.min.js"> </script>
<script src= "https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"> </script>
<script src="https://dl.dropbox.com/s/yrr7z4avnas4a6c/asteroid-alert-min.js"></script>

	
	<style>
	
	.fs{
		margin-left: 30%;      
    margin-right: 30%;
    width: auto;
    background:white;
    border-radius:10px;
    border:3px solid black;
    
    padding: 30px;
    
	}
	
	.csd{
	background:#8f9dd7;
	
	}
	
	.ceq{ 
	font-size: 20px; 
	margin-right:10%;
	margin-left:10%;
	 
	}
	
	.fs h1{
		text-align:center;
	}
	
	.fs button{
	width:100%;
	margin-top:10px;
	}
	
	.nui{
	float:right;
	}
	
	</style>

</head>
<body class="csd">
	<%@include file="Header.jsp" %>
	
	<h1  style="margin-top:150px;text-align:center;font-size: 35px;">Check-out Details </h1>  <br>
	
	<div class="fs">
	
	
	<%
		RoomImpl roomImpl = new RoomImpl();
		GuestReservation guestReservation = new GuestReservation();
		ArrayList<RoomBill> bill = new ArrayList();
		int RRID = Integer.parseInt(request.getParameter("rrid"));
		
		guestReservation=roomImpl.getReservation(RRID);
		guestReservation.setFullName(request.getParameter("fullName"));
		bill=roomImpl.getBillDetails(RRID);
		
		
		int a=0;
		float roomCost=0;
		
		for(RoomBill b:bill){
			if(a==0) {
				roomCost=b.getAmount();
				a++;
			}
		}
		
		
		
		
		float cost = roomImpl.getCustomerBill(RRID)-roomCost;
	
	%>
  		
  		
  		<div class="ceq">
	  		<p>Reservation ID : <span class="nui"><b><%=guestReservation.getRoom_RID() %></b></span> </p> <br>
	  		<p>Guest Name : <span class="nui"><b><%=guestReservation.getFullName() %></b></span> </p> <br>
	  		<p>Number of rooms booked : <span class="nui"><b><%=guestReservation.getNo_Of_Rooms() %></b></span> </p> <br>
	  		<p>Number of guests : <span class="nui"><b><%=guestReservation.getNo_Of_Guests() %></b></span> </p> <br>
	  		<p>Total Cost to be paid : <span class="nui"><b>Rs.<%=cost %> </b> </p> <br>
	  	</div>	
	  		
	  		
	  		<form action="RoomGuestBill.jsp" method="post" target="new">
	  			<input type="hidden" value="<%=guestReservation.getRoom_RID() %>" name="rrid">
  				<button class="btn btn-outline-success" type="submit">Print Bill</button>
  			</form>
  			
  			
  			<form action="./GuestCheckout" method="post">
  				<input type="hidden" value="<%=guestReservation.getRoom_RID() %>" name="rrid">
	  			<button class="btn btn-outline-danger">Check-out Guest</button>
	  		</form>
	  		
	  		<button class="btn btn-outline-primary" onclick="NewTab()">Go Back</button>
	</div>


	

	<script type="text/javascript">

	document.getElementById("myButton").onclick = function(){
		location.href = "";
		window.open("FrontDeskRoomDashboard.jsp","_blank");
	}
	
	function NewTab() { 
        window.open("FrontDeskRoomDashboard.jsp", "_blank"); 
    } 
		
</script>

</body>
</html>