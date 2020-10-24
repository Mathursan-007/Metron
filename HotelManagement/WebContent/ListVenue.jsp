<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.service.IEvent" %>  
<%@ page import="com.service.EventImpl"%>   
<%@ page import="com.model.Venue" %>     
       
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="styles/meallists.css">
<title>Venue List</title>
</head>
<body>

<div class="acbt"></div>

	<caption> <h2>Venues List</h2> </caption>
		
		<table id= "customers">
		   <thead>
		    <tr>
                <th>Venue ID</th>
                <th>Venue Type</th>
                <th>Price</th>
                <th>Capacity</th>
                <th>Actions</th>
               
               
            </tr>
           </thead>
           
           <%
            
            IEvent ievents = new EventImpl();
            ArrayList <Venue> Venues = new ArrayList<>();
            
            Venues = ievents.listVenues();
            
            for(Venue venue: Venues){ %>
            
             <tr>
           		<td><%=venue.getVenueID() %> </td> 
           		<td><%=venue.getVenueType() %> </td>
           		<td><%=venue.getPrice() %> </td>
           		<td><%=venue.getCapacity() %> </td>
         
           		
           		<td>
           		<form action ="./GetVenue" method = "post">
           		<input type ="hidden" name="venueid" value ="<%=venue.getVenueID()%>">
           		<input type="submit" value="View" class="btn btn-success">
           		</form>
           	
           		</td>
           		
           		</tr>


			<%} %>
				 </tbody>
        
         	   
		</table>

</body>
</html>