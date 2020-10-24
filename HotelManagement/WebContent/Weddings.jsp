<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.service.IEvent"%>
<%@ page import="com.service.EventImpl"%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Weddings</title>
<%@include file="Header.jsp"%>
<link rel="stylesheet" href="styles/wedd.css"> 

</head>
<body>

<%  float price1, price2, price3;   

EventImpl eventimpl = new EventImpl();
price1 = eventimpl.getVenuePrice(1); 
price2 = eventimpl.getVenuePrice(2); 
price3 = eventimpl.getVenuePrice(3); 


%>


<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>

<div class="wedddd">  


<h2> Weddings At Metron </h2>

<!-- Slide show for weddings -->

<div class="slideshow-container">

	<div class="mySlides fade">
  		<div class="numbertext">1 / 6</div>
  			<img src="images/wed10.jpg" style="width:100%">
	</div>

	<div class="mySlides fade">
  		<div class="numbertext">2 / 6</div>
  			<img src="images/wedd2.jpg" style="width:100%">
	</div>

	<div class="mySlides fade">
	    <div class="numbertext">3 / 6</div>
 			 <img src="images/wed3.jpg" style="width:100%">
	</div>

	<div class="mySlides fade">
  		<div class="numbertext">4 / 6</div>
  			<img src="images/wed4.jpg" style="width:100%">
	</div>

	<div class="mySlides fade">
  		<div class="numbertext">5 / 6</div>
  			<img src="images/wed5.jpg" style="width:100%">
	</div>

	<div class="mySlides fade">
  		<div class="numbertext">6 / 6</div>
  			<img src="images/wedd1.jpg" style="width:100%">
	</div>


</div>
<br>

	<div style="text-align:center">
 		 <span class="dot"></span> 
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
  setTimeout(showSlides, 1600); // Change image every 1.0 seconds
}
</script>

 
 <p> "I do" - when you speak these golden words, it's only fair you do it in a setting that's just as beautiful.Our Indoor Venues make a plush ambience, be it during the day or at night. Add to it the finest meals and decor - and you'll have the best day of your life! </p>
 
 
 <br>


<div class="polaroid">
  <img src="images/wed4.jpg" alt="5 Terre" style="width:100%">
  <div class="container">
  <p>The Empire BallRoom</p>
  </div>
</div>

<div class="absolute">
				<h3> Empire BallRoom - Rs <%=price1 %></h3> <br>
				
			
 				The grand colonial style ballroom with a magnificent <br> seven-tier chandelier, 
 				accommodates up to 900 guests. <br> The pillar-less architecture adds to the splendour of this <br>venue.

				
</div>


 <form action ="Home.jsp#zooka" method = "post">
<input type="submit" value="Make An Inquiry" class="button">
</form>

<hr class="new1">

<div class="polaroid">
  <img src="images/rainbow.jpg" alt="5 Terre" style="width:100%">
  <div class="container">
  <p>The Imperial BallRoom</p>
  </div>
</div>

<div class="absolute1">
				<h3> Imperial BallRoom - Rs <%=price2 %> </h3> <br>
				
				The two-tiered room, with meticulously restored walnut <br> ceiling provides a spectacular setting for weddings and <br> accomodates up to 600 guests. The  Victorian style and <br> stately stone columns, evokes a regal beauty that adds <br> surprise to your celebration. 
			
</div> 
 <form action ="Home.jsp#zooka" method = "post">
<input type="submit" value="Make An Inquiry" class="button1">
</form>  

<hr class="new1">

<div class="polaroid">
  <img src="images/rain3.jpg" alt="5 Terre" style="width:100%">
  <div class="container">
  <p>The Rainbow BallRoom</p>
  </div>
</div>

<div class="absolute2">
				<h3> Rainbow BallRoom - Rs <%=price3 %> </h3> <br>
				
				
			  This wood-panneled hall with stunning crystal chandeliers <br> and a creamy color palette, accomodates up to 400 guests.<br> Mark your special day at our magnificient ballroom with a <br> seperate dance floor and a host of other unique facilities.
			  

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

