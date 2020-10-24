<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.service.IEvent"%>
<%@ page import="com.service.EventImpl"%>
    
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Meetings & Conferences</title>
<%@include file="Header.jsp"%>
<link rel="stylesheet" href="styles/meeting.css"> 
</head>
<body>

<%  float price4, price5, price6;   

EventImpl eventimpl = new EventImpl();
price4 = eventimpl.getVenuePrice(4); 
price5 = eventimpl.getVenuePrice(5); 
price6 = eventimpl.getVenuePrice(6); 


%>

<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>


 <div class="secccc">  

<h2> Meetings & Conferences At Metron </h2>

<!-- Slide show for weddings -->

<div class="slideshow-container">

	<div class="mySlides fade">
  		<div class="numbertext">1 / 5</div>
  			<img src="images/cedar.jpg" style="width:100%"> 
	</div>

	<div class="mySlides fade">
  		<div class="numbertext">2 / 5</div>
  			<img src="images/apsen.jpg" style="width:100%">
	</div>

	<div class="mySlides fade">
	    <div class="numbertext">3 / 5</div>
 			 <img src="images/angasana.jpg" style="width:100%">
	</div>

	<div class="mySlides fade">
  		<div class="numbertext">4 / 5</div>
  			<img src="images/mahogany.jpg" style="width:100%">
	</div>

	<div class="mySlides fade">
  		<div class="numbertext">5 / 5</div>
  			<img src="images/ebony.jpg" style="width:100%">
	</div>


</div>
<br>

	<div style="text-align:center">
 		 <span class="dot"></span> 
  		 <span class="dot"></span> 
  		 <span class="dot"></span> 
  		 <span class="dot"></span> 
  		 <span class="dot"></span> 
	</div>

<!-- slide show ending -->

<!-- js for slide shows -->

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 1500); // Change image every 1.5 seconds
}
</script>

<p>  Our expertise extends to organizing meetings, conferences, seminars, workshops and board meetings. There are three venues to choose from and all arrangements can be tailor-made to suit your specific needs.</p>

 <br>

<div class="polaroid">
  <img src="images/cedar.jpg" alt="5 Terre" style="width:100%">
  <div class="container">
  <p>Cedar -  Rs <%=price4 %></p>
  </div>
</div>

<div class="absolute">
				<h3> Cedar </h3>
				
			This is the space for small parties, big meetings and intimate personal functions. The Cedar Room's easily customisable space allows it to host a variety of events with up to 100 attendees in comfort. Elegantly finished, this is the ideal venue for events with elegance.
 			
 			<div class = "absolute4">
 			
 		
 			Setup - Banquet , Capacity - 80
 			<br> <br>
 			Setup - Boardroom , Capacity - 30
 			
 			</div>	

 				
</div>
 <form action ="Home.jsp#zooka" method = "post">
<input type="submit" value="Make An Inquiry" class="button"> 
</form>
<hr class="new1">


<div class="polaroid">
  <img src="images/ebony.jpg" alt="5 Terre" style="width:100%">
  <div class="container">
  <p>Ebony - Rs <%=price5 %> </p>
  </div>
</div>

<div class="absolute1">
				<h3> Ebony </h3>
				
			Host a small gathering of special people, brainstorm your organisations next big idea or throw an intimate banquet, the Ebony Room can handle it all. The floor-to-ceiling windows on one side of this space allow natural daylight to illuminate this smartly designed space.
 				
 			<div class = "absolute3">
 			
 			Setup - Banquet , Capacity - 40
 			<br> <br>
 			Setup - Boardroom , Capacity - 24
 			
 			</div>	
 			
 				
</div>
<form action ="Home.jsp#zooka" method = "post">
<input type="submit" value="Make An Inquiry" class="button1">  
</form>
 			

<hr class="new1">

<div class="polaroid">
  <img src="images/angasana.jpg" alt="5 Terre" style="width:100%">
  <div class="container">
  <p>Aspen - Rs <%=price6 %></p>
  </div>
</div>

<div class="absolute2">
				<h3> Aspen </h3>
				
			Intimate yet stylish, the Aspen Meeting Room adds freshness and vibrancy to elevate the ambience of your private of business event. A separate entrance also ensures privacy for your special guests.
 			
 			<div class = "absolute5">
 		
 			Setup - Boardroom , Capacity - 25
 			<br> <br>
 			Setup - Banquet , Capacity - 35
 			
 			</div>	
 						
 				
</div>

<form action ="Home.jsp#zooka" method = "post">
<input type="submit" value="Make An Inquiry" class="button2">  
</form>
 </div>			


<script>
//Get the button
var mybutton = document.getElementById("myBtn");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}
</script>


</body>
<br> <br> <br>
<%@include file="Footer.jsp"%>
</html>

