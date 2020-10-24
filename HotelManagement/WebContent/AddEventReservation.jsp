<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.service.IEvent"%>
<%@ page import="com.service.EventImpl"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="styles/addres.css">

<title>Event Reservation</title>
</head>
<body>



<h2 class="nana">Venue Reservation Form</h2>

  <div class="qqqq">
   
   <button class="btn info"> <a href="VenueAvailability.jsp"> Availability </a></button >  
    
   </div>

	<form name="meal" action="./AddEventReservation"
		onsubmit="return validateForm()" method="post">

	

		
		<div class="meal">

			<div class="form-group">
			
				<label for="fname"> Full Name: </label> <input type="text" 
				class="form-control" id="fname" placeholder="Full Name" 
				name="fname" required>
				
			
				</div>
		</div>
		
		
			<div class="meal">

			<div class="form-group">
			
				<label for="nic"> NIC: </label> <input type="text" 
				class="form-control" id="nic" placeholder="123456789V/v" pattern ="[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][V|v]" 
				name="nic" required>
				
			
				</div>
		</div>
		
		
		
		<div class="meal">

			<div class="form-group">
			
				<label for="phonenumber"> Contact Number: </label> <input type="text" 
				class="form-control" id="phonenumber" placeholder="07XXXXXXXX" pattern="[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]"   
				name="contact" required>
				
			
				</div>
		</div>
		
		
		
		<div class="meal">
		
			<div class="form-group">

				<label for="ename"> Event Name : </label> <select
					id="ename" name="eventname" class="form-control">
					<option selected>Choose an Event</option>
					<option value="Wedding">Wedding</option>
					<option value="Meetings & Conferences">Meetings & Conferences</option>
				</select>
				
			
				</div>
		</div>
		
		
			
	<div class="meal">
	
			<div class="form-group">

				<label for="venuetype"> Venue Type :  </label> <select 
					id="venuetype" name="venuetype" class="form-control">
					<option selected>Choose a Venue</option>
					<option value="Empire BallRoom">Empire BallRoom</option>
					<option value="Imperial BallRoom">Imperial BallRoom</option>
					<option value="Rainbow BallRoom">Rainbow BallRoom</option>
					<option value="Cedar">Cedar</option>
					<option value="Ebony">Ebony</option>
					<option value="Aspen">Aspen</option>
					
					
				
				</select>
			
				</div>
		</div>	
		
	

		
		
		<div class="meal">

			<div class="form-group">
			
				<label for="guest"> No Of Guests: </label> <input type="number" 
				class="form-control" id="guest" placeholder="No Of Guests" 
				name="noOfguest" required>
				
			
				</div>
		</div>
		
			<div class="meal">

			<div class="form-group">
			
				<label for="Date"> Day Of the Event: </label> <input type="date" 
				class="form-control" id="Date" placeholder="Date" 
				name="date" required>
				
			
				</div>
		</div>
		
			<div class="meal">

			<div class="form-group">
			
				<label for="Time"> Time Of the Event: </label> <input type="time" 
				class="form-control" id="Time" placeholder="Time" 
				name="time" required>
				
			
				</div>
		</div>
		
		
		<div class="meal">

			<div class="form-group">
			
					<label for="hid"> Hall ID : </label> <input type="text"
					class="form-control" id="hid" placeholder="Hall ID"
					name="hallid" required>
			</div>
		</div>
		
		
		<div class="meal">

			<div class="form-group">
		
		 <p>Payment Method:
 			 <input type="radio" id="cash" name="pay" value="Cash">
  				<label for="cash">Cash</label> 
 			 <input type="radio" id="card" name="pay" value="Card">
 				 <label for="card">Card</label> </p>
 				 
 			</div>
		</div>		 
		
		<Br>
		
		<input type="submit" value="Submit Reservation" class="button">

</form>
<script>





</script>
</body>
</html>