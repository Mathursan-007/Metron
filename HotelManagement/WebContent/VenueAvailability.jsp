<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.service.IEvent"%>
<%@ page import="com.service.EventImpl"%>
<%@ page import="com.model.Venue"%>    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="Header.jsp"%>
<link rel="stylesheet" href="styles/available.css">

<title>Insert title here</title>



</head>
<style>



</style>
<body>

 <div class="ice"> 

<form action="VenueAvailability.jsp" method="post">

   <div class="ice">  
 
  <h2>Venue Availabilility</h2> 
 
 
		<div class="meal">

			<div class="form-group">
 
 
   	<label for="Date"> Day Of the Event: </label> <input type="date" class="form-control" id="Date" placeholder="Date" name="date" required>
	
	
			</div>
	
	   </div>
	
	
	
		<div class="meal">

			<div class="form-group">
	
	<label for="ename"> Event Name : </label> <select id="ename" name="eventname" class="form-control">
			<option selected>Choose an Event</option>
			<option value="1">Wedding</option>
			<option value="2">Meetings & Conferences</option>
	</select>
   
   
        	</div>
	
	   </div>
 

      <br><br>
     
      <input type="submit" value="Search" class="button"> 
 
    
 </form> 
 
 <div class = tata>

<%

if(request.getParameter("date")!=null) {
int type=Integer.parseInt(request.getParameter("eventname"));
String date = request.getParameter("date");

%>     

<%
IEvent ieventres = new EventImpl();
ArrayList<Venue> halls = new ArrayList();
halls= ieventres.listAvailableHalls(type, date);

if(halls!=null){
%>

	<% for(Venue hall : halls){ %>
		<p>  Available Hall - <%=hall.getHallID() %></p>
<% } %>

<% } }%>

</div>

<div class = hallss>

<ul>
  <li>Hall 1 -Empire BallRoom   </li>
  <li>Hall 2 -Imperial BallRoom  </li>
  <li>Hall 3 -RainBow BallRoom  </li>
  <li>Hall 4 -Cedar  </li>
  <li>Hall 5 -Ebony  </li>
  <li>Hall 6 -Aspen </li>
  <li>Hall 7 -Empire BallRoom  </li>
  <li>Hall 8 -Imperial BallRoom   </li>
  <li>Hall 9 -RainBow BallRoom  </li>
  <li>Hall 10 -Cedar  </li>
  <li>Hall 11 -Ebony  </li>
  <li>Hall 12 -Aspen  </li>
</ul>

</div>

  <div class="zara">
   
   <button class="btn info"> <a href="EventDashboard.jsp"> Reserve it </a></button >  
    
   </div>

</div>

</body>
<br> <br> <br> 
<%@include file="Footer.jsp"%>
</html>