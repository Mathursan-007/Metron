<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
       <%@ page import="com.model.Venue" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Venue</title>
<link rel="stylesheet" href="styles/Meal.css">
</head>
<body>


<%Venue venue = (Venue)request.getAttribute("venue");%>


<h2 class="nana">View Venues Form</h2>

<form action="./UpdateVenue" method="post">


	<div class="meal">

			<div class="form-group">
			
					<label for="venueid"> Venue ID : </label> <input type="text"
					class="form-control" id="venueId" placeholder="Venue ID" value= "<%=venue.getVenueID()%>" disabled>
					<input type="hidden" name="venueid" value= "<%=venue.getVenueID()%>" >    
				     			      
					
			</div>     
		</div>  
			
		
		
	<div class="meal1">
			<div class="form-group">

				<label for="venuetype"> Venue Type : </label> <select
					id="venuetype" name="venuetype" class="form-control">
					<option selected> <%=venue.getVenueType() %></option>
					<option value="Empire BallRoom">Empire BallRoom</option>
					<option value="Imperial BallRoom">Imperial BallRoom</option>
					<option value="Rainbow BallRoom">Rainbow BallRoom</option>
					<option value="Cedar">Cedar</option>
					<option value="Ebony">Ebony</option>
					<option value="Aspen">Aspen</option>
				</select>
			</div>
		</div>	
		
		
	<div class="meal2">
			<div class="form-group">


				<label for="price"> Price : </label> <select id="price" name="price"
					class="form-control">
					<option selected> <%=venue.getPrice() %></option>
					<option value="700500">Rs 700500</option>
					<option value="650500">Rs 650500</option>
					<option value="600000">Rs 600000</option>
					<option value="575000">Rs 575000</option>
					<option value="450000">Rs 450000</option>
					<option value="375000">Rs 375000</option>
					<option value="101500">Rs 101500</option>
				    <option value="90500">Rs 90500</option>
					<option value="70000">Rs 70000</option>
					<option value="70000">Rs 60000</option>
					<option value="55500">Rs 55500</option>
				</select>

			</div>
		</div>
		
	
	
	<div class="meal">

			<div class="form-group">
			
					<label for="capacity"> Capacity : </label> <input type="text"
					class="form-control" id="Capacity" placeholder="Capacity"
					name="capacity" value= "<%=venue.getCapacity()%>" >
			</div>
		</div>
				
	
			<Br>
		 
		 <input type="submit" value="Update Venue" class="button">
	</form>



</body>
</html>