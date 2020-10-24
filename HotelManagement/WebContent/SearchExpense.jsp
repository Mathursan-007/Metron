<%@page import="java.util.ArrayList"%>
    
<%@ page import="com.service.IFinance" %>  
<%@ page import="com.service.FinanceImpl"%>  
<%@ page import="com.model.Expense" %> 


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Expense</title>

<link rel="stylesheet" type="text/css" href="styles/at.css" />
<link rel="stylesheet" type="text/css" href="styles/Utility.css" />



</head>
<body class="bt">


	<form method="post" action="./SearchExpense"   >
 
  <div class = "expense1">

  <div class="form-group">
 
 		<label for="fname">Start Date:</label>
  		<input type="date" id="Start_Date" name="Start_Date"><br><br>
  
  		<label for="lname">End Date:</label>
  		<input type="date" id=End_Date name="End_Date"><br><br>
  		
      <div class = "bck">
             <button onclick="goBack()">Print Report</button>
             
             
             
             <script>
				function goBack() {
  				window.history.back();
				}
			</script>
             
			 </div>  
 
            <input type="Submit" value="Search" class="button">
    </div>
    </div>
       

  </form>
 


<% Expense expen =(Expense)request.getAttribute("expense");%>


 <%if(expen!=null) { %>
 

			
		<h1 style="margin-left:900px;">Expense for a month</h1>
	

<table align="right">

			<thead>
				<tr>
					
					<th  style="font-size:21px; color:#00008B;">Category</th>
					<th  style="font-size:21px; color:#00008B;">Amount</th>
					
				</tr>
			</thead>
			<tbody>

         <%
              IFinance expense = new FinanceImpl();
              ArrayList<Expense> search=new ArrayList<>();
             
              search = expense.searchExpense(expen.getStart_Date(), expen.getEnd_Date());
             
              float total = 0;
              
             for(Expense searc:search){ %>
            <tr>
               
               <td><%=searc.getCategory()%></td>
             
               <td><%=searc.getAmount()%></td>
               
</tr>
            <% total = total + searc.getAmount(); } %>
            
         <tr>
               
               <td style="color:red">Total Expense</td>
             
               <td style="color:red"><%=total %></td>
               
</tr>
       

      </tbody>

		
						
		</table>
	
     <%} %>

</body>
</html>