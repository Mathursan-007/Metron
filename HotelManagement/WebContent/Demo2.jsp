<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">

<title>Insert title here</title>
</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@300&display=swap');

body {
    background: #fff;
    font-family: 'Roboto Condensed', sans-serif
}

.carousel-item {
    width: 100%
}

.price span {
    font-size: 18px
}

.cut {
    text-decoration: line-through;
    color: red
}

.icons i {
    font-size: 17px;
    color: green;
    margin-right: 2px
}
.offers i {
    color: green
}

.delivery i {
    color: blue
}

label.radio {
    cursor: pointer
}

label.radio input {
    position: absolute;
    top: 0;
    left: 0;
    visibility: hidden;
    pointer-events: none
}
label.radio span {
    padding: 2px 11px;
    margin-right: 3px;
    border: 1px solid #8f37aa;
    display: inline-block;
    color: #8f37aa;
    border-radius: 3px;
    text-transform: uppercase
}

label.radio input:checked+span {
    border-color: #8f37aa;
    background-color: #8f37aa;
    color: #fff
}

h1{
 
font-size:60px;
 
}
.text{
font-size:20px;
color:#545454;
line-height:30px;
}
 

</style>
<body>
<div class="container-fluid mt-5">
    <div class="row">
        <div class="col-md-5">
            <div class="carousel slide" data-ride="carousel" id="carousel-1">
                <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active"><img class="img-thumbnail w-100 d-block" src="images/pool5.jpg" alt="Slide Image" loading="lazy"></div>
                    
                </div>
                <div><a class="carousel-control-prev" href="#carousel-1" role="button" data-slide="prev"><span class="carousel-control-prev-icon"></span><span class="sr-only">Previous</span></a><a class="carousel-control-next" href="#carousel-1" role="button" data-slide="next"><span class="carousel-control-next-icon"></span><span class="sr-only">Next</span></a></div>
                <ol class="carousel-indicators">
                    <li data-target="#carousel-1" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-1" data-slide-to="1"></li>
                    <li data-target="#carousel-1" data-slide-to="2"></li>
                </ol>
            </div>
        </div>
        <div class="col-md-5">
            <h1>SWIMMING POOL</h1>
             
             
            <div class="d-flex align-items-center mt-4 offers mb-1"><span class="text">
lunge into the relaxed atmosphere that floats around not one, but two of our swimming pools. Feel all your fatigue wash away and a sense of calm take over your senses as you swim a few laps.

The garden pool located by Breeze Bar has a tropical air, with palm trees swaying around it. Take a dip, lounge around, sunbathe, sip on a cocktail, do a few rounds of shisha, and unwind without a care.

Our rooftop pool, located at the Angsana Spa complex has a more therapeutic vibe. Dive into it, do a few strokes till you feel your appetite building, head to the Jacuzzi to relax, and then finally dig into a healthy snack at The Café.



 
            </span> </div>
             
            <hr>
            
            <div><span class="font-weight-bold">
            <h1>Opening Hours<h1>

 <h2>10 am to 9 pm</h2>

 
            </span> 
             
        </div>
    </div>
</div>
</body>
</html>