<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Weddings</title>
<link rel="stylesheet" href="styles/wedd.css"> 

</head>
<body>


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
  setTimeout(showSlides, 1500); // Change image every 1.5 seconds
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
				<h3> Empire BallRoom </h3>
				
			
 				The grand colonial style ballroom with a magnificent <br> seven-tier chandelier, 
 				accommodates up to 600 guests. <br> The pillar-less architecture adds to the splendour of this <br>venue.

				
</div>

<input type="submit" value="Make An Inquiry" class="button" href="Home.jsp#zooka">  

<hr class="new1">

<div class="polaroid">
  <img src="images/rainbow.jpg" alt="5 Terre" style="width:100%">
  <div class="container">
  <p>The Imperial BallRoom</p>
  </div>
</div>

<div class="absolute1">
				<h3> Imperial BallRoom </h3>
				
				The two-tiered room, with meticulously restored walnut <br> ceiling provides a spectacular setting for weddings. The <br> Victorian style and  stately stone columns, evokes a regal<br> beauty that adds surprise to your celebration.
			
</div>

<input type="submit" value="Make An Inquiry" class="button1">  

<hr class="new1">

<div class="polaroid">
  <img src="images/rain3.jpg" alt="5 Terre" style="width:100%">
  <div class="container">
  <p>The Rainbow BallRoom</p>
  </div>
</div>

<div class="absolute2">
				<h3> Rainbow BallRoom </h3>
				
			  This wood-panneled hall with stunning crystal chandeliers <br> and a creamy color palette, accomodates up to 300 guests.<br> Mark your special day at our magnificient ballroom with a <br> seperate dance floor and a host of other unique facilities.
			  

</div>

<input type="submit" value="Make An Inquiry" class="button2">  


</body>
</html>