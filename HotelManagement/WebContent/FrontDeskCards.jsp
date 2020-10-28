<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<link rel="stylesheet" href="styles/RoomAvailability.css">


</head>
<body class="viii">
<%
   String un=(String)session.getAttribute("un");
   if(un!=null){%>

	<%@include file="Header2.jsp" %>

		<div class="sections pb-0 ase">
    <div class="container">
        <div class="row">
        
        
        
            <div class="col-lg-4 col-sm-6 mb-lg- mb-4" id="Room">
                <div class="hover-bg-primary text-center position-relative px-4 py-5 rounded-lg shadow vid"> <img src="https://thumbs.dreamstime.com/b/door-handle-logo-vector-door-handle-icon-logo-vector-174095367.jpg" class="img-fluid" alt="feature-image">
                    <h5 class="pt-5 pb-3 text-capitalize card-title">Room Management</h5>
               		
                </div>
            </div>
          
            <div class="col-lg-4 col-sm-6 mb-lg- mb-4" id="Extra">
                <div class="hover-bg-primary text-center position-relative px-4 py-5 rounded-lg shadow vid"> <img src="https://png.pngtree.com/png-vector/20191105/ourmid/pngtree-spa-and-massage-icon-png-image_1959494.jpg" class="img-fluid" alt="feature-image">
                    <h5 class="pt-5 pb-3 text-capitalize card-title">Extra Service Management</h5>
               		
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 mb-lg- mb-4" id="Transport">
                <div class="hover-bg-primary text-center position-relative px-4 py-5 rounded-lg shadow vid"> <img src="https://png.pngtree.com/element_our/png_detail/20190103/car-line-black-icon-png_309315.jpg"  class="img-fluid" alt="feature-image">
                    <h5 class="pt-5 pb-3 text-capitalize card-title">Transport Management</h5>
                    
                
                </div>
            </div>
        </div>
    </div>
</div>


	<script type="text/javascript">

	document.getElementById("Room").onclick = function(){
		location.href = "FrontDeskRoomDashboard.jsp";
	}
	
	document.getElementById("Extra").onclick = function(){
		location.href = "ExtraserviceDashboard.jsp";
	}
	
	document.getElementById("Transport").onclick = function(){
		location.href = "TransportDashboard.jsp";
	}
		
</script>
   <%}else if(un==null){

	response.sendRedirect("Login.jsp");

}%> 
</body>
</html>