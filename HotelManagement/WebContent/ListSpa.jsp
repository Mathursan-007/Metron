<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList" %>
<%@ page import="com.service.ExtraService" %>  
<%@ page import="com.service.ExtraServiceImp"%>   
<%@ page import="com.model.Spa" %>      
    
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
  width: 20%;
  text-align:left;
  margin-left:200px;
  transform:translate(-1%, 20%);
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 2px;
}

#customers tr:nth-child(even){background-color: #fff;}

#customers tr:hover {background-color:#fff;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #000;
  color: white;
}


</style>
<body>
<table id="customers">
           <tr>
               <th>PackageID</th>
               <th>PackageName</th>
               <th>Description</th>
               <th>Price</th>
               <th>Action</th>
            </tr>
            <%
              ExtraService spaList=new ExtraServiceImp();
              ArrayList<Spa> spapackages=new ArrayList<>();
              
              spapackages=spaList.listspa();
             
             for(Spa spa:spapackages){ %>
            <tr>
               <td><%=spa.getID()%></td> 
               <td><%=spa.getName()%></td>
               <td><%=spa.getDescription()%></td> 
               <td><%=spa.getPrice()%></td>
                
               <td>
               <form action="./GetSpa" method="post">
               <input type="hidden" name="id" class="btn btn-primary" value="<%=spa.getID()%>">
               <input type="submit" class="btn btn-success" style="margin-top:30px; " value="View">
               </form>
               <span></span>
               <form action="./DeleteSpa" method="post">
               <input type="hidden" name="id" class="btn btn-danger" value="<%=spa.getID()%>">
               <input type="submit" class="btn btn-danger" style="margin-top:30px;" value="Delete">
               </form>
               </span>
               </td>
            </tr>
            <%} %>
     
     
     </table>
     
     <%@include file="AddSpa.jsp" %>
     
</body>
</html>