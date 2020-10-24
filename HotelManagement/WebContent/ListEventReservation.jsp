<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.ArrayList"%>
<%@ page import="com.service.IEvent"%>
<%@ page import="com.service.EventImpl"%>
<%@ page import="com.model.EventReservation"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="styles/res.css">
<title>Venue Reservation</title>
</head>
<body>

<div class="acbt"></div>   



	<caption>
		<h2>List of Reservations </h2>
	</caption>
	
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for NIC..." title="Type in a name">

<div class="tbs"> 

	<table id="customers">
	
	
		<thead>    <!-- ---Reservation form -->
			<tr>
				<th>ID</th>
				<th>Full Name</th>
				<th>NIC</th>
				<th>Event</th>
				<th>Venue</th>
				<th>Price</th>
				<th>Guests</th>
				<th>Date</th>
				<th>Time</th>
				<th>Hall</th>
				<th>Payment</th>
				<th>Actions</th>

			</tr>
		</thead>
		
			<%
            
            IEvent ieventres = new EventImpl(); 
        	ArrayList <EventReservation> Ereserve = new ArrayList<>(); 
            
        	Ereserve = ieventres.listEventReservations();
            
            for(EventReservation eventreservation : Ereserve){ %>
            
       <tr>
            	<td><%=eventreservation.getEventReservation_ID() %></td>
				<td><%=eventreservation.getFullName()%></td>
				<td><%=eventreservation.getNIC() %></td>
				<td><%=eventreservation.getEventName()%></td>
				<td><%=eventreservation.getVenue()%></td>
				<td><%=eventreservation.getPrice()%></td>
				<td><%=eventreservation.getNo_of_Guests()%></td>
				<td><%=eventreservation.getDate()%></td>
				<td><%=eventreservation.getTime()%></td>
				<td><%=eventreservation.getHallID()%></td>
				<td><%=eventreservation.getPaymentMethod()%></td>
		

			<td>
				<form action="./GetEventReservation" method="post">
					<input type="hidden" name="EReserveId"
						value="<%=eventreservation.getEventReservation_ID()%>"> <input type="submit"
						value="Inspect" class="btn btn-success">
				</form> <br>
				

				<form action="./DeleteEventReservation" method="post">
					<input type="hidden" name="EReserveId"
						value="<%=eventreservation.getEventReservation_ID()%>"> <input type="submit"
						value="Delete" class="btn btn-danger">
				</form>
			</td>

		</tr>
			<%} %>

		</tbody>


	</table>

	</div> 
	
	
<script>
function myFunction() {
  // Declare variables
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("customers");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[2];
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



</body>
</html>