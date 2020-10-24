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
<title>Insert title here</title>
</head>
<style>
#customers4 {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 70%;
  text-align:center;
  margin-left:200px;
  transform:translate(-1%, 20%);
}

#customers4 td, #customers1 th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers4 tr:nth-child(even){background-color: #f2f2f2;}

#customers4 tr:hover {background-color: #ddd;}

#customers4 th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #000;
  color: white;
}
 #myInput4 {
  background-image: url("../images/search.png"); 
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
<input type="text" id="myInput4" onkeyup="myFunction3()" placeholder="Search for Customer names.." title="Type in a name">
<div class="table-wrapper-scroll-y my-custom-scrollbar">

<table id="customers4" class="table table-bordered table-striped mb-0">

 		
 		<thead>
           <tr>
           		 
           	   <th>Payment ID</th>
               <th>Reservation ID</th>
               <th>PackageName</th>
               <th>CustomerName</th>
                <th>Amount</th>
               <th>Action</th>
               
            </tr>
            </thead>
            <%
              ExtraService GPList=new ExtraServiceImp();
            ArrayList<GymReservation> gt=new ArrayList();
              
              gt=GPList.listgympayemt();
             
             for(GymReservation pg:gt){ %>
                 <tbody>
             
            <tr>
            	<td><%=pg.getPID()%>
               <td><%=pg.getRID()%></td> 
              <td><%=pg.getGpackagename()%></td>
                <td><%=pg.getCusName()%></td>
                <td><%=pg.getAmount()%>
       
               
                
              
               <td>
               <form action="./gymbill.jsp" method="post">
               <input type="hidden" name="id" class="btn btn-danger" value="<%=pg.getPID()%>">
               <input type="hidden" name="rid" class="btn btn-danger" value="<%=pg.getRID()%>">
               <input type="hidden" name="name" class="btn btn-danger" value="<%=pg.getGpackagename()%>">
               <input type="hidden" name="cname" class="btn btn-danger" value="<%=pg.getCusName()%>">
               <input type="hidden" name="amount" class="btn btn-danger" value="<%=pg.getAmount()%>">
               <input type="submit" class="btn btn-primary"  value="GenerateBill">
               </form>
               </td>
            </tr>
            <%} %>
     
     </tbody>
     </table>
     </div>
  
  

</body>
<script>
function myFunction3() {
  var input3, filter3, table3, tr3, td3, y, txtValue3;
  input3 = document.getElementById("myInput4");
  filter3 = input3.value.toUpperCase();
  table3 = document.getElementById("customers4");
  tr3 = table3.getElementsByTagName("tr");
  for (y = 0; y < tr3.length; y++) {
    td3 = tr3[y].getElementsByTagName("td")[3];
    if (td3) {
      txtValue3 = td3.textContent || td3.innerText;
      if (txtValue3.toUpperCase().indexOf(filter3) > -1) {
        tr3[y].style.display = "";
      } else {
        tr3[y].style.display = "none";
      }
    }       
  }
}
</script>
</html>