<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="styles/home.css">


  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstraps.min.css">
  <link rel="stylesheet" href="assets/theme/css/style1.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional1.css" type="text/css">
  
  
  
  <link rel="stylesheet" href ="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
	<link rel="stylesheet" href="styles/homestyle.css">

	
<script src= "https://code.jquery.com/jquery-3.3.1.slim.min.js"> </script>
<script src= "https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"> </script>
<script src= "https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"> </script>

</head>

<body>
	
	<!-- Nav & Slider -->
	
<% 	
	 if(session.getAttribute("un")!=null){%>
		 <%@include file="Header2.jsp" %>
	   
  <% }else{%>
  <%@include file="Header.jsp" %>
  <% } %>
		
	
		
		<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"> </li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"> </li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"> </li>
			<li data-target="#carouselExampleIndicators" data-slide-to="3"> </li>
			<li data-target="#carouselExampleIndicators" data-slide-to="4"> </li>
		</ol>
		
		<div class="carousel-inner">
			<div class="carousel-item active">
			<img src="images/room1.jpg" class="d-block w-100" alt="...">
			
			<div class="carousel-caption d-none d-md-block">
				<h5 class ="animated bounceInRight bas" style="animation-delay: 1s"> Rooms </h5>
				<p class ="animated bounceInLeft bas" style="animation-delay: 2s" > This is our hotel and we don't have nothing to do!!!! </p>
			
			   </div> 
				
			</div>
			
			<div class="carousel-item">
			<img src="images/wed5.jpg" class="d-block w-100" alt="...">
			
			<div class="carousel-caption d-none d-md-block">
				<h5 class ="animated slideInDown bas" style="animation-delay: 1s"> Events </h5>
				<p class ="animated fadeInUp bas" style="animation-delay: 2s"> This is our hotel and we don't have nothing to do!!!! </p>
				
			   </div>
			   
			</div>
			
			<div class="carousel-item">
			<img src="images/rest.jpg" class="d-block w-100" alt="...">
			 
			<div class="carousel-caption d-none d-md-block">
				<h5 class ="animated zoomIn ba" style="animation-delay: 1s"> Restaurant </h5>
				<p class ="animated fadeInLeft ba" style="animation-delay: 2s"> This is our hotel and we don't have nothing to do!!!! </p>
				 
			   </div> 
			   
			</div>
			
			<div class="carousel-item">
			<img src="images/Spa1.jpg" class="d-block w-100" alt="...">
			
			<div class="carousel-caption d-none d-md-block">
				<h5 class ="animated zoomIn ba" style="animation-delay: 1s"> Extra Services </h5>
				<p class ="animated fadeInLeft ba" style="animation-delay: 2s"> This is our hotel and we don't have nothing to do!!!! </p>
				<p class ="animated zoomIn" style="animation-delay: 3s"> <a href="Wellness.jsp" class="btn btn-secondary"> More info </a> </p> 
			   </div> 
			   
			</div>
			
			<div class="carousel-item">
			<img src="images/tr1.jpg" class="d-block w-100" alt="...">
			
			<div class="carousel-caption d-none d-md-block">
				<h5 class ="animated zoomIn ba" style="animation-delay: 1s"> Transport Service </h5> 
				<p class ="animated fadeInLeft ba" style="animation-delay: 2s"> This is our hotel and we don't have nothing to do!!!! </p>
		
			   </div> 
			   
			</div>	
			
		</div>
		
		<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"> </span>
			<span class="sr-only">Previous </span>
		</a>
		
		<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
		<span class="carousel-control-next-icon" aria-hidden="true"> </span>
			<span class="sr-only">Next </span>
		</a>
	</div>
	
	
	
	<!-- Rooms,events and restaurant cards -->
	<section class="features8 cid-s6WIoVrrkW mbr-parallax-background" id="features8-t">

    <div class="mbr-overlay" style="opacity: 0.2; background-color: rgb(35, 35, 35);">
    </div>

    <div class="container">
        <div class="media-container-row">

            <div class="card  col-12 col-md-6 col-lg-4">
                <div class="card-img">
                     <img src="images/room.jpg" alt="no image" style="border-radius: 50%;width:80%;height:150px;" >
                </div>
                <div class="card-box align-center">
                    <h4 class="card-title mbr-fonts-style display-7">
                        Room Booking</h4>
                    <p class="mbr-text mbr-fonts-style display-7">
                       We offer the most finest rooms and comfort that you have ever experienced&nbsp;</p>
                    <div class="mbr-section-btn text-center">
                        <a href="RoomCustomer.jsp" class="btn btn-secondary display-4">Reserve Now</a></div>
                </div>
            </div>

            <div class="card  col-12 col-md-6 col-lg-4" >
                <div class="card-img" >
                    <img src="images/event.jpg" alt="no image" style="border-radius: 50%;width:80%;height:150px;" >
                </div>
                <div class="card-box align-center" >
                    <h4 class="card-title mbr-fonts-style display-7">
                        Event Booking</h4>
                    <p class="mbr-text mbr-fonts-style display-7">
                       Perfect for corporate events, meetings, weddings, galas, fundraisers, educational events and more.
                    </p>
                    <div class="mbr-section-btn text-center"><a href="Weddings.jsp" class="btn btn-secondary display-4">
                            Reserve Now
                        </a></div>
                </div>
            </div>

            <div class="card  col-12 col-md-6 col-lg-4">
                <div class="card-img">
                   <img src="images/restaurant.jpg" alt="no image" style="border-radius: 50%;width:80%;height:150px;" >
                </div>
                <div class="card-box align-center">
                    <h4 class="card-title mbr-fonts-style display-7">
                        Restaurant Booking</h4>
                    <p class="mbr-text mbr-fonts-style display-7">
                       Come dine at our restaurant and experience the taste of the cuisines we have to offer</p>
                    <div class="mbr-section-btn text-center"><a href="BookTable.jsp" class="btn btn-secondary display-4">
                            Reserve Now
                        </a></div>
                </div>
            </div>

            
        </div>
    </div>
</section>
	
	
	<!-- About Us -->
		 <div class="s" id="about">
		  <div class="about-section">
			     <div class="inner-container">
						<h1>About Us</h1>
							<p class="text">
							Metron hotels are midscale properties aimed at creating some buzz and zest downstairs and peace and quiet upstairs.
				
							At Metron, everything we do is designed to offer a great sleep experience for smart, savvy travellers on the go. We believe that when it comes to sleep, it is all about quality, not quantity. That is why we invest in quality sleep amenities so you can get a great night rest. Our signature beds, noisefree rooms and blackout curtains are just the basics. In the morning, you will wake up refreshed, recharged and renergised with a breakfast boost from EAT to send you out to face the day.
							
							We know our guests are hungry for new experiences and always on the lookout for new discoveries. We stay in the know about the local best so you form a connection with the places you visit  after all, we call them home. At Metron, we seek out exceptional cultural sites and the tastiest local food, so that you can easily explore the essence of a place. Our hotels are not just places to get away  they are gateways into the best each destination has to offer.
							
							Sleep. Connect. Explore. However you spend your day, Metron wants you to wake up feeling inspired, recharged, and ready to roll.
							</p>
				  </div>
			</div>
	 </div>
	
	<div  id="team"></div>
	<br>
	<!-- Our Team -->
	<section class="team" >
		<div class="container">
		<h1 class="b" >OUR TEAM</h1>
		<div class="row">
			<div class="col-md-3 profile text-center">
				<div class="img-box">
				<img src="images/mngr.jpg"  width="250px" height="350px">
				<ul>
					<a href="#"></a><li><i class="fa fa-facebook"></i></li></a>
					<a href="#"></a><li><i class="fa fa-twitter"></i></li></a>
					<a href="#"></a><li><i class="fa fa-linkedin"></i></li></a>
				</ul>
				</div>
					<h2>Sabesan Ganesalingam</h2>
					<h3>Founder / CEO</h3>
					<p> </p>
			</div>
				<div class="col-md-3 profile text-center">
				<div class="img-box">
				<img src="images/man1.jpeg" class="img-responsive" width="250px" height="350px">
				<ul>
					<a href="#"></a><li><i class="fa fa-facebook"></i></li></a>
					<a href="#"></a><li><i class="fa fa-twitter"></i></li></a>
					<a href="#"></a><li><i class="fa fa-linkedin"></i></li></a>
				</ul>
				</div>
					<h2>Mathursan Balathas</h2>
					<h3> Business Head</h3>
					<p> </p>
			</div>
			<div class="col-md-3 profile text-center">
				<div class="img-box">
				<img src="images/man2.jpg"    width="250px" height="350px">
				<ul>
					<a href="#"></a><li><i class="fa fa-facebook"></i></li></a>
					<a href="#"></a><li><i class="fa fa-twitter"></i></li></a>
					<a href="#"></a><li><i class="fa fa-linkedin"></i></li></a>
				</ul>
				</div>
					<h2>Arosh Segar</h2>
					<h3>Marketing Head</h3>
					<p> </p>
			</div>
			<div class="col-md-3 profile text-center">
				<div class="img-box">
				<img src="images/mathura.png" class="img-responsive" width="250px" height="350px">
				<ul>
					<a href="#"></a><li><i class="fa fa-facebook"></i></li></a>
					<a href="#"></a><li><i class="fa fa-twitter"></i></li></a>
					<a href="#"></a><li><i class="fa fa-linkedin"></i></li></a>
				</ul>
				</div>
					<h2>Mathura Loganathan</h2>
					<h3>Service Head</h3>
					<p></p>
			</div>
		
		</div>
		
		</div>
	</section>
	
	<!-- Contact us -->
	<section id="zooka">
			<br><br>
			<div style="margin-top:5%;"></div>
			<h1 class="b">CONTACT US</h1>
			<div class="stf">
			
			<div class="contact-infos">
			 
			<div class="cards">
			<i class="fa fa-map-marker" aria-hidden="true" ></i>
				<p>Address</p>
				 <p>Colombo-05, SriLanka</p>
			</div>	 
			
			<div class="cards">
			<i class="fa fa-phone" aria-hidden="true"></i>
				<p>Phone</p>
				<p>+94 111 111 111</p>
			</div>
			
			<div class="cards">
			<i class="fa fa-envelope" aria-hidden="true"></i>
				<p>Email</p>
				<p>info@metron.com</p>
			</div>
			
			
			</div>
			
			</div>
	</section>
	
	<!-- Map & footer -->
	  <section class="map1 cid-s6WMM9LCmi" id="map1-x">
    <div class="google-map"><iframe frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyAEIpgj38KyLFELm2bK9Y7krBkz1K-cMq8&amp;q=place_id:ChIJJX_iaUJZ4joRiAlsHxxqvE8" allowfullscreen=""></iframe></div>
</section>

	<!-- Footer -->
	<%@include file="Footer.jsp" %>

</body>
</html>