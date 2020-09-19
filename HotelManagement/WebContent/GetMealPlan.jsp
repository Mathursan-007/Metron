<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.model.MealPlan" %>      
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> View Meal Plan</title>
<link rel="stylesheet" href="styles/Meal.css">
</head>
<body>

<%MealPlan mealplan = (MealPlan)request.getAttribute("mealplan");%>  

	<h2 class="nana">View Meal Plan Form</h2>


     <form action="./UpdateMealPlan" method="post">
     
          <div class = "meal">
          <div class="form-group">
     
	      <label for="packageId"> Package ID : </label>
     	  <input type="text" class="form-control" id="packageId" placeholder="Package ID" value= "<%=mealplan.getPackageId()%>" disabled>
	      <input type="hidden" name="PackageId" value= "<%=mealplan.getPackageId()%>">
	      </div>
	      </div>
	      
	      <div class = "meal">
	      <div class="form-group">		

    			<label for="packagename"> Package Name : </label>
   					 <select id="packagename"  name="PackageName" class="form-control">
   					 <option selected> <%=mealplan.getPackageName()%> </option>
      				 <option value="Deluxe Buffet"> Deluxe Buffet </option>
      				 <option value="Enhanced Buffet"> Enhanced Buffet </option>
     			 	 <option value="Premium Buffet"> Premium Buffet </option>
    				 </select>
  			</div>
  			</div>	
	      
	      <div class = "meal">
	      <div class="form-group">
  		
  			
     		 	<label for="price"> Price : </label>
     		 		 <select id="price"   name="Price" class="form-control">
     		 		 <option selected> <%=mealplan.getPrice()%> </option>
      				 <option value="1500"> Rs 1500 per person </option>
      				 <option value= "3000"> Rs 3000 per peson </option>
     			 	 <option value="4500"> Rs 4500 per person </option>
     			 	 <option value="6000"> Rs 6000 per person </option>
     			 	 <option value="7500"> Rs 7500 per person </option>
    				 </select>
      		   
    	    </div>	
    	    </div>
	      
	      
	      <div class = "meal">
	      <div class="form-group">
	      
	      <label for = "note"> Specifications :</label>	
    	  <input type="text" class="form-control" id="note"  placeholder="Enter any specifications" 
    	  name ="Specifications" value ="<%=mealplan.getSpecifications() %>" >  
    	    	   
	      </div>
	      </div>
	      
	      <input type="submit" value="Update" class="button">  
	      
    </form> 

</body>
</html>