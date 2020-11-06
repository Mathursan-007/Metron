<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>POS</title>

<link rel="stylesheet" href='https://use.fontawesome.com/releases/v5.8.1/css/all.css'>



</head>
<body>

			
    <!-- For demo purpose -->
   
    <div class="row">
        <div class="col-lg-6 mx-auto">
            <div class="card ">
                <div class="card-header">
                    <div class="bg-white shadow-sm pt-4 pl-2 pr-2 pb-2">
                        <!-- Credit card form tabs -->
                        <ul role="tablist" class="nav bg-light nav-pills rounded nav-fill mb-3">
                            <li class="nav-item"> <a data-toggle="pill" href="#credit-card" class="nav-link active "> <i class="fas fa-credit-card mr-2"></i> Card </a> </li>
                            <li class="nav-item"> <a data-toggle="pill" href="#paypal" class="nav-link "> <i class="fa fa-money-bill-alt mr-2"></i> Cash </a> </li>
                            <li class="nav-item"> <a data-toggle="pill" href="#net-banking" class="nav-link "> <i class="fas fa-user mr-2"></i> Guest Payment </a> </li>
                        </ul>
                    </div> <!-- End -->
                    <!-- Credit card form content -->
                    <div class="tab-content">
                        <!-- credit card info-->
                        <div id="credit-card" class="tab-pane fade show active pt-3">
                            <form action="./AddOrderPaymentCard" method="post">
                               <div class="form-group"> <label for="username">
                                        <h6>Order No:</h6>
                                    </label> <input type="number" name="orderid" placeholder="Order No" min="1" required class="form-control" required> 
                                </div>
                                <div class="form-group"> <label for="username">
                                        <h6>Card Owner</h6>
                                    </label> <input id="name" type="text" name="username" placeholder="Card Owner Name" required class="form-control" required> 
                                </div>
                                <div class="form-group"> <label for="cardNumber">
                                        <h6>Card number</h6>
                                    </label>
                                    <div class="input-group"> <input id="no" type="text" name="cardNumber" placeholder="Valid card number" class="form-control" pattern="[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]" required>
                                        <div class="input-group-append"> <span class="input-group-text text-muted"> <i class="fab fa-cc-visa mx-1"></i> <i class="fab fa-cc-mastercard mx-1"></i> <i class="fab fa-cc-amex mx-1"></i> </span> </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-8">
                                        <div class="form-group"> <label><span class="hidden-xs">
                                                    <h6>Expiration Date</h6>
                                                </span></label>
                                            <div class="input-group"> <input id="m" type="text" placeholder="MM" name="" class="form-control" pattern="[0-1][0-2]" max="12" required> <input id="y" type="text" placeholder="YY" name="" class="form-control"  pattern="[2-9][0-9]" required> </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group mb-4"> <label data-toggle="tooltip" title="Three digit CV code on the back of your card">
                                                <h6>CVV <i class="fa fa-question-circle d-inline"></i></h6>
                                            </label> <input id="cvv" type="text" pattern="[0-9][0-9][0-9]"  required class="form-control"> </div>
                                    </div>
                                </div>
                                <div class="form-group"> <label for="username">
                                        <h6>Amount:</h6>
                                    </label> <input type="number" name="amount" placeholder="Amount" min="0" required class="form-control "> 
                                </div>
                                <div class="card-footer"> <button type="submit" class="subscribe btn btn-primary btn-block shadow-sm"> Confirm Payment </button>
                                <button onclick="setvalue()" class="subscribe btn btn-primary btn-block shadow-sm"> Demo</button>
                            </form>
                        </div>
                    </div> <!-- End -->
                    <!-- Cash info -->
                    <div id="paypal" class="tab-pane fade pt-3">
                      <form action="./AddOrderPaymentCash" method="post">
                       <div class="form-group"> <label for="username">
                                        <h6>Order No:</h6>
                                    </label> <input type="number" name="orderid" placeholder="Order No" min="1" required class="form-control"> 
                        </div>
                        <div class="form-group"> <label for="username">
                                        <h6>Amount:</h6>
                                    </label> <input type="number" name="amount" placeholder="Amount" required class="form-control" min="0"> </div>
                           <div class="card-footer"> <button type="submit" class="subscribe btn btn-primary btn-block shadow-sm"> Confirm Payment </button></div>            
                    </form>
                    </div> <!-- End -->
                    <!-- bank transfer info -->
                    <div id="net-banking" class="tab-pane fade pt-3">
                      <form action="./AddGuestOrderPayment" method="post">
                      <div class="form-group"> <label for="username">
                                        <h6>Order No:</h6>
                                    </label> <input type="number" name="orderid" placeholder="Order No" min="1" required class="form-control"> 
                        </div>
                      
                        <div class="form-group"> <label for="username">
                                        <h6>Reservation NO:</h6>
                                    </label> <input type="number" name="reserveid" placeholder="Reservation NO" min="1" required class="form-control"> 
                        </div>  
                        <div class="form-group">
                            <p> <button type="submit" class="btn btn-primary ">Add to Bill</button> </p>
                        </div>
                       </form>
                    </div> <!-- End -->
                    <!-- End -->
                </div>
            </div>
        </div>
        </div>

<script>

function setvalue() {
	  document.getElementById("name").value = "Mathursan Balathas";
	  document.getElementById("no").value = "4536543212345678";
	  document.getElementById("m").value = "12";
	  document.getElementById("y").value = "27";
	  document.getElementById("cvv").value = "458";
	}

</script>
</body>
</html>