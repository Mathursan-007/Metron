<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.service.IRoom" %>  
<%@ page import="com.service.RoomImpl"%>   
<%@ page import="com.model.Room" %>   

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List rooms</title>
<link rel="stylesheet" href="styles/ListRooms.css">
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<link rel="stylesheet" href="styles/AddRoom.css">
</head>
<body >
<div class="bree">

	<section class="ListingRooms">
	  <!--for demo wrap-->
	  <span class="jd"> <h1>Room Details</h1> </span>
	  
		  <div class="tbl-header">
		    <table cellpadding="0" cellspacing="0" border="0" class="Dubu">
		      <thead>
		        <tr>
		          	   <th>Room NO</th>
		               <th>Room Type Name</th>
		               <th>Room Size</th>
		               <th>Max Guests</th>
		               <th>Cost Per Day</th>
		               <th>Action</th>
		        </tr>
		      </thead>
		    </table>
		  </div>
		  
		  <div class="tbl-content">
		    <table cellpadding="0" cellspacing="0" border="0" class="Dubu">
		      <tbody class="hovEvent">
		        
			          <%
		              IRoom iroomservice=new RoomImpl();
		              ArrayList<Room> Rooms=new ArrayList<>();
		              
		              Rooms=iroomservice.listRooms();
		              
		              if(Rooms.isEmpty()) { %>
		            	  
		            	  <h1 class="errorMessage">There are no rooms yet</h1>
		            	  
		             <% }else{%>
		             
		            <%  for(Room room:Rooms){ %>
		            <tr>
		               <td><%=room.getRoomNo() %> </td> 
		               <td><%=room.getRoomTypeName() %></td> 
		               <td><%=room.getRoomSize() %></td>
		               <td><%=room.getMaxGuests() %></td>
		               <td><%=room.getCostPerDay() %></td>
		               <td class="bisca">
			               <form action="./GetRoom" method="post">
			               <input type="hidden" name="roomno" value="<%=room.getRoomNo() %>">
			               <input class="btn btn-info" type="submit" value="Edit">
			               </form>
			               
			               <form action="./DeleteRoom" method="post" style="margin-top:5px;">
			               <input type="hidden" name="roomno" value="<%=room.getRoomNo() %>">
			               <input class="btn btn-danger" type="submit" value="Delete">
			               </form>
		               </td>
		            </tr>
		            <%} }%>
		        
		      </tbody>
		    </table>
		  </div>
	  		<div class="buCss">
			  <button id="myBtn" class="btn btn-success"><i class="fa fa-plus fa-fw"></i> Add New Room</button>
			</div>
	
	</section> 
	
	<div id="myModal" class="modal">

		  <!-- Modal content -->
		  <div class="modal-content">
		    <span class="close">&times;</span>
		    	<!-- Add Room pop up -->
		    	
		    	<div class="register-photo">
		    <div class="form-container">
		        <div class="image-holder"></div>
		        
		        <form action="./AddRoom" method="post">
		            <h2 class="text-center"><strong>Create</strong> a room.</h2>
		            <div class="form-group">
		            	<input class="form-control" type="text" name="roomNo" placeholder="Room No" required>
		            </div>
		            
		            <div class="form-group">
		            	<select class="form-control" name="roomSize" id="" required>
						    <option value="">--Please choose a room size--</option>
						    <option value="Small">Small (1 bed)</option>
						    <option value="Medium">Medium (2 beds)</option>
						    <option value="Large">Large (3 beds)</option>
						</select>
		            </div>
		            
		            <div class="form-group">
		            	<select class="form-control" name="roomType" id="" required>
						    <option value="">--Please choose the room type--</option>
						    <option value="1">Standard Room</option>
						    <option value="2">Platinum Room</option>
						    <option value="3">Elite Room</option>
						</select>
		            </div>
		            
		            <div class="form-group">
		            <label for="room type-select">Set Maximum no of guests</label>
		            	<input class="form-control" type="range" name="MaxGuests" min="1" max="5" onchange="updateTextInput(this.value);">
		            </div>
		            
		            <p id="textInput" style="text-align:center">2</p>
		            
		            <div class="form-group">
		                <div class="form-check">
		                <label class="form-check-label">
		                	<input class="form-check-input" type="checkbox" id="checkme" >I agree to the license terms.
		                </label></div>
		            </div>
		            <div class="form-group">
		            <input class="btn btn-success btn-block" type="submit" id="sendNewSms" value="Add Room">
		            </div>
		            
		        </form>
		        
		    </div>
		</div>
		    	
		    	
		  </div>

	</div>

</div>


	<script>
	
	// Get the modal
	var modal = document.getElementById("myModal");

	// Get the button that opens the modal
	var btn = document.getElementById("myBtn");

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];

	// When the user clicks the button, open the modal 
	btn.onclick = function() {
	  modal.style.display = "block";
	}

	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
	  modal.style.display = "none";
	}

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	  if (event.target == modal) {
	    modal.style.display = "none";
	  }
	}
	document.getElementById('textInput').innerHTML=3; 
	function updateTextInput(val) {
        document.getElementById('textInput').innerHTML=val; 
      }
	
	var checker = document.getElementById('checkme');
	var sendbtn = document.getElementById('sendNewSms');
	sendbtn.disabled = true;
	checker.onchange = function() {
		if(this.checked){
		    sendbtn.disabled = false;
		} else {
		    sendbtn.disabled = true;
		}
	};
	
	
	</script>
</body>
</html>