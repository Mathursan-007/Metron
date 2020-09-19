<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.service.IEvent" %>  
<%@ page import="com.service.EventImpl"%>   
<%@ page import="com.model.MealPlan" %>         
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="styles/meallist.css">

<title>Meal Plan List</title>
</head>
<body>  

	<div class="acbt"></div>
		
		<caption> <h2>Meal Plan List</h2> </caption>         
		
		<table id= "customers">
		   <thead>
		    <tr>
                <th>Package ID</th>
                <th>Package Name</th>
                <th>Price</th>
                <th>Specifications</th>
                <th>Actions</th>
               
               
            </tr>
           </thead> 
            <%
            
            IEvent ievent = new EventImpl();
            ArrayList<MealPlan> Meals = new ArrayList<>();
            
            Meals = ievent.listMeals();
            
            for(MealPlan mealplan : Meals){ %>
    	
           <tr>
           		<td><%=mealplan.getPackageId() %> </td> 
           		<td><%=mealplan.getPackageName() %> </td>
           		<td><%=mealplan.getPrice() %> </td>
           		<td><%=mealplan.getSpecifications() %> </td>
           		
           		<td>
           		<form action ="./GetMealPlan" method = "post">
           		<input type ="hidden" name="PackageId" value ="<%=mealplan.getPackageId()%>">
           		<input type="submit" value="View" class="btn btn-success">
           		</form>
           		
           		<br> 
           		
           		<form action ="./DeleteMealPlan" method = "post">
           		<input type ="hidden" name="PackageId" value ="<%=mealplan.getPackageId()%>">
           		<input type="submit" value="Delete" class="btn btn-danger">
           		</form>
           		</td>
           		
           		</tr>
           	   <%} %>
           		
           		 </tbody>
        
         	   
		</table>
		

</body>
</html>