<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href='https://use.fontawesome.com/releases/v5.8.1/css/all.css'>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"> </script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"> </script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">




<style>

body {
    background: #f5f5f5
}

.rounded {
    border-radius: 1rem
}

.nav-pills .nav-link {
    color: #555
}

.nav-pills .nav-link.active {
    color: white
}

input[type="radio"] {
    margin-right: 5px
}

.bold {
    font-weight: bold
}

</style>



</head>
<body  style="background:#8f9dd7;">
<%GymReservation pg =(GymReservation)request.getAttribute("pg");%>

			<div class="form-row">
			    <div class="col-md-12 mb-3">
			       <div class="container py-3">
			          <label for="validationDefault02"></label>
		               	<div class="row">
			               <div class="col-lg-6 mx-auto">
			                 <div class="card ">
			                   <div class="card-header">
			                    <div class="bg-white shadow-sm pt-4 pl-2 pr-2 pb-2">
									<!-- Credit card form tabs -->
									<ul role="tablist" class="nav bg-light nav-pills rounded nav-fill mb-3">
									 <li class="nav-item"> <a data-toggle="pill" href="#credit-card" class="nav-link active "> <i class="fas fa-credit-card mr-2"></i>Credit Card </a> </li>
									 <li class="nav-item"> <a data-toggle="pill" href="#paypal" class="nav-link "> <i class="fa fa-money"></i>Cash </a> </li>
			                       </ul>
			                   </div> <!-- End -->
			<!-- Credit card form content -->
			<div class="tab-content">
			<!-- credit card info-->
			<div id="credit-card" class="tab-pane fade show active pt-3">
			<form role="form" action="./AddGPayment" method="post">
			<div class="form-group"> <label for="username"><h6>Card Owner</h6></label>
			<input type="text"name="username"placeholder="Card Owner Name"  value="<%=pg.getCusName()%>" required class="form-control ">
			</div>
			<div class="form-group"> <label for="username"><h6>Reservation ID</h6></label>
			<input type="text" name="id" placeholder="ID" value="<%=pg.getRID()%>" required class="form-control ">
			</div>
			<div class="form-group"> <label for="username"><h6>Package Name</h6></label>
			<input type="text" name="pname" id="pname" onchange="view();"   value="<%=pg.getGpackagename()%>" required class="form-control ">
			</div>
			<div class="form-group"> <label for="username"><h6>Amount</h6></label>
			<input type="text" name="amount" id="amount" placeholder="00" value="<%=pg.getAmount()%>" required class="form-control ">
			</div>
			
			<div class="form-group"> <label for="cardNumber"><h6>Card number</h6></label>
			<div class="input-group"> <input type="text"name="cardNumber"placeholder="Valid card number"class="form-control "required>
			<div class="input-group-append">
			<span
			class="input-group-text text-muted">
			<i
			class="fab fa-cc-visa mx-1"></i>
			<i
			class="fab fa-cc-mastercard mx-1"></i>
			<i
			class="fab fa-cc-amex mx-1"></i>
			</span> </div>
			</div>
			</div>
			<div class="row">
			<div class="col-sm-8">
			<div class="form-group">
			<label><span class="hidden-xs">
			<h6>Expiration Date</h6>
			</span></label>
			<div class="input-group">
			<input type="number" placeholder="MM"name="" class="form-control"required>
			<input type="number" placeholder="YY" name="" class="form-control" required> </div>
			</div>
			</div>
			<div class="col-sm-4">
			<div class="form-group mb-4">
			<label data-toggle="tooltip" title="Three digit CV code on the back of your card">
			<h6>CVV <i class="fa fa-question-circle d-inline"></i></h6>
			</label> 
			<input type="text" required class="form-control">
			</div>
			</div>
			</div>
			<div class="card-footer">
			<button type="submit" class="subscribe btn btn-primary btn-block shadow-sm">Confirm Payment </button>
			</form>
			</div>
			</div> <!-- End -->
			
			<!-- cash info -->
			<div id="paypal" class="tab-pane fade pt-3">
			<form  action="./AddGPayment" method="post">
			<div class="form-group"> 
			<label for="username"><h6>Customer Name</h6></label> 
			<input type="text"name="username" placeholder=" Name" value="<%=pg.getCusName()%>" required class="form-control ">
			</div>
			<div class="form-group"> <label for="username"><h6>Reservation ID</h6></label>
			<input type="text" name="id" placeholder="ID" value="<%=pg.getRID()%>" required class="form-control ">
			</div>
			<div class="form-group"> <label for="username"><h6>Package Name</h6></label>
			<input type="text" name="pname" id="pname" onchange="view();"   value="<%=pg.getGpackagename()%>" required class="form-control ">
			</div>
			<div class="form-group"> <label for="username"><h6>Amount</h6></label>
			<input type="text" name="amount" id="amount" placeholder="00" value="<%=pg.getAmount()%>" required class="form-control ">
			</div>
			<div class="card-footer"> 
			<button type="submit" class="subscribe btn btn-primary btn-block shadow-sm">Confirm Payment </button></div>
			
			</form>
			</div> <!-- End -->
			<!-- End -->
			</div>
			</div>
			</div>
			</div>
			</div>
			</div>
			</div>
			

</body>
</html>