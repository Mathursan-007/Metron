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
</head>
<body class="bree">

	<section class="ListingRooms">
  <!--for demo wrap-->
  <span class="jd"> <h1>Room Details</h1> </span>
  
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0" class="Dubu">
      <thead>
        <tr>
          	   <th>RoomNO</th>
               <th>RoomTypeName</th>
               <th>RoomSize</th>
               <th>MaxGuests</th>
               <th>CostPerDay</th>
               <th>Action</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0" class="Dubu">
      <tbody>
        <tr>
	          <%
              IRoom iroomservice=new RoomImpl();
              ArrayList<Room> Rooms=new ArrayList<>();
              
              Rooms=iroomservice.listRooms();
             
             for(Room room:Rooms){ %>
            <tr>
               <td><%=room.getRoomNo() %> </td> 
               <td><%=room.getRoomTypeName() %></td> 
               <td><%=room.getRoomSize() %></td>
               <td><%=room.getMaxGuests() %></td>
               <td><%=room.getCostPerDay() %></td>
               <td>
               <form action="./GetRoom" method="post">
               <input type="hidden" name="roomno" value="<%=room.getRoomNo() %>">
               <input type="submit" value="Edit">
               </form>
               <form action="./DeleteRoom" method="post">
               <input type="hidden" name="roomno" value="<%=room.getRoomNo() %>">
               <input type="submit" value="Delete">
               </form>
               </td>
            </tr>
            <%} %>
        

      </tbody>
    </table>
  </div>
</section> 

</body>
</html>