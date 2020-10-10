<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Room Payment</title>
<link rel="stylesheet" href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css'>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js'></script>
<link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css'>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>


<style>

.inlineimage {
    max-width: 470px;
    margin-right: 8px;
    margin-left: 10px
}

.images {
    display: inline-block;
    max-width: 98%;
    height: auto;
    width: 22%;
    margin: 1%;
    left: 20px;
    text-align: center
}
</style>

</head>
<body>

		<%@include file="Header.jsp" %>

		<%float cost =(Float)request.getAttribute("Amount"); %>
	<div class="container" style="padding-top:100px;">
    <div class="page-header text-center">
        <h1>Payment Details</h1>
    </div>
    <!-- Credit Card Payment Form - START -->
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="inlineimage"> <img class="img-responsive images" src="https://cdn0.iconfinder.com/data/icons/credit-card-debit-card-payment-PNG/128/Mastercard-Curved.png"> <img class="img-responsive images" src="https://cdn0.iconfinder.com/data/icons/credit-card-debit-card-payment-PNG/128/Discover-Curved.png"> <img class="img-responsive images" src="https://cdn0.iconfinder.com/data/icons/credit-card-debit-card-payment-PNG/128/Paypal-Curved.png"> <img class="img-responsive images" src="https://cdn0.iconfinder.com/data/icons/credit-card-debit-card-payment-PNG/128/American-Express-Curved.png"> </div>
                        </div>
                    </div>
                    
                    <h1 style="text-align:center">Total Amount</h1>
                    <h3 style="text-align:center">Rs. <%=cost %> </h3>
                    <div class="panel-body">
                        <form role="form">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="form-group"> <label>CARD NUMBER</label>
                                        <div class="input-group"> <input type="number" class="form-control" placeholder="Valid Card Number" /> <span class="input-group-addon"><span class="fa fa-credit-card"></span></span> </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-7 col-md-7">
                                    <div class="form-group"> <label><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label> <input type="number" class="form-control" placeholder="MM / YY" /> </div>
                                </div>
                                <div class="col-xs-5 col-md-5 pull-right">
                                    <div class="form-group"> <label>CV CODE</label> <input type="number" class="form-control" placeholder="CVC" /> </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="form-group"> <label>CARD OWNER</label> <input type="text" class="form-control" placeholder="Card Owner Name" /> </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="panel-footer">
                        <div class="row">
                            <div class="col-xs-12"><a href="Restaurant.jsp"><button id="pay" class="btn btn-success btn-lg btn-block" onClick="myFunction()">Confirm Payment</button></a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

	<%@include file="Footer.jsp" %>
	
<script>
// When the user clicks on div, open the popup
function myFunction() {
  alert('Table Reserved');
}
</script>	
	
</body>
</html>