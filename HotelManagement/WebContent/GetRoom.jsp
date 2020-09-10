<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Room" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="styles/GetRoom.css">

</head>
<body class="sett">

	<%Room room =(Room)request.getAttribute("room");%>
	
	<%if(room==null) { %>
	
	
	
	<%}else{ %>

	<div class="padding container d-flex justify-content-center backgg">
    <div class="col-md-10 col-md-offset-1">
        <form class="signup-form" action="./UpdateRoom" method="post">
            <h2 class="text-center">ROOM DETAILS OF ROOM NO. <%=room.getRoomNo()%></h2>
            <hr>
            <div class="form-group"> 
	            <label for="room type-select">Room type :</label>
	            	<select class="form-control" name="roomType" id="" required>
				    <option value="<%=room.getRoomTypeNo()%>">Default</option>
				    <option value="3">Standard Room</option>
				    <option value="2">Premium Room</option>
				    <option value="1">Elite Room</option>
				</select>
            </div>
            
            <div class="form-group spaccc"> 
	            <label for="room size-select">Room size :</label>
	            	<select class="form-control" name="roomSize" id="" required>
				    <option value="<%=room.getRoomSize()%>">Default</option>
				    <option value="Small">Small (1 bed)</option>
				    <option value="Medium">Medium (2 beds)</option>
				    <option value="Large">Large (3 beds)</option>
				</select>
            </div>
            
            <div class="form-group spaccc"> 
	            <label for="room type-select">Set Maximum no of guests : </label>  
	            	<input class="form-control" type="range" name="MaxGuests" min="1" max="5" value="<%=room.getMaxGuests()%>" onchange="updateTextInput(this.value);"> 
            </div>
            
            <input type="hidden" name="roomno" value="<%=room.getRoomNo() %>">
            
            <p id="textInput" style="text-align:center;height:10px;"></p>
            
            
            <div class="form-group text-center spaccc"> 
            	<button type="submit" class="btn btn-blue btn-block">Save Changes</button> 
            </div>
        
        </form>
        
    </div>
</div>

	<script>
		i=2
		
		
		
		
		</script>


<%} %>
<script>
document.getElementById('textInput').innerHTML=3; 
	function updateTextInput(val) {
        document.getElementById('textInput').innerHTML=val; 
      }
	
	</script>

</body>
</html>