<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.service.IEvent"%>
<%@ page import="com.service.EventImpl"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Meal plan</title>
<%@include file="Header.jsp"%>
<link rel="stylesheet" href="styles/mealui.css"> 

</head>
<body >

<%  float price1, price2, price3;   

EventImpl eventimpl = new EventImpl();
price1 = eventimpl.getMealPrice(111); 
price2 = eventimpl.getMealPrice(222); 
price3 = eventimpl.getMealPrice(333); 


%>

<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>

 <div class="firstttt">  

<h2> Meal Plan For Events</h2>

<!-- Slide show for meal plan -->

 

<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 6</div>
  <img src="images/meal1.jpg" style="width:100%">
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 6</div>
  <img src="images/meal5.jpg" style="width:100%">
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 6</div>
  <img src="images/meal2.jpg" style="width:100%">
</div>

<div class="mySlides fade">
  <div class="numbertext">4 / 6</div>
  <img src="images/meal7.jpg" style="width:100%">
</div>

<div class="mySlides fade">
  <div class="numbertext">5 / 6</div>
  <img src="images/meal3.jpg" style="width:100%">
</div>

<div class="mySlides fade">
  <div class="numbertext">6 / 6</div>
  <img src="images/meal9.jpg" style="width:100%">
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


<!-- body content -->

<p> Food plays a significant role in the important celebrations of our lives.And we are here 
	to help you design your dream event. </p>
	
<p> Our three buffet options are perfect for those who need to please a variety of tastes and appetites.
Couldn't find what you are looking for, just ask one of our event specialists who will be pleased to accomodate!

 <a class="button button2" style="text-decoration:none;" href="Home.jsp#zooka">For Inquiry</a> </p>
 
 <div class ="sec"> 

<h3> Deluxe Buffet </h3>
<h4> Our exclusive package for 350 Guests and above. Enjoy it for Rs 1500 per person.</h4>

<h3> Enhanced Buffet </h3>
<h4> Our exclusive package for 100-300 Guests. Enjoy it for Rs 3000 per person.</h4>

<h3> Premium Buffet </h3>
<h4> Our exclusive package between 20-100 Guests. Enjoy it for Rs 4500 per person.</h4>

</div> 

<hr class="new1">
<br>

<div class="polaroid">
  <img src="images/meal9.jpg" alt="5 Terre" style="width:100%">
  <div class="container">
  <p>Deluxe Buffet</p>
  </div>
</div>

<div class="absolute">
 				<h3> Deluxe Buffet </h3>	
 				
 				<h4> Rs <%=price1 %> per person </h4>
 				<br> 
 				Please Choose One Salad/Appetizer 
 				<br> <br>
 				Please Choose One Buffet Entry <br> 
				(All Entries include dinner rolls & whipped butter)
				<br> <br>
				Please Choose Three Accompaniments 
			

</div>

<hr class="new1">

<div class="polaroid">
  <img src="images/meal2.jpg" alt="Norther Lights" style="width:100%">
  <div class="container">
  <p>Enhanced Buffet</p>
  </div>
</div>

<div class="absolute1">
				<h3> Enhanced Buffet </h3>
 			
 				<h4> Rs <%=price2 %> per person </h4>
 				<br>
 				Choose Two Salad/Appetizer
				<br> <br>
				Choose Two Desserts                          
				<br> <br>
				Please Choose Two Buffet Entry
				<br> 
				(All Entries include dinner rolls & whipped butter)
				<br> <br>
				Please Choose Three Accompaniments 


</div>


<hr class="new1">

<div class="polaroid">
  <img src="images/meal7.jpg" alt="Norther Lights" style="width:100%">
  <div class="container">
  <p>Premium Buffet</p>
  </div>
</div>

<div class="absolute2">
				<h3> Premium Buffet </h3>
 				
 				<h4> Rs <%=price3 %> per person </h4>
 				<br>
 				Choose Three Salad/Appetizer 
				<br> <br>
				Choose Three Desserts                       
				<br> <br>
				Please Choose Three Buffet Entry
				<br> 
				(All Entries include dinner rolls & whipped butter)
				<br> <br>
				Please Choose Three Accompaniments 


</div>

<hr class="new1">

<h3> -Buffet Menu Options-</h3>

<h4> Salad/Appetizer</h4>

 <div class="man"> 

<ul>
  <li>Mango and Pineapple Salad</li>
  <li>Oriental Egg Salad</li>
  <li>Spicy Tuna Salad</li>
  <li>Chicken Pineapple Salad</li>
  <li>Vegetarian Samosa</li>
  <li>Chaat Masala</li>
  <li>Glass Noodle Salad with Shrimp</li>
  <li>Chicken and Sticky Rice Balls</li>
  <li>Chinese Crispy Spring Rolls</li>
  <li>Assorted Sushi</li>
  <li>Creamy Cole Slaw with Raisin</li>
  <li>French Country Salad</li>
</ul>

<h4> Dessert</h4>

<ul>
  <li>Fresh Fruit Salad</li>
  <li>Traditional Sweet Meat</li>
  <li>Watalappan</li>
  <li>Sago Pudding</li>
  <li>Pineapple Crumble</li>
  <li>Apple Pie</li>
  <li>Chocolate Chip Mousse</li>
  <li>Vanilla Crème Slice</li>
  <li>Monte Christo Cake</li>
  <li>Paris Brest</li>
  <li>Carrot Halva</li>
  <li>Carrot Cheese Cake</li>
  <li>Cashew and Chocolate Pudding</li>
  <li>Fresh Fruit Pavlova</li>
  <li>Sherry Marshmallow Pudding</li>
</ul>

<h3> -Buffet Entry-</h3>
<h4> Vegetarian</h4>

<ul>
  <li>Traditional or Spinach Manicotti </li>
  <li>Pasta Primavera </li>
  <li>Wild Mushroom Ravioli in Thyme Butter</li>
  <li>Cauliflower Fried and Cooked</li>
  <li>Devilled Mushroom</li>
  <li>Brinjal Moju</li>
  <li>Pineapple Mustard Curry</li>
  <li>Yellow Dhal and Bombay Onion Curry Flavored with Turmeric</li>
  <li>Fried and Cooked Dhal</li>
  <li>Polos Black Curry Cooked with Chili </li>
</ul>

<h4> Chicken</h4>

<ul>
  <li>Fresh Coriander Flavored Chicken Curry </li>
  <li>Chicken Tikka Masala </li>
  <li>Chicken Marsala </li>
  <li>Jaffna Chicken Curry  </li>
  <li>Italian Herb Roasted Chicken  </li>
  <li>Honey Almond Chicken  </li>
  <li>Apple Brie Stuffed Chicken Breast  </li>
  <li>Grilled Chicken with Mushroom Sauce </li>
  <li>Mediterranean Chicken </li>
  <li>Chutney Flavored Fried Chicken Curry </li>
</ul>

<h4> Fish & Seafood</h4>

<ul>
  <li>Lime Ginger Grilled Salmon  </li>
  <li>Grilled Tuna Fish with Coriander Butter </li>
  <li>Crab Stuffed Flounder </li>
  <li>Fried and Cooked Prawn or Cuttlefish  </li>
  <li>Lobster Penne  </li>
  <li>Tandoori Marinated Grilled Prawns </li>
  <li>Mustard Cuttlefish Curry with Kathuru Muruga Leave  </li>
  <li>Fish Casserole  </li>
  <li>Fish Baked with Lemon Grass </li>
  <li>Fish Black Pepper with Vinegar</li>
</ul>

<h4> Rice / Noodles</h4>

<ul>
  <li>Steamed Basmati Rice  </li>
  <li>Yellow Rice </li>
  <li>Vegetable Biryani </li>
  <li>Vegetable Fried Rice   </li>
  <li>Buttered Noodles  </li>
  <li>Vegetable Fried Noodles </li>
  <li>Spinach Ravioli with Sage Butter </li>
  <li>Vegetable Rice with Fried Potato Stripes  </li>
  <li>Green Peas and Seafood Rice </li>
  <li>Wok Fried Chinese Noodles </li>
</ul>

<h4> Accompaniments </h4>

<ul>
  <li>Fresh Vegetable Medley </li>
  <li>Buttered Sweet Corn </li>
  <li>Fresh Broccoli Florets </li>
  <li>Roasted Garlic Mashed Potatoes    </li>
  <li>Whipped Sweet Potato  </li>
  <li>Seasoned Asparagus </li>
  <li>Brussels Sprout Medley </li>
  <li>Green Beans Almandine  </li>
  <li>Honey Glazed Baby Carrots  </li>
  <li>Honey Glazed Baby Carrots  </li>
</ul>

</div>
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


