<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList" %>
<%@ page import="com.service.ExtraService" %>  
<%@ page import="com.service.*"%> 
<%@ page import="com.model.Gym" %>
<%@ page import="com.model.*" %> 

<%@ page import="com.model.SpaReservation" %>  
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
<button class="pulse" id="myBtn2"><i class="fa fa-plus"></i></button>
</div>
<!-- The Modal -->
<div id="myModal2" class="modal">
<div class="modal-content">
    <span class="close2">&times;</span>
<form action="./AddSpaR" method="post" >
		<div class = "expense">

  <div class="form-group">
  <% ExtraService ex=new ExtraServiceImp();
  
     ArrayList<Spa> pk=new ArrayList<>();
     
     pk=ex.listspa();
     
     
     IRoom iroomservice=new RoomImpl();
     ArrayList<Room> Rooms=new ArrayList<>();
     
    Rooms=iroomservice.listRooms();
   
     
    // SpaReservation room =( SpaReservation)request.getAttribute("rr");
     //ArrayList<SpaReservation> sparoom=new ArrayList<>();
    //sparoom=ex.listroom(room.getDate(),room.getStime(),room.getEtime());
  
  %>
 
  <h2>ADD Reservation </h2>
 
      
      <label for="description">PackageID: </label><br>
      
      	
       <select id="sabe" onchange="update();" class="form-control" name="id">
 			
 			<option value="">Select PackageID</option>
 			<% for(Spa p:pk){ %>
        <option value="<%=p.getID()%>"><%=p.getID()%></option>
         <%} %>
  </select>
      
      <br><br><br>
      <label for="amount">PackageName: </label>
      <input type="text" class="form-control" id="pname"   placeholder="PackageName" name="name"required>
      <br><br><br>
      
       <label for="amount">RoomNo: </label>
        <select class="form-control" name="no">
        <option value="">Select RoomNO</option>
        <%  for(Room room:Rooms){ %>
        <option value="<%=room.getRoomNo()%>"><%=room.getRoomNo()%></option>
         <%} %>
           </select>
       <br><br><br>
        <label for="amount">CustomerName: </label>
      <input type="text" class="form-control" id="amount" placeholder="customername" name="cname" required>
       <br><br><br>
       <label for="amount">Date: </label>
      <input type="date" class="form-control" id="amount" placeholder="Date" name="date" required>
       <br><br><br>
       <label for="amount">Start Time: </label>
      <input type="time" class="form-control" id="amount" placeholder="Time" name="stime" required>
       <br><br><br>
       <label for="amount">End Time: </label>
      <input type="time" class="form-control" id="amount" placeholder="Time" name="etime" required>
       <br><br><br>
       
       <!--  
       <label for="amount">Available SpaRooom: </label>
        
      <select id="sabe" o class="form-control" name="room">
      <//% for(SpaReservation roomss:sparoom){ %>
      <option value="<//%=roomss.getRoomNo()%>"> <//%=roomss.getRoomNo()%></option>
      <//%}%>
       <br><br><br>
       -->
       
       
            <input type="submit" value="ADD" class="button">
    </div>
    </div>
       
    </form>
    </div>
    </div>
    
    <script>
// Get the modal
var modal2 = document.getElementById("myModal2");

// Get the button that opens the modal
var btn2 = document.getElementById("myBtn2");

// Get the <span> element that closes the modal
var span2 = document.getElementsByClassName("close2")[0];

// When the user clicks the button, open the modal 
btn2.onclick = function() {
  modal2.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span2.onclick = function() {
  modal2.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal2) {
    modal2.style.display = "none";
  }
}
</script>
<script type="text/javascript">
function update(){
	var q=document.getElementById("sabe");
	var w=q.options[q.selectedIndex].value;

		if(w=="S001"){	
		document.getElementById("pname").value="Thai Massage";
		
		}
		else if(w=="S002"){
			document.getElementById("pname").value="Hot Stone Massage";
		}
		else if(w=="S003"){
			document.getElementById("pname").value="LED Light Therapy";
		}
		else if(w=="S004"){
			document.getElementById("pname").value="Swedish Massage";
		}
		else if(w=="S005"){
			document.getElementById("pname").value="Sandwich Massage";
		}
		
		
	}
</script>
<script>
	
	var today = new Date().toISOString().split('T')[0];

	document.getElementsByName("date")[0].setAttribute('min', today);
	
	</script>
	
	<script>
	var z=document.getElementByName("stime").value;
	
	var l=z+90;
	
	document.getElementByName("etime").value=l
	
	
	
	</script>
 
</body>
</html>