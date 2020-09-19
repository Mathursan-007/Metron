<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="ISO-8859-1">
    <title>view city tour</title>
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

    <!-- Top container -->
    <div style="margin-top:84px;">
        <div class="w3-bar w3-top w3-black w3-large" style="z-index:4;margin-top:80px;">
            <button class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey"
                onclick="w3_open();"><i class="fa fa-bars"></i> Menu</button>

        </div>

        <!-- Sidebar/menu -->
        <nav class="w3-sidebar w3-collapse w3-animate-left vidya" style="z-index:3;width:300px;" id="mySidebar"><br>
            <div class="w3-container w3-row">
                <div class="w3-col s4">
                    <img src="https://f0.pngfuel.com/png/348/800/man-wearing-blue-shirt-illustration-png-clip-art-thumbnail.png"
                        style="width:80px;height:80px;border-radius:50%;margin-top:30px;margin-left:90px;">
                </div>
            </div>

            <div class="w3-container" style="margin-top:20px;">
                <h5 style="text-align:center;">Welcome User</h5>
            </div>
            <div class="w3-bar-block">
                <a href="#" class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black"
                    onclick="w3_close()" title="close menu"><i class="fa fa-remove fa-fw"></i> Close Menu</a>
                <a href="Transportservice.jsp" id="test1" class="w3-bar-item w3-button w3-padding " onclick="button1()"><i
                        class="fa fa-bus"></i> Transport Service </a>
                <a href="CarRental.jsp" id="test2" class="w3-bar-item w3-button w3-padding" onclick="button2()"><i
                        class="fa fa-address-car"></i> Car Rental </a>
                <a href="cityTour.jsp" id="test3" class="w3-bar-item w3-button w3-padding" onclick="button3()"><i
                        class="fa fa-train"></i> City Tour </a>
                <a href="payment.jsp" id="test4" class="w3-bar-item w3-button w3-padding" onclick="button4()"><i
                        class="fa fa-calculator"></i> Payment </a>
                <!-- <a href="#Butt5" id="test5" class="w3-bar-item w3-button w3-padding " onclick="button5()"><i class="fa fa-users fa-fw"></i>  </a>
   <a href="#Butt6" id="test6" class="w3-bar-item w3-button w3-padding" onclick="button6()"><i class="fa fa-file-text"></i>   </a>
  -->
            </div>
    </div>
    </nav>

    <!-- Overlay effect when opening sidebar on small screens -->
    <div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer"
        title="close side menu" id="myOverlay"></div>

    <!-- !PAGE CONTENT! -->
    <div class="w3-main" style="margin-left:00px;margin-top:243px;transform: translate(0%, 40%);">
        <div class="page-wrapper">
            <div class="container-fluid">
                <div class="page-breadcrumb">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row col-12">
                                        <div class="col-7">
                                            <div align="left">
                                                <h4 class="card-title">City Tour</h4>
                                            </div>
                                        </div>
                                        <div class="col-3">
                                            <div align="right">
                                                <input class="form-control" type="text" placeholder="Search"
                                                    aria-label="Search"> </div>
                                        </div>
                                        <div class="col-2">
                                            <div align="left">
                                                <a href="cityTourAdd.jsp" class="btn btn-primary">Add</a>
                                            </div>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="table-responsive">
                                        <table id="zero_config" class="table table-striped table-bordered no-wrap">
                                            <thead>
                                                <tr>
                                                    <th>Customer Name</th>
                                                    <th>Room No</th>
                                                    <th>Package </th>
                                                    <th>No of People</th>
                                                    <th>Total Amount</th>
                                                    <th>Date</th>
                                                    <th>Time</th>
                                                    <th>Vehicle</th>
                                                    <th>Driver</th>
                                                      <th width="2%">Actions</th>
                                                   
                                                   

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                   <td>car</td>
                                                    <td>car</td>
                                                     <td>car</td>
                                                    <td>car</td>
                                                    <td>car</td>
                                                    <td>car</td>
                                                    <td>car</td>
                                                    <td>car</td>
                                                    <td>car</td>
                                                   
                                                   
                                                    <td>

                                                        <a href="EditcityTour.jsp" class="button" id="editbtn">
                                                            <i class="fas fa-edit" style="color: #4261f9;"></i>
                                                        </a>

                                                        <a href="" id="" class="deletebtn">
                                                            <i class="fa fa-trash" style="color: red;"></i>
                                                        </a>
                                                    </td>

                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
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

</html>

