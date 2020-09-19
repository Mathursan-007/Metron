<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="styles/Meal.css">



<title>Meal plan</title>
</head>
<body>

<!-- ---Meal Plan form -->
	
		
			
		<h2 class="nana">Meal Plan Form</h2>
  				<form name ="meal" action="./AddMealPlan" onsubmit="return validateForm()" method="post">
  				
  		<div class = "meal">
					
  			<div class="form-group">
  			
      			<label for="packageId"> Package ID : </label>
     		 	<input type="text" class="form-control" id="packageId" placeholder="Package ID" name="PackageId" autocomplete="off" pattern="[0-9]{3}" maxlength="3" required>
    		</div>
    	 </div>
    	   
    	<div class = "meal1">
  			<div class="form-group">		

    			<label for="packagename"> Package Name : </label>
   					 <select id="packagename"  name="PackageName" class="form-control" required>
   					 <option selected> Choose one package </option>
      				 <option value="Deluxe Buffet"> Deluxe Buffet </option>
      				 <option value="Enhanced Buffet"> Enhanced Buffet </option>
     			 	 <option value="Premium Buffet"> Premium Buffet </option>
    				 </select>
  			</div>	
  		</div>
  		
  		 <div class = "meal2">
  			<div class="form-group">
  		
  			
     		 	<label for="price"> Price : </label>
     		 		 <select id="price"   name="Price" class="form-control" required>
     		 		 <option selected> Select Price </option>
      				 <option value="1500"> Rs 1500 per person </option>
      				 <option value= "3000"> Rs 3000 per peson </option>
     			 	 <option value="4500"> Rs 4500 per person </option>
     			 	 <option value="6000"> Rs 6000 per person </option>
     			 	 <option value="7500"> Rs 7500 per person </option>
    				 </select>
      		   
    	    </div>	
    	  </div>
    	  
    	  <div class ="area">
    	    <div class="form-group">
    	     
    	    	<label for = "note"> Specifications :</label>	
    	    	<input type="text" class="form-control" id="note"  placeholder="Enter any specifications" name ="Specifications" >
    	    	   
    	     </div>  
    	   </div>
    	    
    
            <input type="submit" value="Submit" class="button"> 
  					</form>
  		
</body>
</html>