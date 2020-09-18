<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add room</title>
<link rel="stylesheet" href='https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css'>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<link rel="stylesheet" href="styles/AddRoom.css">
</head>
<body>

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

	<script>
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