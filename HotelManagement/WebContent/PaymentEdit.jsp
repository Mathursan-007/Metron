<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.model.Payment" %>
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
<% Payment payment=(Payment)request.getAttribute("payment"); %>
<form name="AddPayment" action="./UpdatePayment" Method="post">
<h5 align="center">Add Payment</h5>
<div class="form-row">
<div class="col-md-6 mb-3">
<label>Payment ID</label>
<input type="text" class="form-control" id="" name="id"
placeholder="" value="<%= payment.getId() %>" required>
</div>
<div class="col-md-6 mb-3">
<label>TripID</label>
<input type="text" class="form-control" id="" name="tid"
placeholder="" value="<%= payment.getTid() %>" required>
</div>
</div>
<div class="form-row">
<div class="col-md-6 mb-3">
<label>TripType</label>
<input type="text" class="form-control" id="" name="ttype"
placeholder="" value="<%= payment.getTtype() %>" required>
</div>
<div class="col-md-6 mb-3">
<label>Customer Name</label>
<input type="text" class="form-control" id="" name="customerName"
placeholder=""value="<%= payment.getCustomerName() %>" required>
</div>
</div>

<div class="form-row">
<div class="col-md-6 mb-3">

<label >Total Amount</label>
<input type="text" class="form-control" id="" name="amount"
placeholder="" value="<%= payment.getAmount() %>" required>
                                            </div>
                                           
                                            <div class="col-md-6 mb-3">
<label>Payment Method</label>
<input type="text" class="form-control" id="" name="pmethod"
placeholder="" value="<%= payment.getPmethod() %>" required>
</div>
</div>



<div align="right">
<div class="col-md-6"></div>
<button class="btn btn-primary" type="submit">Save</button>

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

