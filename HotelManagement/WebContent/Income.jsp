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
<title>Income</title>

<link rel="stylesheet" type="text/css" href="styles/Income.css" />
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
  $("#myInput").on("keyup", function() {
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
			<a href="AddIncome.jsp"><button class="btn btn-success">Add Income</button></a>
			</div>	
			
			
			<div class = "filter1">			
			<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search Department" title="Type department">
			</div>
			</div>
			
			
			<div class = "lower-container tbs">
			
			
				
				<h2>Income Transactions</h2>
	
		<table class = "table" id="myTable1">
			<thead>
				<tr>
					<th>Income_ID</th>
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
         <%
              IFinance incomez = new FinanceImpl();
              ArrayList<Income> Transaction=new ArrayList<>();
             
              Transaction = incomez.listTransaction();
             
             for(Income incom:Transaction){ %>
            <tr>
               <td><%=incom.getIncome_ID()%> </td> 
               
               <td><%=incom.getPayment_ID()%></td>
             
               <td><%=incom.getCategory()%></td>
               
               <td><%=incom.getAmount()%></td>
               
               <td><%=incom.getDate()%></td>
               
               
               
               <form action="./GetIncome" method="post"><input type="hidden" name="Income_ID" value="<%=incom.getIncome_ID()%>">
               
               <td><button type = "submit" class = "btn btn-primary" name = "edit">View</button></a></td>
               
			   </form>
			   
			   <form action="./DeleteIncome" method="post">
			   
               <input type="hidden" name="Income_ID" value="<%=incom.getIncome_ID()%>">
               
               <td><button type = "submit" class = "btn btn-danger" name = "delete">Delete</button></a></td>
               
               
         
               
               
               </form>
             
     
               
            </tr>
            <%} %>
       

      </tbody>

		
			
						
				</table>
			</div>		
			<button class="btn btn-success" id="myBtn" style="position:relative;margin-left: 74%; margin-top:-1091px;">Search</button>

<div id="myModal" class="modal" id="myForm">

    <div class="container">
        <div class="row justify justify-content-center">
            <div class="col-11 col-md-8 col-lg-6 col-xl-5">
            
                <form action="SearchIncome.jsp" class="form-container" method="post">
                
                    <div class="card bg-dark">
                        <div class="row mt-0">
                            <div class="col-md-12 ">
                                <h4 style="color:white;text-align:center;">Monthly Income</h4>
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
                            <input type="button" value="Cancel" onclick="closeForm()" class="btn btn-block btn-purple rm-border"> 
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
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}


// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

function closeForm() {
	  document.getElementById("myModal").style.display = "none";
	}
	

</script> 

<% Income incom =(Income)request.getAttribute("income");%>


 <%if(incom!=null) { %>
 

			
		<h1>Income for a month</h1>
	
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
              IFinance incomezz = new FinanceImpl();
              ArrayList<Income> search=new ArrayList<>();
             
              search = incomezz.searchIncome(incom.getStart_Date(), incom.getEnd_Date());
             
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
	
     <%} %>
 
			
		</div>
		
</body>
</html>