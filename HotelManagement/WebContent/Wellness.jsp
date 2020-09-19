<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.util.ArrayList" %>
<%@ page import="com.service.ExtraService" %>  
<%@ page import="com.service.ExtraServiceImp"%> 
<%@ page import="com.model.Gym" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
	<link rel="stylesheet" href="styles/wellness.css">
	
</head>
<body>
  
       <div><%@include file="Header.jsp" %></div>
  
<div class="ssss" >
    <h1 style="font-size:200px;">WELLNESS</h1>
    <div class="boxes">
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
    </div>
</div>
<br><br>
<%@include file="Demo.jsp" %><br><br>
    <div class="container d-flex justify-content-center">
              <div class="row">
<%
              ExtraService gym=new ExtraServiceImp();
              ArrayList<Gym> pack=new ArrayList<>();
              
              pack=gym.listgym();
              
          
             for(Gym g:pack){ %>


         <div class="col-md-4">
             <div class="card">
             
               <%if(g.getName().equals("Beginner")) {%>
                 <div> <img src="images/gym5.jpg" class="img-responsive image"> </div>
                <% } else if(g.getName().equals("Intermidate")) { %> 
                 <div> <img src="images/gym6.jpg" class="img-responsive image"> </div>
                 <% } else if(g.getName().equals("Masters")) { %> 
                 <div> <img src="images/gym7.jpg" class="img-responsive image"> </div>
                 <% } %>
                 <p class="rating">1.3</p>
                 <div class="card-body">
                     <h5 class="card-title"><%=g.getName()%></h5>
                     <p class="card-text"> Best for teenegers</p>
                     <p class="card-text">Workout time 20minutes perday </p>
                     <p class="card-text"><%=g.getPrice()%></p>
                     
                 </div>
             </div>
         </div>
          
         <% } %>
            </div>
         </div>
         
        <!--  <div class="col-md-4">
             <div class="card">
                 <div> <img src="images/gym6.jpg" class="img-responsive image"> </div>
                 <p class="rating">9.6</p>
                 <div class="card-body">
                     <h5 class="card-title"> </h5>
                     <p class="card-text"> Best for Adults</p>
                     <p class="card-text">Workout time 1hour perday </p>
                     <p class="card-text"> </p>
                 </div>
             </div>
         </div>
         <div class="col-md-4">
             <div class="card">
                 <div> <img src="images/gym7.jpg" class="img-responsive image"> </div>
                 <p class="rating">8.2</p>
                 <div class="card-body">
                     <h5 class="card-title"> </h5>
                     <p class="card-text"> Best for GYM Lovers </p>
                     <p class="card-text">Workout time 2hour perday </p>
                     <p class="card-text"> </p>
                 </div>
             </div>
         </div>
     </div>
 </div>
  -->
 <hr>
<div class="container">
    <div class="row">
        <div class="one-third col-md-4"> <a href="#" class="img-caption">
                <figure> <img src="images/spa3.jpg" alt="" />
                    <figcaption>
                        <h3>DeepTissue Massage</h3> <span>Deep tissue massage will use firmer pressure and also include focused work on areas that are especially tight.<br> <br>Price:13000LKR </span>
                    </figcaption>
                </figure>
            </a> </div>
        <div class="one-third col-md-4"> <a href="#" class="img-caption">
                <figure> <img src="images/spa4.jpg" alt="" />
                    <figcaption>
                        <h3>Swedish Massage</h3> <span>Swedish massage typically covers the whole body with firm strokes but without much deep, focused work.<br> <br>Price:5000LKR</span>
                    </figcaption>
                </figure>
            </a> </div>
        <div class="one-third col-md-4"> <a href="#" class="img-caption">
                <figure> <img src="images/spa5.jpg" alt="" />
                    <figcaption>
                        <h3>Aromatherapy Massage</h3> <span>which uses essential oils to achieve different purposes, most commonly relaxation.<br> <br>Price:20000LKR</span>
                    </figcaption>
                </figure>
            </a> </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="one-third col-md-4"> <a href="#" class="img-caption">
                <figure> <img src="images/spa6.jpg" alt="" />
                    <figcaption>
                        <h3>Thai Massage</h3> <span>you might want to branch out to different types of massage, which may or may not be available, like ​Thai massage or reflexology<br> <br>Price:15000LKR</span>
                    </figcaption>
                </figure>
            </a> </div>
        <div class="one-third col-md-4"> <a href="#" class="img-caption">
                <figure> <img src="images/spa8.jpg" alt="" />
                    <figcaption>
                        <h3>LED Light Therapy</h3> <span>extras might include a gentle peel, an ampule of a special serum, more time for scalp and foot massage, or special equipment<br> <br>Price:10000LKR </span>
                    </figcaption>
                </figure>
            </a> </div>
        <div class="one-third col-md-4"> <a href="#" class="img-caption">
                <figure> <img src="images/spa9.jpg" alt="" />
                    <figcaption>
                        <h3>HotStone Massage</h3> <span>Hot stone massage uses smooth, rounded basalt stones that have been heated in water and retains their heat well.<br> <br>Price:6000LKR</span>
                    </figcaption>
                </figure>
            </a> </div>
    </div>
</div>
<%@include file="Demo1.jsp" %><br><br><hr>
<%@include file="Demo2.jsp" %>
<button onclick="topFunction()" id="myBtn" title="Go to top">Scroll up</button>
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
 
</html>