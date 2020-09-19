<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList" %>
<%@ page import="com.service.ExtraService" %>  
<%@ page import="com.service.ExtraServiceImp"%> 
<%@ page import="com.model.Gym" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css">

<title>Insert title here</title>
</head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 70%;
  text-align:center;
  margin-left:200px;
  transform:translate(-1%, 20%);
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #000;
  color: white;
}


</style>
<body>
<table  id="customers" >
           <tr>
               <th>PackageID</th>
               <th>PackageName</th>
               <th>Price</th>
               <th>Action</th>
            </tr>
            <%
              ExtraService gymList=new ExtraServiceImp();
              ArrayList<Gym> packages=new ArrayList<>();
              
              packages=gymList.listgym();
              
             
             for(Gym gym:packages){ %>
            <tr>
               <td><%=gym.getID()%></td> 
               <td><%=gym.getName()%></td> 
               <td><%=gym.getPrice()%></td>
                
               <td>
               <form action="./GetGym" method="post">
               <input type="hidden" name="id" class="btn btn-primary" value="<%=gym.getID()%>">
               <input type="submit" class="btn btn-success" style="margin-top:30px; " value="View">
               </form>
               <form action="./DeleteGym" method="post">
               <input type="hidden" name="id"   class="btn btn-danger" value="<%=gym.getID()%>">
               <input type="submit" class="btn btn-danger" style="margin-top:30px;" value="Delete">
               </form>
               </td>
            </tr>
            <%} %>
     
     
     </table>
     <%@include file="AddGym.jsp" %>
</body>
</html>