<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="ISO-8859-1">
<title>Add City Tour</title>
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
<style>
.vidya {
background: rgb(190, 189, 203);
background: radial-gradient(circle, rgba(190, 189, 203, 1) 0%, rgba(174, 174, 221, 1) 100%, rgba(121, 148, 153, 1) 100%);
}
</style>

</head>

<body class="w3-light-grey">

<script>
document.getElementById("try").className = " ";
</script>


<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer"
title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px;margin-top:43px;">
<div class="page-wrapper">
<div class="container-fluid">
<div class="page-breadcrumb">
<div class="row">
<div class="col-10">
<div class="card">
<div class="card-body">
<form>
<h3 align="center">Add City Tour</h3>
<div class="form-row">
<div class="col-md-6 mb-3">
<label for="validationDefault01">Customer name</label>
<input type="text" class="form-control" id="validationDefault01"
placeholder="" value="" required>
</div>
<div class="col-md-6 mb-3">
<label for="validationDefault02">Room No</label>
<input type="text" class="form-control" id="validationDefault02"
placeholder="" value="" required>
</div>
</div>
<div class="form-row">
<div class="col-md-6 mb-3">
<label for="validationDefault02">Package</label>
<select id="inputState" class="form-control">
<option selected>Choose...</option>
<option Value=1>Colombo</option>
<option Value=2>Galle</option>
<option Value=3>Trincomalee</option>
<option Value=4>Kandy</option>
<option Value=5>Nuwra-Eliya</option>
</select>
</div>
<div class="col-md-6 mb-3">
<label for="validationDefault01">No Of People</label>
<input type="text" class="form-control" id="validationDefault01"
placeholder="" value="" required>
</div>
</div>
<div class="form-row">
<div class="col-md-6 mb-3">
<label for="validationDefault02">Total Amount</label>
<input type="text" class="form-control" id="validationDefault02"
placeholder="" value="" required>
</div>
<div class="col-md-6 mb-3">
<label for="validationDefault02">Date</label>
<input type="text" class="form-control" id="validationDefault02"
placeholder="" value="" required>
</div>
</div>
<div class="form-row">
<div class="col-md-6 mb-3">
<label for="validationDefault02">Time</label>
<input type="text" class="form-control" id="validationDefault02"
        placeholder="" value="" required>
</div>

<div class="col-md-6 mb-3">
<label for="validationDefault02">Vehicle</label>
<select id="inputState" class="form-control">
<option Value=1>Thomas</option>
<option Value=2>Johnson</option>
<option Value=3>Mithun</option>
<option Value=4>Karthick</option>
<option Value=5>Selvam</option>
</select>
</div>

</div>
<div class="form-row">
<div class="col-md-6 mb-3">
<label for="validationDefault02">Driver</label>
<select id="inputState" class="form-control">
<option selected>Choose...</option>
<option Value=1>Thomas</option>
<option Value=2>Johnson</option>
<option Value=3>Mithun</option>
<option Value=4>Karthick</option>
<option Value=5>Selvam</option>
</select>
</div>
                                            </div>
<br>
<div class="form-row">

<div class="col-2">
                                           <div class="col-md-6 mb-3">
<a href="ViewcityTour.jsp" class="btn btn-primary">Save</a>
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

