<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%@ page import="com.model.EventReservation" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Reservation</title>

<%@include file="Header.jsp"%>


<link rel="stylesheet" href="styles/view.css">   
</head>
<body>

<%EventReservation eventreservation = (EventReservation)request.getAttribute("EventReservation");%>

<div class = repp>


<h2 class="nana">Venue Reservation Details</h2> <br>

		
		<div class="meal">
			
				<label for="id"> Reservation ID : </label> <span> </span> 
				 <%=eventreservation.getEventReservation_ID() %> 
		</div>
		
		
		
		<div class="meal">
			
				<label for="fname"> Full Name : </label> <span> </span> 
				 <%=eventreservation.getFullName() %> 
		</div>
		
				
		
		<div class="meal">
	

				<label for="ename"> Event Name : </label> 
				 <%=eventreservation.getEventName() %>
			
		</div>
		
		
			
	<div class="meal">
	
		

				<label for="venuetype"> Venue Type : </label> 
					 <%=eventreservation.getVenue() %> 
					
				
			
		</div>	
		
		
		<div class="meal2">
			
				<label for="price"> Venue Price : </label> 
				<%=eventreservation.getPrice() %>
					
					
		</div>
		
		
	
		
			<div class="meal">

			
				<label for="Date"> Day Of the Event : </label> 
			<%=eventreservation.getDate() %>
				
			
		</div>
		
		
		
		<div class="meal">

			
					<label for="hid"> Hall ID : </label> 
					<%=eventreservation.getHallID() %>
			
		</div>
			

        <form action ="EventReport.jsp" method = "post">
        <input type = "hidden" name = "eventid" value="<%=eventreservation.getEventReservation_ID() %>" >
  
	    <div class = zac>
		<input type="submit" value="Print Bill" class="btn btn-success">
		</div>
		</form>	
		
		</div>

</body>

</html>