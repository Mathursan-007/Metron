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


	<form method="post" action="./SearchIncome"   >
 
  <div class = "expense1">

  <div class="form-group">
 
 		<label for="fname">Start Date:</label>
  		<input type="date" id="Start_Date" name="Start_Date"><br><br>
  
  		<label for="lname">End Date:</label>
  		<input type="date" id=End_Date name="End_Date"><br><br>
  		
  		
      
 
            <input type="Submit" value="Search" class="button">
    </div>
    </div>
       

  </form>
 


<% Income incom =(Income)request.getAttribute("income");%>


 <%if(incom!=null) { %>
 

			
		<h1>Income for a month</h1>
	

<table align="right">

			<thead>
				<tr>
					<div class = "colr">
					<th style="font-size:21px; color:#00008B;">Category</th>
					<th style="font-size:21px; color:#00008B;">Amount</th>
					</div>
				</tr>
			</thead>
			<tbody>

         <%
              IFinance income = new FinanceImpl();
              ArrayList<Income> search=new ArrayList<>();
             
              search = income.searchIncome(incom.getStart_Date(), incom.getEnd_Date());
             
              float total = 0;
              
             for(Income searc:search){ %>
            <tr>
               
               <td><%=searc.getCategory()%></td>
             
               <td><%=searc.getAmount()%></td>
               
</tr>
            <% total = total + searc.getAmount(); } %>
            
         <tr>
               
               <td style="color:red">Total Income</td>
             
               <td style="color:red"><%=total %></td>
               
               
                                    
               
</tr>
       

      </tbody>

		
						
		</table>
	
     <%} %>

</body>
</html>