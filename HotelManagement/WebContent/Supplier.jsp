<%@page import="java.util.ArrayList"%>

<%@ page import="com.service.IFinance" %>  
<%@ page import="com.service.FinanceImpl"%>  
<%@ page import="com.model.Supplier" %> 


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Suppliers</title>

<link rel="stylesheet" type="text/css" href="styles/at.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>
$(document).ready(function(){
  $("#myInput2").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>

<style>
.tbs{
		width:100%;
		height:500px;
		overflow:auto;
}
</style>

</head>
<body class="bt">



		<div class = " card-container">
			<div class = "upper-container">
				
			 <div class = "incom">	
			 <a href="AddSupplier.jsp"><button class="btn btn-success">Add Supplier</button></a>
			 </div>
			 
			 
			 <div class = "filter2">			
			<input type="text" id="myInput2" onkeyup="myFunction()" placeholder="Search Supplier" title="Type supplier">			
			</div>
			
			</div>
			
			
			<div class = "lower-container tbs">
			
			
				
				<h2>Supplier Details</h2>
	
		<table class = "table">
			<thead>
				<tr>
					<th>Supplier_ID</th>
					<th>Name</th>
					<th>Type</th>
					<th>Contact_No</th>
					<th>Email</th>
					<th>Address</th>
					<th>Action</th>
					<th></th>
				</tr>
			</thead>
			<tbody id="myTable">
<tr>
         <%
              IFinance supplier = new FinanceImpl();
              ArrayList<Supplier> Details=new ArrayList<>();
             
              Details = supplier.listDetails();
             
             for(Supplier suppl:Details){ %>
            <tr>
               <td><%=suppl.getSupplier_ID()%> </td>
               
               <td><%=suppl.getName()%></td>
             
               <td><%=suppl.getType()%></td>
               
               <td><%=suppl.getContact_No()%></td>
               
               <td><%=suppl.getEmail()%></td>
               
               <td><%=suppl.getAddress()%></td>
               
               
               <form action="./GetSupplier" method="post"><input type="hidden" name="Supplier_ID" value="<%=suppl.getSupplier_ID()%>">
               
               <td><button type = "submit" class = "btn btn-primary" name = "edit">View</button></a></td>
               
			   </form>
			   
			   <form action="./DeleteSupplier" method="post">
			   
               <input type="hidden" name="Supplier_ID" value="<%=suppl.getSupplier_ID()%>">
               
               <td><button type = "submit" class = "btn btn-danger" name = "delete">Delete</button></a></td>
               
               
         
               
               
               </form>
             
     
               
            </tr>
            <%} %>
       

      </tbody>

		
			
						
				</table>
			</div>		
			
			
		</div>
		
</body>
</html>