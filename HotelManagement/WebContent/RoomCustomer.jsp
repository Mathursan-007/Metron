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
<title>Rooms</title>
<link rel="stylesheet" href="styles/dropdown.css">
<link rel="stylesheet" href="styles/Room.css">
<script src= "https://code.jquery.com/jquery-3.3.1.slim.min.js"> </script>
<script src= "https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"> </script>
<link rel="stylesheet" href="styles/RoomAvailability.css">

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.js"></script>
<link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/themes/redmond/jquery-ui.css">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.js"></script>


</head>
<body>

	<%@include file="Header.jsp" %>
		
					<%
 						Room roomCount =(Room)request.getAttribute("room");
 						
		            %>

	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		  <ol class="carousel-indicators">
		    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
		    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
		    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		  </ol>
			  <div class="carousel-inner se">
				    <div class="carousel-item active">
				      <img class="d-block w-100" src="images\roo1.jpg" alt="First slide">
				      <div class="carousel-caption d-none d-md-block">
						  </div>
				    </div>
				    
				    <div class="carousel-item">
				      <img class="d-block w-100" src="images\roo2.jpg" alt="Second slide">
				      <div class="carousel-caption d-none d-md-block">
					  </div>
				    </div>
				    
				    <div class="carousel-item">
				      <img class="d-block w-100" src="images\roo3.jpg" alt="Third slide">
				      <div class="carousel-caption d-none d-md-block">
					  </div>
				    </div>
			  </div>
			  
		  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  
		  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </a>
	</div>
	
	<div class="moonu" id="moonu">
		<div class="vari container">
			<form class="d-flex flex-row" action="./GetRoomCounts" method="post" >
				<div class="form-group p-2 d-flex flex-row">
					<label for="Check-in Date" class="p-2">Check-in Date : </label>
			 		<input class="form-control p-2" id="txtstartdate" name="checkIn" placeholder="Check-in date" required>
				</div>
				
				<div class="form-group p-2 d-flex flex-row deq">
					<label for="Check-in Date" class="p-2 d">Check-out Date : </label>
			 		<input class="form-control p-2" name="checkOut" id="txtenddate" placeholder="Check-out date" required>
			 		
				</div>
				
				<div class="form-group p-2 ssee">
			 		<input class="btn btn-outline-primary d cee" type="submit" value="Search Availability">
			 		
				</div>
				
				
				
			</form>
		
		</div>
		
	</div>
	
	
	<div class="moonus" id="moonus">
		 <a class="btn btn-outline-primary btn-lg btn-block" href="#Available">See availability of rooms</a>
	</div>
	
	
	
	<!-- card -->
	<div style="background-color:#E0E0E0;" id="venue">
    <div class="container-fluid">
        <div class="row bg-primary animate-in-down">
            <div class="p-4 col-md-6 align-self-center text-color">
                <h2>Discover the room suitable for you</h2>
                <p class="my-4">Metron provides a wide variety of services for its customers out of which room reservation is one of the most important facility. We offer mainly three types of rooms Standard which is the cheapest and next we have the premium which is a regular room and finally we have the Elite which is the costliest.</p> 
            </div>
            <div class="p-0 col-md-6">
                <div class="carousel slide" data-ride="carousel" id="carousel1">
                    <div class="carousel-inner" role="listbox">
                        <div class="carousel-item"> <img class="d-block img-fluid w-100" src="images/eli1.jpg" alt="first slide">
                            <div class="carousel-caption">
                                <h3 class="sivaSambo">STANDARD ROOM</h3>
                            </div>
                        </div>
                        <div class="carousel-item active"> <img class="d-block img-fluid w-100" src="images/eli2.jpg" data-holder-rendered="true">
                            <div class="carousel-caption">
                                <h3 class="sivaSambo">PREMIUM ROOM</h3>
                            </div>
                        </div>
                        <div class="carousel-item"> <img class="d-block img-fluid w-100" src="images/eli3.jpg" data-holder-rendered="true">
                            <div class="carousel-caption">
                                <h3 class="sivaSambo">ELITE ROOM</h3>
                            </div>
                        </div>
                    </div> <a class="carousel-control-prev" href="#carousel1" role="button" data-slide="prev"> <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a> <a class="carousel-control-next" href="#carousel1" role="button" data-slide="next"> <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span> </a>
                </div>
            </div>
        </div>
    </div>
</div>
	

	<!-- Pricing -->
	<div class="bodyss">
		
		 <div>
     <div class="container py-5">
         <h1 class="text-center pricing" style="font-weight: 900;">Prices of Rooms</h1> <br>
         <div class="row text-center align-items-end">
             <div class="col-lg-4 mb-5 mb-lg-0">
                 <div class="bg-white p-5 rounded-lg shadow">
                     <h1 class="h6 text-uppercase font-weight-bold mb-4">Standard</h1>
                     <h2 class="h1 font-weight-bold">Rs.7,500<span class="text-small font-weight-normal ml-2">/ day</span></h2>
                     <div class="custom-separator my-4 mx-auto bg-warning"></div>
                     <ul class="list-unstyled my-5 text-small text-left">
                         <li class="mb-3"> <i class="fa fa-check mr-2 text-primary"></i> 1 Normal sized bed</li>
                         <li class="mb-3"> <i class="fa fa-check mr-2 text-primary"></i> Transport</li>
                         <li class="mb-3 text-muted"> <i class="fa fa-times mr-2"></i> <del>Unlimited Wifi</del> </li>
                         <li class="mb-3 text-muted"> <i class="fa fa-times mr-2"></i> <del>Inclusive of food & beverages</del> </li>
                     </ul> 
                 </div>
             </div>
             <div class="col-lg-4 mb-5 mb-lg-0">
                 <div class="bg-white p-5 rounded-lg shadow">
                     <h1 class="h6 text-uppercase font-weight-bold mb-4">Premium</h1>
                     <h2 class="h1 font-weight-bold">Rs.15,000<span class="text-small font-weight-normal ml-2">/ day</span></h2>
                     <div class="custom-separator my-4 mx-auto bg-warning"></div>
                     <ul class="list-unstyled my-5 text-small text-left font-weight-normal">
                         <li class="mb-3"> <i class="fa fa-check mr-2 text-primary"></i> 1 Normal and 1 Master bed</li>
                         <li class="mb-3"> <i class="fa fa-check mr-2 text-primary"></i> Transport</li>
                         <li class="mb-3"> <i class="fa fa-check mr-2 text-primary"></i> Unlimited Wifi</li>
                         <li class="mb-3"> <i class="fa fa-times mr-2"></i> <del>Inclusive of food & beverages</del></li>
                     </ul> 
                 </div>
             </div>
             <div class="col-lg-4">
                 <div class="bg-white p-5 rounded-lg shadow">
                     <h1 class="h6 text-uppercase font-weight-bold mb-4">Elite</h1>
                     <h2 class="h1 font-weight-bold">Rs.25,000<span class="text-small font-weight-normal ml-2">/ day</span></h2>
                     <div class="custom-separator my-4 mx-auto bg-warning"></div>
                     <ul class="list-unstyled my-5 text-small text-left font-weight-normal">
                         <li class="mb-3"> <i class="fa fa-check mr-2 text-primary"></i> 2 Master beds </li>
                         <li class="mb-3"> <i class="fa fa-check mr-2 text-primary"></i> Transport</li>
                         <li class="mb-3"> <i class="fa fa-check mr-2 text-primary"></i> Unlimited Wifi</li>
                         <li class="mb-3"> <i class="fa fa-check mr-2 text-primary"></i> Inclusive of food & beverages</li>
                     </ul> 
                 </div>
             </div>
         </div>
     </div>
 </div>
	
	</div>
	
					
	<div id="Available">
	<%if(roomCount!=null) { %>
	<!-- Availability of rooms -->
	<div class="sections pb-0 ase">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="section-title">Availability of rooms from  <span style="font-size:25px;font-style: italic;"><%=roomCount.getCheckIn() %></span>  -  <span style="font-size:25px;font-style: italic;"><%=roomCount.getCheckOut() %></span> </h2>
            </div>
            <div class="col-lg-4 col-sm-6 mb-lg- mb-4">
                <div class="hover-bg-primary text-center position-relative px-4 py-5 rounded-lg shadow vid"> <img src="https://media-cdn.tripadvisor.com/media/photo-s/0f/73/ca/c5/ordinary-logo-based-on.jpg" class="img-fluid" alt="feature-image">
                    <h5 class="pt-5 pb-3 text-capitalize card-title">Standard Rooms</h5>
                    <p class="mb-4">Price per night : Rs. 7,500</p> 
                    <p class="mb-4">Available Rooms : <%=roomCount.getStandardRoomCount() %></p> 
                    
                    <form action="./RoomGuestReservation" method="post">
                    	<input type="hidden" value="<%=roomCount.getCheckIn() %>" name="checkIn">
                    	<input type="hidden" value="<%=roomCount.getCheckOut() %>" name="checkOut">
                    	<input type="hidden" value="1" name="roomType">        
                    	<button type="submit" id="standard" class="btn btn-primary" <%if(roomCount.getStandardRoomCount()==0){ %>disabled <%} %>>Book Now</button>
               		</form>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 mb-lg- mb-4">
                <div class="hover-bg-primary text-center position-relative px-4 py-5 rounded-lg shadow vid"> <img src="https://img.freepik.com/free-vector/premium-collection-badge-design-vector_53876-43821.jpg?size=338&ext=jpg" class="img-fluid" alt="feature-image">
                    <h5 class="pt-5 pb-3 text-capitalize card-title">Premium Rooms</h5>
                    <p class="mb-4">Price per night : Rs. 15,000</p> 
                    <p class="mb-4">Available Rooms : <%=roomCount.getPremiumRoomCount() %></p> 
                    
                    <form action="./RoomGuestReservation" method="post">
                   		<input type="hidden" value="<%=roomCount.getCheckIn() %>" name="checkIn">  
                   		<input type="hidden" value="<%=roomCount.getCheckOut() %>" name="checkOut">
                   		<input type="hidden" value="2" name="roomType">      
                    	<button type="submit" id="premium" class="btn btn-primary" <%if(roomCount.getPremiumRoomCount()==0){ %>disabled <%} %>>Book Now</button>
               		</form>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 mb-lg- mb-4">
                <div class="hover-bg-primary text-center position-relative px-4 py-5 rounded-lg shadow vid"> <img src="https://previews.123rf.com/images/anatolir/anatolir1806/anatolir180602358/103431068-elite-logo-simple-illustration-of-elite-vector-logo-for-web-design-isolated-on-white-background.jpg"  class="img-fluid" alt="feature-image">
                    <h5 class="pt-5 pb-3 text-capitalize card-title">Elite Rooms</h5>
                    <p class="mb-4">Price per night : Rs. 25,000</p> 
                    <p class="mb-4">Available Rooms :
                     <%=roomCount.getEliteRoomCount() %></p> 
                <form action="./RoomGuestReservation" method="post"> 
                	<input type="hidden" value="<%=roomCount.getCheckIn() %>" name="checkIn">
                	<input type="hidden" value="<%=roomCount.getCheckOut() %>" name="checkOut">
                	<input type="hidden" value="3" name="roomType">        
                    <button id="elite" class="btn btn-primary" <%if(roomCount.getEliteRoomCount()==0){ %>disabled <%} %>>Book Now</button>
                </form>
                </div>
            </div>
        </div>
    </div>
</div>

	</div>
	<% } %>
	
	<%@include file="Footer.jsp" %>

	<script>	
	var x = document.getElementById("moonus");
	 x.style.display = "none";
	  if (<%=roomCount!=null %>) {
	    x.style.display = "block";
	  } else {
	    x.style.display = "none";
	  }
	
	
	  $("#txtstartdate").datepicker({
		  minDate: 0,
		  onSelect: function(date) {
		    $("#txtenddate").datepicker('option', 'minDate', date);
		  }
		});

		$("#txtenddate").datepicker({});
</script>

		
</body>
</html>