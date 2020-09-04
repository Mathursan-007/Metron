<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.service.IRestaurant" %>  
<%@ page import="com.service.RestaurantImpl"%>   
<%@ page import="com.model.Item" %>      
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MenuItems</title>
</head>
<body>

     <table border=1 >
           <tr>
               <th>ItemNO</th>
               <th>Name</th>
               <th>Category</th>
               <th>Price</th>
               <th>Action</th>
            </tr>
            <%
              IRestaurant irestaurantservice=new RestaurantImpl();
              ArrayList<Item> Items=new ArrayList<>();
              
              Items=irestaurantservice.listitems();
             
             for(Item item:Items){ %>
            <tr>
               <td><%=item.getItemno() %> </td> 
               <td><%=item.getName() %></td> 
               <td><%=item.getCategory() %></td>
               <td><%=item.getPrice() %></td>
               <td>
               <form action="./GetItem" method="post">
               <input type="hidden" name="itemno" value="<%=item.getItemno() %>">
               <input type="submit" value="View">
               </form>
               <form action="./DeleteItem" method="post">
               <input type="hidden" name="itemno" value="<%=item.getItemno() %>">
               <input type="submit" value="Delete">
               </form>
               </td>
            </tr>
            <%} %>
     
     
     </table>
     
<form action="AddItem.jsp" method="post">
<input type="submit" value="Add">
</form>

</body>
</html>