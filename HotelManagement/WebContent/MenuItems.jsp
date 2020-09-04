<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
            <tr>
               <th> </th> 
               <th> </th> 
               <th> </th>
               <th> </th>
               <th>
               <form action="edititem" method="post">
               <input type="submit" value="Edit">
               </form>
               <form action="deleteitem" method="post">
               <input type="submit" value="Delete">
               </form>
               </th>
            </tr>
     
     
     </table>
     
<form action="AddItem.jsp" method="post">
<input type="submit" value="Add">
</form>

</body>
</html>