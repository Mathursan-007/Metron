<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		<title>ExtraServiceDashboard</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		
		<link rel="stylesheet" href ="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
			<script src="scripts/nav.js"></script>
		
<style>
.vidya{
background: rgb(190,189,203);
background: radial-gradient(circle, rgba(190,189,203,1) 0%, rgba(174,174,221,1) 100%, rgba(121,148,153,1) 100%);
}
</style>
	
	<link rel="stylesheet" href="styles/dropdown.css">
<script src= "https://code.jquery.com/jquery-3.3.1.slim.min.js"> </script>
<script src= "https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"> </script>
<script>
var i=${value};
		
		if(i==2){
			
			window.location.href = 'ExtraserviceDashboard.jsp#Butt2';
		}else if(i==3){
			
			window.location.href = 'ExtraserviceDashboard.jsp#Butt3';
		}  
</script>
</head>
<body class="w3-light-grey">
<%
   String un=(String)session.getAttribute("un");
   if(un!=null){%>

		<%@include file="Header2.jsp" %>
		<script>
		document.getElementById("try").className = " ";
		</script>
		
		<!-- Top container -->
		<div style="margin-top:84px;">
			<div class="w3-bar w3-top w3-black w3-large" style="z-index:4;margin-top:80px;">
			  <button class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey" onclick="w3_open();"><i class="fa fa-bars"></i>  Menu</button>
			
			</div>
			
			<!-- Sidebar/menu -->
			<nav class="w3-sidebar w3-collapse w3-animate-left vidya" style="z-index:3;width:300px;" id="mySidebar"><br>
			  <div class="w3-container w3-row">
			    <div class="w3-col s4">
			      <img src="images/user.jpg" style="width:80px;height:80px;border-radius:50%;margin-top:30px;margin-left:90px;">
			    </div>
			  </div>
			  
			  <div class="w3-container" style="margin-top:20px;">
			    <h5 style="text-align:center;">Welcome User</h5>
			  </div>
			  <div class="w3-bar-block">
			    <a href="#" class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black" onclick="w3_close()" title="close menu"><i class="fa fa-remove fa-fw"></i>  Close Menu</a>
			    <a href="#Butt1" id="test1" class="w3-bar-item w3-button w3-padding " onclick="button1()"></a>
			    <a href="#Butt2" id="test2" class="w3-bar-item w3-button w3-padding" onclick="button2()"><i class="fa fa-leaf fa-fw"></i>SPA</a>
			    <a href="#Butt3" id="test3" class="w3-bar-item w3-button w3-padding" onclick="button3()"><i class="fa fa-heartbeat fa-fw"></i>GYM</a>
			    <a href="#Butt4" id="test4" class="w3-bar-item w3-button w3-padding" onclick="button4()"><i class="fa fa-plus-circle fa-fw"></i>SPA RESERVATION</a>
			    <a href="#Butt5" id="test5" class="w3-bar-item w3-button w3-padding" onclick="button5()"><i class="fa fa-plus-circle fa-fw"></i>GYM RESERVATION</a>
			    <a href="#Butt6" id="test6" class="w3-bar-item w3-button w3-padding" onclick="button6()"><i class="fa fa-money fa-fw"></i>SPA PAYMENT</a>
			    <a href="#Butt7" id="test7" class="w3-bar-item w3-button w3-padding" onclick="button7()"><i class="fa fa-money fa-fw"></i>GYM PAYMENT</a>   
			  	
			  	
			  
			  </div>
			</nav>
			
			
			<!-- Overlay effect when opening sidebar on small screens -->
			<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>
			
			<!-- !PAGE CONTENT! -->
			<div class="w3-main" style="margin-left:300px;margin-top:43px; ">
			
			
			<div style="height:800px; background:#8f9dd7;" id="Butt1" >
			</div>
			
			
			
			<div style="background:#8f9dd7;height:1500px;" id="Butt2">
			 
			<%@include file="ListSpa.jsp" %> 
			
			
			
			</div>
			
			
			
			<div style="background:#8f9dd7;height:1500px;padding-top:100px;" id="Butt3"> 
			<%@include file="Listgym.jsp" %>
			</div>
			
			
			 
				
			<div style="background:#8f9dd7;height:1500px;" id="Butt4">
			<%@include file="ListSpaR.jsp"%>              
                                                                   			                                           
			</div>
			<div style="background:#8f9dd7;height:1500px;" id="Butt5">
			               
                                 <%@include file="ListGymR.jsp"%>                                  			                                           
			</div>
			<div style="background:#8f9dd7;height:1500px;" id="Butt6">
			         <%@include file="ListSPayment.jsp"%>       
                                                                   			                                           
			</div>
			<div style="background:#8f9dd7;height:1500px;" id="Butt7">
			         <%@include file="ListGpayment.jsp" %>       
                                                                   			                                           
			</div>
			

			</div> 
		</div>
		<script src="scripts/WellnessDash.js"></script>
<script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput1");
  filter = input.value.toUpperCase();
  table = document.getElementById("customers1");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>
 
   <%}else if(un==null){

	response.sendRedirect("Login.jsp");

}%> 
		
</body>
</html>
