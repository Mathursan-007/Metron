<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.util.ArrayList" %>
<%@ page import="com.service.ExtraService" %>  
<%@ page import="com.service.*"%>   
<%@ page import="com.model.*" %>
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
  width: 90%;
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
               <th>Date    </th>
               <th>Start Time</th>
               <th>End Time</th>
               <th>Edit</th>
               <th>payment</th>
               <th>Total bill</th>
                
            </tr>
            </thead>
            <%
              ExtraService SRList=new ExtraServiceImp();
            ArrayList<SpaReservation> spar=new ArrayList();
            
            SpaReservation sid=new SpaReservation();
            
            sid=SRList.getRID();
            
            
             
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
               <td><%=r.getStime()%></td>
               <td><%=r.getEtime()%></td>
               
                
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
               <td>
               <form action="./Getdetails" method="post">
               <input type="hidden" name="id" class="btn btn-danger" value="<%=r.getRID()%>">
               <input type="submit" class="btn btn-primary" style="margin-top:30px;" value="Pay">
               </form>
               </td>
               <td>
               <form action="./AddTbill" method="post">
               <input type="hidden" name="id" class="btn btn-danger" value="<%=r.getRID()%>">
                <input type="hidden" name="sid" class="btn btn-danger" value="<%=r.getSpackageID()%>">
                 <input type="hidden" name="name" class="btn btn-danger" value="<%=r.getGpackagename()%>">
                  <input type="hidden" name="no" class="btn btn-danger" value="<%=r.getRoomNo()%>">
                   <input type="hidden" name="cname" class="btn btn-danger" value="<%=r.getCusName()%>">
                     <input type="hidden" name="date" class="btn btn-danger" value="<%=r.getDate()%>">
                       <input type="hidden" name="stime" class="btn btn-danger" value="<%=r.getStime()%>">
                         <input type="hidden" name="etime" class="btn btn-danger" value="<%=r.getEtime()%>">
               <input type="submit" class="btn btn-success" style="margin-top:30px;" value="ADD">
               </form>
               </td>
            </tr>
            <%} %>
     
     </tbody>
     </table>
     </div>
  
   <%@include file="SpaReservationjsp.jsp" %>   
</body>
</html>
 