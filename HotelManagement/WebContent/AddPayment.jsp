<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Add Payment</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="styles/dropdown.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"> </script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"> </script>
<script src="scripts/nav.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">




</head>

<body class="w3-light-grey">

<script>
document.getElementById("try").className = " ";
</script>



<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer"
title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:350px;margin-top:43px;">
<div class="page-wrapper">
<div class="container-fluid">
<div class="page-breadcrumb">
<div class="row">
<div class="col-10">
<div class="card">

<div class="card-body">
<form name="AddPayment" action="./AddPayment" Method="post">
<h5 align="center">Add Payment</h5>
<div class="form-row">
<div class="col-md-6 mb-3">
<label>Payment ID</label>
<input type="text" class="form-control" id="" name="id"
placeholder="" value="" required>
</div>
<div class="col-md-6 mb-3">
<label>TripID</label>
<input type="text" class="form-control" id="" name="tid"
placeholder="<%= request.getParameter("id") %>" value="<%= request.getParameter("id") %>" required>
</div>
</div>
<div class="form-row">
<div class="col-md-6 mb-3">
<label>TripType</label>
<input type="text" class="form-control" id="" name="ttype"
placeholder="" value="" required>
</div>
<div class="col-md-6 mb-3">
<label>Customer Name</label>
<input type="text" class="form-control" id="" name="customerName"
placeholder="<% out.print(request.getParameter("cusName")); %>" value="<% out.print(request.getParameter("cusName")); %>" required>
</div>
</div>

<div class="form-row">
<div class="col-md-6 mb-3">

<label >Total Amount</label>
<input type="text" class="form-control" id="" name="amount"
placeholder="<%=  ( Integer.parseInt(request.getParameter("totalAmount"))*Integer.parseInt(request.getParameter("noOfDays"))) %>" value="<%=  ( Integer.parseInt(request.getParameter("totalAmount"))*Integer.parseInt(request.getParameter("noOfDays"))) %>" required>
                                            </div>
                                           
                                            <div class="col-md-6 mb-3">
<label>Payment Method</label>
<input type="text" class="form-control" id="" name="pmethod"
placeholder="" value="" required>
</div>
</div>

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
<ul role="tablist"
class="nav bg-light nav-pills rounded nav-fill mb-3">
<li class="nav-item"> <a data-toggle="pill"
href="#credit-card"
class="nav-link active "> <i
class="fas fa-credit-card mr-2"></i>
Credit Card </a> </li>
<li class="nav-item"> <a data-toggle="pill"
href="#paypal" class="nav-link "> <i
class="fab fa-paypal mr-2"></i>
Cash </a> </li>
</ul>
</div> <!-- End -->
<!-- Credit card form content -->
<div class="tab-content">
<!-- credit card info-->
<div id="credit-card"
class="tab-pane fade show active pt-3">
<form role="form">
<div class="form-group"> <label
for="username">
<h6>Card Owner</h6>
</label> <input type="text"
name="username"
placeholder="Card Owner Name"
required class="form-control ">
</div>
<div class="form-group"> <label
for="cardNumber">
<h6>Card number</h6>
</label>
<div class="input-group"> <input
type="text"
name="cardNumber"
placeholder="Valid card number"
class="form-control "
required>
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
<label><span
class="hidden-xs">
<h6>Expiration Date
</h6>
</span></label>
<div class="input-group">
<input type="number"
placeholder="MM"
name=""
class="form-control"
required> <input
type="number"
placeholder="YY"
name=""
class="form-control"
required> </div>
</div>
</div>
<div class="col-sm-4">
<div class="form-group mb-4">
<label data-toggle="tooltip"
title="Three digit CV code on the back of your card">
<h6>CVV <i
class="fa fa-question-circle d-inline"></i>
</h6>
</label> <input type="text"
required
class="form-control">
</div>
</div>
</div>
<div class="card-footer"> <button
type="button"
class="subscribe btn btn-primary btn-block shadow-sm">
Confirm Payment </button>
</form>
</div>
</div> <!-- End -->

<!-- cash info -->
<div id="paypal" class="tab-pane fade pt-3">
<form role="form">
<div class="form-group"> <label
for="username">
<h6>Amount</h6>
</label> <input type="text"
name="username"
placeholder="Card Owner Name"
required class="form-control ">
</div>
<div class="card-footer"> <button
type="button"
class="subscribe btn btn-primary btn-block shadow-sm">
Confirm Payment </button></div>

</form>
</div> <!-- End -->
<!-- End -->
</div>
</div>
</div>
</div>
</div>
</div>
<div align="right">
<div class="col-md-6"></div>
<button class="btn btn-primary" type="submit">Save</button>
</div>
</div>
</form>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>






</body>
<script src="scripts/Transport.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="scripts/nav.js"></script>
<link rel="stylesheet" href="styles/dropdown.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"> </script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"> </script>
</html>

