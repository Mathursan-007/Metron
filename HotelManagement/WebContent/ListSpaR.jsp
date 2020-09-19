<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.util.ArrayList" %>
<%@ page import="com.service.ExtraService" %>  
<%@ page import="com.service.ExtraServiceImp"%>   
<%@ page import="com.model.SpaReservation" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://unpkg.com/bootstrap@4.1.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.21/datatables.min.css">

<title>Insert title here</title>
</head>
<style>
#customers1 {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 70%;
  text-align:center;
  margin-left:200px;
  transform:translate(-1%, 20%);
}

#customers1 td, #customers1 th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers1 tr:nth-child(even){background-color: #f2f2f2;}

#customers1 tr:hover {background-color: #ddd;}

#customers1 th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #000;
  color: white;
}
 #myInput1 {
  background-image: url('/css/searchicon.png');
  background-position: 10px 12px;
  background-repeat: no-repeat;
  width: 30%;
  font-size: 16px;
  margin-left:170px;
  border: 1px solid #ddd;
  margin-top: 100px;
}
.my-custom-scrollbar {
position: relative;
height: 400px;
overflow: auto;
}
.table-wrapper-scroll-y {
display: block;
}
 
</style>

<body>
<input type="text" id="myInput1" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
<div class="table-wrapper-scroll-y my-custom-scrollbar">

<table id="customers1" class="table table-bordered table-striped mb-0">

 		
 		<thead>
           <tr>
           		 
           	   <th>ReservationID</th>
               <th>PackageID</th>
               <th>PackageName</th>
               <th>RoomNo</th>
               <th>CustomerName</th>
               <th>Date</th>
               <th>Time</th>
               <th>Action</th>
            </tr>
            </thead>
            <%
              ExtraService SRList=new ExtraServiceImp();
            ArrayList<SpaReservation> spar=new ArrayList();
              
              spar=SRList.listspareservation();
             
             for(SpaReservation r:spar){ %>
                 <tbody>
             
            <tr>
            	
               <td><%=r.getRID()%></td> 
               <td><%=r.getSpackageID()%></td> 
               <td><%=r.getGpackagename()%></td>
               <td><%=r.getRoomNo()%></td>
               <td><%=r.getCusName()%></td>
               <td><%=r.getDate()%></td>
               <td><%=r.getTime()%></td>
                
               <td>
               <form action="./GetSpaR" method="post">
               <input type="hidden" name="id" class="btn btn-primary" value="<%=r.getRID()%>">
               <input type="submit" class="btn btn-success" style="margin-top:30px; " value="View">
               </form>
               <span></span>
               <form action="./DeleteSpaR" method="post">
               <input type="hidden" name="id" class="btn btn-danger" value="<%=r.getRID()%>">
               <input type="submit" class="btn btn-danger" style="margin-top:30px;" value="Delete">
               </form>
               </span>
               </td>
            </tr>
            <%} %>
     
     </tbody>
     </table>
     </div>
  
   <%@include file="SpaReservationjsp.jsp" %>   
</body>
</html>
 