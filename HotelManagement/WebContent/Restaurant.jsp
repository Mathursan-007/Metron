<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Restaurant</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="styles/Restaurant.css">
<link href='https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'>

<script src= "https://code.jquery.com/jquery-3.3.1.slim.min.js"> </script>
<script src= "https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"> </script>
<script src= "https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"> </script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js'></script>
<script src= "https://code.jquery.com/jquery-3.3.1.slim.min.js"> </script>
<script src= "https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"> </script>

<script>
var i='${value}';
		
		if(i=="Table Reserved"){
		
			alert('Table Reserved');
		
		}
		
</script>

</head>

<body>

	<%@include file="Header.jsp" %>

	<div style="width:100%;height:80px;background:#c8c9cc;padding:12px;">
	
	</div> 

	<div class="jii">
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
		     <div>
		        <div class="a"></div>
		        <div class="b"></div>
		        <div class="c"></div>
	         </div>
		  </div>
		  <div class="carousel-item">
		     <div>
				<div class="d"></div>
				<div class="e"></div>
				<div class="f"></div>
	        </div>
		  </div>
		  <div class="carousel-item">
		    <div>
				<div class="g"></div>
				<div class="i"></div>
	       </div> 
		  </div>
		  <div class="carousel-item">
		     <div>
				<div class="j"></div>
			    <div class="k"></div>
	        </div>
		  </div>
		   <div class="carousel-item">
		     <div>
				<div class="l"></div>
			    <div class="m"></div>
			    <div class="n"></div>
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
		
    <div class="container" style="padding-top:100px;">
    <div class="row"> </div>
    <h1 style="text-align: center">
        <font color="White">Tables</font>
    </h1>
    <hr color="white"> <br>
    <div class="row row-margin-bottom">
        <div class="col-md-5 no-padding lib-item" data-category="view">
            <div class="lib-panel">
                <div class="row box-shadow">
                    <div class="col-md-6"> <img class="lib-img-show" src="images/booth.jpg"  style="height:180px;"> </div>
                    <div class="col-md-6">
                        <div class="lib-row lib-header"> Booth <div class="lib-header-seperator"></div>
                        </div>
                        <div class="lib-row lib-desc">Booth seating offer better privacy, more comfort, more protection from traffic, more coziness, and more room than chairs do. </div>
                    </div>
                </div>
            </div>
            <div class="middle">
                   <div><a href="BookTable.jsp"><button class="btn btn-primary" style="float:right;padding:10px;width:200px;"> Book Seat</button></a></div>
            </div>
        </div>
        <div class="col-md-1"></div>
        <div class="col-md-5 no-padding lib-item" data-category="view">
            <div class="lib-panel">
                <div class="row box-shadow">
                    <div class="col-md-6"> <img class="lib-img-show" src="images/outdoor.jpg" style="height:180px;"> </div>
                    <div class="col-md-6">
                        <div class="lib-row lib-header">Outdoor<div class="lib-header-seperator"></div>
                        </div>
                        <div class="lib-row lib-desc">A good option to relax your self where you can have your meals in an open space while feeling the fresh air .</div>
                    </div>
                </div>
                
            </div>
            <div class="middle">
                   <div><a href="BookTable.jsp"><button class="btn btn-primary" style="float:right;padding:10px;width:200px;"> Book Seat</button></a></div>
                 </div>
        </div>
    </div>
</div>
 <div class="container">
    <div class="row"> </div>
    <div class="row row-margin-bottom">
        <div class="col-md-5 no-padding lib-item" data-category="view">
            <div class="lib-panel">
                <div class="row box-shadow">
                    <div class="col-md-6"> <img class="lib-img-show" src="images/normal.jpg"> </div>
                    <div class="col-md-6">
                        <div class="lib-row lib-header"> Casual <div class="lib-header-seperator"></div>
                        </div>
                        <div class="lib-row lib-desc">A good option when you are having a formal meeting with someone or dining in with few people for a casual meetup.</div>
                    </div>
                </div>
               
            </div>
             <div class="middle">
                   <div><a href="BookTable.jsp"><button class="btn btn-primary" style="float:right;padding:10px;width:200px;"> Book Seat</button></a></div>
                 </div>
        </div>
        <div class="col-md-1"></div>
        <div class="col-md-5 no-padding lib-item" data-category="view">
            <div class="lib-panel">
                <div class="row box-shadow">
                    <div class="col-md-6"> <img class="lib-img-show" src="images/familytable.jpg" style="height:180px;"> </div>
                    <div class="col-md-6">
                        <div class="lib-row lib-header">Family Table<div class="lib-header-seperator"></div>
                        </div>
                        <div class="lib-row lib-desc"> Family meals offer the opportunity to connect with each other, communicate about family happenings, and give each other time and attention. </div>
                    </div>
                </div>
               
            </div>
             <div class="middle">
                   <div><a href="BookTable.jsp"><button class="btn btn-primary" style="float:right;padding:10px;width:200px;"> Book Seat</button></a></div>
                 </div>
        </div>
    </div>
</div>
<%@include file="Footer.jsp" %>	
</div>
</body>
</html>