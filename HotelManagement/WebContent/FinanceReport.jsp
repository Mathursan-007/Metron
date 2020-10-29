<%@page import="java.util.ArrayList"%>
    
<%@ page import="com.service.IFinance" %>  
<%@ page import="com.service.FinanceImpl"%>  
<%@ page import="com.model.Income" %> 


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Income</title>

<link rel="stylesheet" type="text/css" href="styles/at.css" />
<link rel="stylesheet" type="text/css" href="styles/Utility.css" />

</head>

<body class="bt">




	<form method="post" target="new" action="GenerateP&LReport.jsp">
	
	
 
  <div class = "expense2">

  <div class="form-group">
  
  	<p class="ava">  Yearly Income Statement Report </p>
 
 		<label for="fname">To:</label>
  		<input type="date" id="Start_Date" name="Start_Date"><br><br>
  
  		<label for="lname">From:</label>
  		<input type="date" id=End_Date name="End_Date"><br><br>
  		

           		<div class ="cen">
				<a href="GenerateP&LReport.jsp"><button class="btn btn-info">Print</button></a>		 	
              </div>
    </div>
    </div>      
  </form>
  
  
 




         
</body>
</html>


 
         