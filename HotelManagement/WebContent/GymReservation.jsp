<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.util.ArrayList" %>
<%@ page import="com.service.ExtraService" %>  
<%@ page import="com.service.*"%> 
<%@ page import="com.model.*" %>
<%@ page import="com.model.Spa"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
<style>

h2{
 text-align: center;
 font-style:italic;
 font-family:monospace;
 font-size:220%;
 }
 
 .expense{
  border-radius: 3px;
  background-color: #B0C4DE;
  padding: 20px;
  width: 50%;
  margin-left: 23%;
 
  box-shadow: 0px 1px 10px 1px #000;
  overflow: hidden;
  display: inline-block;
 
}
 

.expense input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;

}

.expense input[type=number]{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;

}

.expense input[type=date]{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;

}

.expense input[type=submit] {
 
  width: 200px;
  background-color: #1c2e4a;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 10px;
  cursor: pointer;
  margin-left:36%;
  text-transform:uppercase;
  font-size: 16px;
  font-weight:400;
}

.expense input[type=submit]:hover {
  background-color: #008040;

}
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 10px; /* Location of the box */
  left: 0;
  top: 5%;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}
.modal-content {
  background-color: #B0C4DE;
  
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 50%;
}

/* The Close Button */
.close2 {
  color: #000;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.zzzzz{
padding-bottom:200px;
}

.close2:hover,
.close2:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
.wrapper {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    position: absolute;
    left: 90%;
    
}

.pulse {
    width: 70px;
    height: 70px;
    background-color:black;
    border-radius: 30%;
    position: relative;
    animation: animate 3s linear infinite
}
.pulse i {
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 30px;
    color: #fff;
    height: 100%;
    cursor: pointer
}
@keyframes animate {
    0% {
        box-shadow: 0 0 0 0 rgb(2, 109, 74, 0.7), 0 0 0 0 rgb(255, 109, 74, 0.7)
    }

    40% {
        box-shadow: 0 0 0 50px rgb(2, 109, 74, 0), 0 0 0 0 rgb(255, 109, 74, 0.7)
    }

    80% {
        box-shadow: 0 0 0 50px rgb(2, 109, 74, 0), 0 0 0 30px rgb(255, 109, 74, 0)
    }

    100% {
        box-shadow: 0 0 0 0 rgb(25, 109, 74, 0), 0 0 0 30px rgb(255, 109, 74, 0)
    }
}
</style>

</head>
<body>
<div class="wrapper">
<button class="pulse" id="myBtn3"><i class="fa fa-plus"></i></button>
</div>
<!-- The Modal -->
<div id="myModal3" class="modal">
<div class="modal-content">
	<br><br>
    <span class="close3">&times;</span>
<form action="./AddGymR" method="post" >
		<div class = "expense">

  <div class="form-group">
    <% ExtraService gs=new ExtraServiceImp();
  
     ArrayList<Gym> gp=new ArrayList<>();
     
     gp=gs.listgym();
     
     IRoom iroomservice1=new RoomImpl();
     ArrayList<Room> Rooms1=new ArrayList<>();
     
     Rooms1=iroomservice1.listRooms();
     %>
 
  <h2>ADD Reservation </h2>
 
      
      <label for="description">PackageID: </label>
        <select id="saba" onchange="up();" class="form-control" name="id">
 			
 			<option value="">Select PackageID</option>
 			<% for(Gym m:gp){ %>
        <option value="<%=m.getID()%>"><%=m.getID()%></option>
         <%} %>
  </select>
      <label for="amount">PackageName: </label>
      <input type="text" class="form-control" id="a" placeholder="PackageName" name="name"required>
      <br><br><br>
      
      
      <label for="amount">RoomNo: </label>
        <select class="form-control" name="id">
        <option value="">Select RoomNO</option>
        <%  for(Room room1:Rooms1){ %>
        <option value="<%=room1.getRoomNo()%>"><%=room1.getRoomNo()%></option>
         <%} %>
           </select>
       <br><br><br>
        <label for="amount">CustomerName: </label>
      <input type="text" class="form-control" id="amount" placeholder="customername" name="cname" required>
       <br><br><br>
       <label for="amount">Date: </label>
      <input type="date" class="form-control" id="amount" placeholder="Date" name="date" required>
       <br><br><br>
       
       
            <input type="submit" value="ADD" class="button">
    </div>
    </div>
       
    </form>
    </div>
    </div>
    
    <script>
// Get the modal
var modal3 = document.getElementById("myModal3");

// Get the button that opens the modal
var btn3 = document.getElementById("myBtn3");

// Get the <span> element that closes the modal
var span3 = document.getElementsByClassName("close3")[0];

// When the user clicks the button, open the modal 
btn3.onclick = function() {
  modal3.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span3.onclick = function() {
  modal3.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal3) {
    modal3.style.display = "none";
  }
}
</script>
<script type="text/javascript">
function up(){
	var q1=document.getElementById("saba");
	var w1=q1.options[q1.selectedIndex].value;

		if(w1=="G001"){	
		document.getElementById("a").value="Beginners";
		
		}
		else if(w1=="G002"){
			document.getElementById("a").value="Intermediate";
		}
		else if(w1=="G003"){
			document.getElementById("a").value="Masters";
		}
		 
		
		
	}
</script>
<script>
	
	var today = new Date().toISOString().split('T')[0];

	document.getElementsByName("date")[0].setAttribute('min', today);
	
	</script>
</body>
</html>