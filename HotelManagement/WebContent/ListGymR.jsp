<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.util.ArrayList" %>
<%@ page import="com.service.ExtraService" %>  
<%@ page import="com.service.ExtraServiceImp"%>   
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
#customers2 {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 70%;
  text-align:center;
  margin-left:200px;
  transform:translate(-1%, 20%);
}

#customers2 td, #customers1 th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers2 tr:nth-child(even){background-color: #f2f2f2;}

#customers2 tr:hover {background-color: #ddd;}

#customers2 th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #000;
  color: white;
}
 #myInput2 {
  background-image: url('/css/searchicon.png');
  background-position: 10px 12px;
  background-repeat: no-repeat;
  width: 30%;
  font-size: 16px;
  margin-left:195px;
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
<input type="text" id="myInput2" onkeyup="myFunction1()" placeholder="Search for Reservation ID.."  title="Type in a name">
<div class="table-wrapper-scroll-y my-custom-scrollbar">

<table id="customers2" class="table table-bordered table-striped mb-0">

 		
 		<thead>
           <tr>
           		 
           	   <th>ReservationID</th>
               <th>PackageID</th>
               <th>PackageName</th>
               <th>RoomNo</th>
               <th>CustomerName</th>
               <th>Date</th>
               <th>Edit</th>
               <th>payment</th>
               <th>Total bill</th>
            </tr>
            </thead>
            <%
              ExtraService GRList=new ExtraServiceImp();
            ArrayList<GymReservation> gyr=new ArrayList();
              
                   gyr=GRList.listgymreservation();       
             for(GymReservation g:gyr){ %>
                 <tbody>
             
            <tr>
            	
               <td><%=g.getRID()%></td> 
               <td><%=g.getGpackageID()%></td> 
               <td><%=g.getGpackagename()%></td>
               <td><%=g.getRoomNo()%></td>
               <td><%=g.getCusName()%></td>
               <td><%=g.getDate()%></td>
               
               
                
               <td>
               <form action="./GetGymR" method="post">
               <input type="hidden" name="id" class="btn btn-primary" value="<%=g.getRID()%>">
               <input type="submit" class="btn btn-success" style="margin-top:30px; " value="View">
               </form>
               <span></span>
               <form action="./DeleteGymR" method="post">
               <input type="hidden" name="id" class="btn btn-danger" value="<%=g.getRID()%>">
               <input type="submit" class="btn btn-danger" style="margin-top:30px;" value="Delete">
               </form>
                
               </td>
               <td>
               <form action="./GetGdetails" method="post">
               <input type="hidden" name="id" class="btn btn-danger" value="<%=g.getRID()%>">
               <input type="submit" class="btn btn-primary" style="margin-top:30px;" value="Pay">
               </form>
               </td>
               <td>
               <form action="./AddGTbill" method="post">
               <input type="hidden" name="id" class="btn btn-danger" value="<%=g.getRID()%>">
                <input type="hidden" name="sid" class="btn btn-danger" value="<%=g.getGpackageID()%>">
                <input type="hidden" name="name" class="btn btn-danger" value="<%=g.getGpackagename()%>">
                <input type="hidden" name="no" class="btn btn-danger" value="<%=g.getRoomNo()%>">
                 <input type="hidden" name="cname" class="btn btn-danger" value="<%=g.getCusName()%>">
                 <input type="hidden" name="date" class="btn btn-danger" value="<%=g.getDate()%>">
               <input type="submit" class="btn btn-success" style="margin-top:30px;" value="ADD">
               </form>
               </td>
               
               
            </tr>
            <%} %>
     
     </tbody>
     </table>
     </div>
  
   <%@include file="GymReservation.jsp" %>   
</body>
<script>
function myFunction1() {
  var input1, filter1, table1, tr1, td1, j, txtValue1;
  input1 = document.getElementById("myInput2");
  filter1 = input1.value.toUpperCase();
  table1 = document.getElementById("customers2");
  tr1 = table1.getElementsByTagName("tr");
  for (j = 0; j < tr1.length; j++) {
    td1 = tr1[j].getElementsByTagName("td")[0];
    if (td1) {
      txtValue1 = td1.textContent || td1.innerText;
      if (txtValue1.toUpperCase().indexOf(filter1) > -1) {
        tr1[j].style.display = "";
      } else {
        tr1[j].style.display = "none";
      }
    }       
  }
}
</script>
</html>
