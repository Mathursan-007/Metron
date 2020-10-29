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
<link rel="stylesheet" type="text/css" href="styles/Income.css" />
<link rel="stylesheet" type="text/css" href="styles/at.css" />
<link rel="stylesheet" type="text/css" href="styles/Utility.css" />


<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js"></script>

<script>

window.onload=function(){
	
	document.getElementById("download").addEventListener("click",()=> {
		const invoice =this.document.getElementById("invoice");
		console.log(invoice);
		console.log(window);
		var opt={
				
				filename:'Income.pdf',
				imagey:{type:'jpeg',quality:0.98},
				html2canvas:{scale :5},
				jsPDF:{unit:'in',formate:'letter',orientation:'portrait'}
				
		};
		html2pdf().from(invoice).set(opt).save();
		
	});
	
	
}



</script>



</head>
<body class="bt">

<div class = "back">
<button  id="download" class="btn btn-success ">Download Report</button>
</div>

<div id="invoice">


 

			
		
	
<div class ="tab">
<table style="margin-left:-230px;">

<h1 style="margin-left:330px; margin-top:-400px;">Income for a month</h1>

			<thead>
				<tr>
					
					<th style="font-size:21px; background:#E6E6FA; color:#00008B;">Category</th>
					<th style="font-size:21px; background:#E6E6FA; color:#00008B;">Amount</th>
					
				</tr>
			</thead>
			<tbody>

         <%
              IFinance income = new FinanceImpl();
              ArrayList<Income> search=new ArrayList<>();
           
              
              String Start_date= (String) request.getParameter("Start_Date");
              String End_date= (String) request.getParameter("End_Date");
              
                     
              search = income.searchIncome(Start_date,End_date);
             
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
 </div>
</div>

</body>
</html>