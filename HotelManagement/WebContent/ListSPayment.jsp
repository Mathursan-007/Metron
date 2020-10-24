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
<title>Insert title here</title>
</head>
<style>
#customers3 {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 70%;
  text-align:center;
  margin-left:200px;
  transform:translate(-1%, 20%);
}

#customers3 td, #customers1 th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers3 tr:nth-child(even){background-color: #f2f2f2;}

#customers3 tr:hover {background-color: #ddd;}

#customers3 th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #000;
  color: white;
}
 #myInput3 {
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
<input type="text" id="myInput3" onkeyup="myFunction2()" placeholder="Search for names.." title="Type in a name">
<div class="table-wrapper-scroll-y my-custom-scrollbar">

<table id="customers3" class="table table-bordered table-striped mb-0">

 		
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
              ExtraService SPList=new ExtraServiceImp();
            ArrayList<SpaReservation> spp=new ArrayList();
              
              spp=SPList.listspapayemt();
             
             for(SpaReservation p:spp){ %>
                 <tbody>
             
            <tr>
            	<td><%=p.getPID()%>
               <td><%=p.getRID()%></td> 
              <td><%=p.getGpackagename()%></td>
                <td><%=p.getCusName()%></td>
                <td><%=p.getAmount()%>
       
               
                
              
               <td>
               <form action="./spabill.jsp" method="post">
               <input type="hidden" name="id" class="btn btn-danger" value="<%=p.getPID()%>">
               <input type="hidden" name="rid" class="btn btn-danger" value="<%=p.getRID()%>">
               <input type="hidden" name="name" class="btn btn-danger" value="<%=p.getGpackagename()%>">
               <input type="hidden" name="cname" class="btn btn-danger" value="<%=p.getCusName()%>">
               <input type="hidden" name="amount" class="btn btn-danger" value="<%=p.getAmount()%>">
               <input type="submit" class="btn btn-primary"   value="GenerateBill">
               </form>
               </td>
            </tr>
            <%} %>
     
     </tbody>
     </table>
     </div>
  
  


</body>
<script>
function myFunction2() {
  var input2, filter2, table2, tr2, td2, x, txtValue2;
  input2 = document.getElementById("myInput3");
  filter2 = input2.value.toUpperCase();
  table2 = document.getElementById("customers3");
  tr2 = table2.getElementsByTagName("tr");
  for (x = 0; x < tr2.length; x++) {
    td2 = tr2[x].getElementsByTagName("td")[0];
    if (td2) {
      txtValue2 = td2.textContent || td2.innerText;
      if (txtValue2.toUpperCase().indexOf(filter2) > -1) {
        tr2[x].style.display = "";
      } else {
        tr2[x].style.display = "none";
      }
    }       
  }
}
</script>
</html>