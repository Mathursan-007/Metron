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
<title>Expense</title>

<link rel="stylesheet" type="text/css" href="styles/Expense.css" />
<link rel="stylesheet" type="text/css" href="styles/at.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
</script>

<script>
$(document).ready(function(){
  $("#myInput1").on("keyup", function() {
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
			<a href="AddExpense.jsp"><button class="btn btn-success">Add Expense</button></a>
			</div>	
			
			
			<div class = "filter">			
			<input type="text" id="myInput1" onkeyup="myFunction()" placeholder="Search Department" title="Type department">
			</div>
			</div>
			
			
			<div class = "lower-container tbs">
			
			
				
				<h2>Expense Transactions</h2>
	
		<table class = "table" id="myTable1">
			<thead>
				<tr>
					<th>Expense_ID</th>
					<th>Payment_ID</th>
					<th>Category</th>
					<th>Amount</th>
					<th>Date</th>
					<th>Action</th>
					<th></th>
				</tr>
			</thead>
			<tbody id="myTable">
<tr>
         <%IFinance expensez = new FinanceImpl();
         ArrayList<Expense> Tranct=new ArrayList<>();
         
         Tranct = expensez.exTransaction();
        
        for(Expense expen:Tranct){ %>
       <tr>
          <td><%=expen.getExpense_ID()%> </td>
          
          <td><%=expen.getPayment_ID()%></td>
        
          <td><%=expen.getCategory()%></td>
          
          <td><%=expen.getAmount()%></td>
          
          <td><%=expen.getDate()%></td>
          
          
          
          <form action="./GetExpense" method="post"><input type="hidden" name="Expense_ID" value="<%=expen.getExpense_ID()%>">
          
          <td><button type = "submit" class = "btn btn-primary" name = "edit">View</button></a></td>
          
		   </form>
		   
		   <form action="./DeleteExpense" method="post">
		   
          <input type="hidden" name="Expense_ID" value="<%=expen.getExpense_ID()%>">
          
          <td><button type = "submit" class = "btn btn-danger" name = "delete">Delete</button></a></td>
          
          
    
          
          
          </form>
        
               
            </tr>
            <%} %>
       

      </tbody>

		
			
						
				</table>
			</div>		
			<button class="btn btn-success" id="myBtn1" style="position:relative;margin-left: 74%; margin-top:-1091px;">Search</button>

<div id="myModal1" class="modal1" id="myForm1">

    <div class="container1">
        <div class="row justify justify-content-center">
            <div class="col-11 col-md-8 col-lg-6 col-xl-5">
            
                <form action="SearchExpense.jsp" class="form-container1" method="post">
                
                    <div class="card bg-dark">
                        <div class="row mt-0">
                            <div class="col-md-12 ">
                                <h4 style="color:white;text-align:center;">Monthly Expense</h4>
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                            <div class="col-md-12 mb-0">    
								   <label for="To" style="color:white;text-align:center;"><b>To</b></label>
	                              <input type="date" id="Start_Date" name="Start_Date" class="form-control input-box rm-border" required>   
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12 mb-2">
                                  <label for="From" style="color:white;text-align:center;"><b>From</b></label>
	                              <input type="date" id="End_Date" name="End_Date" class="form-control input-box rm-border" required>
                            </div>
                        </div>
                        
                        <div class="form-group row justify-content-center mb-0">
                          <div class="col-md-12 px-3">
                            <input type="submit" value="Search" class="btn btn-block btn-purple rm-border">
                            <input type="button" value="Cancel" onclick="closeForm1()" class="btn btn-block btn-purple rm-border"> 
                           </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
</div>

</div>




<script>

// Get the modal
var modal1 = document.getElementById("myModal1");

// Get the button that opens the modal
var btn1 = document.getElementById("myBtn1");


// When the user clicks the button, open the modal 
btn1.onclick = function() {
  modal1.style.display = "block";
}


// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event1) {
  if (event1.target == modal1) {
    modal1.style.display = "none";
  }
}

function closeForm1() {
	  document.getElementById("myModal1").style.display = "none";
	}
	


</script> 

<% Expense expen =(Expense)request.getAttribute("expense");%>


 <%if(expen!=null) { %>
 
 

			
		<h1>Expense for a month</h1>
	
<div class ="tab">
<table align="center">

			
			<thead>
				<tr>
					<div class = "colr">
					<th style="font-size:21px; background:#E6E6FA; color:#00008B;">Category</th>
					<th style="font-size:21px; background:#E6E6FA; color:#00008B;">Amount</th>
					</div>
				</tr>
			</thead>
			<tbody>

         <%
              IFinance expensezz = new FinanceImpl();
              ArrayList<Expense> search=new ArrayList<>();
             
              search = expensezz.searchExpense(expen.getStart_Date(), expen.getEnd_Date());
             
              float total = 0;
              
              for(Expense searc:search){ %>
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
	
     <%} %>
 
			
		</div>
		
</body>
</html>