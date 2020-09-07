<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.service.IRestaurant" %>  
<%@ page import="com.service.RestaurantImpl"%>   
<%@ page import="com.model.Table" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tables</title>
</head>
<body>

      <table border=1 >
           <tr>
               <th>TableNO</th>
               <th>Type</th>
               <th>Capacity</th>
               <th>Price</th>
               <th>Action</th>
            </tr>
            <%
              IRestaurant irestaurantservice=new RestaurantImpl();
              ArrayList<Table> Tables=new ArrayList<>();
              
              Tables=irestaurantservice.listtables();
             
             for(Table table:Tables){ %>
            <tr>
               <td><%=table.getTableno() %> </td> 
               <td><%=table.getType()%></td> 
               <td><%=table.getCapacity() %></td>
               <td><%=table.getPrice()%></td>
               <td>
               <form action="./GetTable" method="post">
               <input type="hidden" name="tableno" value="<%=table.getTableno()%>">
               <input type="submit" value="View">
               </form>
               <form action="./DeleteTable" method="post">
               <input type="hidden" name="tableno" value="<%=table.getTableno()%>">
               <input type="submit" value="Delete">
               </form>
               </td>
            </tr>
            <%} %>
     
     
     </table>
     
<form action="AddTable.jsp" method="post">
<input type="submit" value="Add">
</form>
     

</body>
</html>