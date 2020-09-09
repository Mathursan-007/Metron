<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Employee</title>

<<<<<<< Upstream, based on branch 'master' of https://github.com/Mathursan-007/Metron.git


<style>

.viewtable{
	width : 400px;
	height : 900px; 
	
}

</style>
</head>
<body>


	<div class="viewtable">
			<br>
			<h1>Profile Details</h1>
	
	<fieldset>
    
        
        	<table >
  				<tr>
    				<th>Employee ID </th>
    				<td></td>
    				
  				</tr>
  				
  				<tr>
    				<th>First Name</th>
    				<td></td> 
    				
  				</tr>
  				
  				<tr>
    				<th>Last Name</th>
    				<td></td> 
    				
  				</tr>
  				
  				<tr>
    				<th>NIC</th>
=======
<style>

.viewtable{
	width : 400px;
	height : 800px; 
	
}

</style>
</head>
<body>

	<div class="viewtable">
			<br>
			<h1>Profile Details</h1>
	
	<fieldset>
    
        
        	<table >
  				<tr>
    				<th>Employee ID </th>
    				<td></td>
    				
  				</tr>
  				
  				<tr>
    				<th>First Name</th>
    				<td></td> 
    				
  				</tr>
  				
  				<tr>
    				<th>Last Name</th>
>>>>>>> f270cfb Employee Management
    				<td></td> 
    				
  				</tr>
  				
  				<tr>
    				<th>Email Address</th>
    				<td></td> 
    				
  				</tr>
  				
  				<tr>
    				<th>Contact Number 	</th>
    				<td></td> 
    				
  				</tr>
  				
  				<tr>
    				<th>Age 	</th>
    				<td></td> 
    				
  				</tr>
  				
  				<tr>
    				<th> Address </th>
    				<td></td> 
    				
  				</tr>
  				
  				<tr>
    				<th> Designation </th>
    				<td></td> 
    				
  				</tr>
  				
  				<tr>
    				<th> Department </th>
    				<td></td> 
    				
  				</tr>
  				
 
  				<tr>
  				<td colspan="2" >
  				 <form action="deleteemployee" method="post">
    				<input type="hidden" name="ID" value="">
    				<input type="submit" value="Delete Employee Details" class="btn btn-danger">
    			</form>
    			</td>
  				</tr>
  				
  				
  			</table>
  			
  			
  		
	</fieldset> 
			</div>

</body>
</html>