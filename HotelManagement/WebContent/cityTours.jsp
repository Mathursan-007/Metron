<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!Doctype html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">



<meta charset="ISO-8859-1">
    <title>City Tours</title>
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

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        * {
            box-sizing: border-box;
          
        }

        body {
            font-family: Arial, Helvetica, sans-serif;            
   
        }

        /* Float four columns side by side */
        .column {
            float: left;
            width: 25%;
            padding: 0 10px;
        }

        /* Remove extra left and right margins, due to padding */
        .row {
            margin: 0 -5px;
        }

        /* Clear floats after the columns */
        .row:after {
            content: "";
            display: table;
            clear: both;
        }

        /* Responsive columns */
        @media screen and (max-width: 600px) {
            .column {
                width: 100%;
                display: block;
                margin-bottom: 20px;
            }
        }

        /* Style the counter cards */
        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            padding: 16px;
            text-align: center;
            background-color: #f1f1f1;
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
    <div class="w3-main" style="margin-left:0px;margin-top:43px;width: 100%;height:550px;overflow: auto;">
        <div class="page-wrapper">
            <div class="container-fluid">
                <div class="page-breadcrumb">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row col-12">
                                        <div class="col-6">
                                            <div align="left">
                                                <h4 class="card-title">Our Packages</h4>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div align="right">
                                                <a href="cityTourAdd.jsp" class="btn btn-primary">Add</a>
                                            </div>
                                        </div>
                                    </div>
                                    <br>

                                    <div class="row row-cols-1 row-cols-md-2">
                                        <div class="col mb-4">
                                            <!-- Card -->
                                            <div class="card">

                                                <!--Card image-->
                                                <div class="view overlay">
                                                    <img class="card-img-top"
                                                        src="https://mdbootstrap.com/img/Photos/Others/images/16.jpg"
                                                        alt="Card image cap">
                                                    <a href="#!">
                                                        <div class="mask rgba-white-slight"></div>
                                                    </a>
                                                </div>

                                                <!--Card content-->
                                                <div class="card-body">

                                                    <!--Title-->
                                                    <h4 class="card-title">Colombo City Tour</h4>
                                                    <!--Text-->
                                                    <p class="card-text">Description  </p>
                                                        </p>
                                                    <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
                                                    <button type="button" class="btn btn-light-blue btn-md">Read
                                                        more</button>

                                                </div>

                                            </div>
                                            <!-- Card -->
                                        </div>
                                        <div class="col mb-4">
                                            <!-- Card -->
                                            <div class="card">

                                                <!--Card image-->
                                                <div class="view overlay">
                                                    <img class="card-img-top"
                                                        src="https://mdbootstrap.com/img/Photos/Others/images/16.jpg"
                                                        alt="Card image cap">
                                                    <a href="#!">
                                                        <div class="mask rgba-white-slight"></div>
                                                    </a>
                                                </div>

                                                <!--Card content-->
                                                <div class="card-body">

                                                    <!--Title-->
                                                    <h4 class="card-title">Galle City Tour</h4>
                                                    <!--Text-->
                                                    <p class="card-text">Description</p>
                                                    <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
                                                    <button type="button" class="btn btn-light-blue btn-md">Read
                                                        more</button>

                                                </div>

                                            </div>
                                            <!-- Card -->
                                        </div>
                                    </div>
                                    <div class="row row-cols-1 row-cols-md-2">
                                        <div class="col mb-4">
                                            <!-- Card -->
                                            <div class="card">

                                                <!--Card image-->
                                                <div class="view overlay">
                                                    <img class="card-img-top"
                                                        src="https://mdbootstrap.com/img/Photos/Others/images/16.jpg"
                                                        alt="Card image cap">
                                                    <a href="#!">
                                                        <div class="mask rgba-white-slight"></div>
                                                    </a>
                                                </div>

                                                <!--Card content-->
                                                <div class="card-body">

                                                    <!--Title-->
                                                    <h4 class="card-title">Trincomalee City Tour</h4>
                                                    <!--Text-->
                                                    <p class="card-text">Description.</p>
                                                    <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
                                                    <button type="button" class="btn btn-light-blue btn-md">Read
                                                        more</button>

                                                </div>

                                            </div>
                                            <!-- Card -->
                                        </div>
                                        <div class="col mb-4">
                                            <!-- Card -->
                                            <div class="card">

                                                <!--Card image-->
                                                <div class="view overlay">
                                                    <img class="card-img-top"
                                                        src="https://mdbootstrap.com/img/Photos/Others/images/16.jpg"
                                                        alt="Card image cap">
                                                    <a href="#!">
                                                        <div class="mask rgba-white-slight"></div>
                                                    </a>
                                                </div>

                                                <!--Card content-->
                                                <div class="card-body">

                                                    <!--Title-->
                                                    <h4 class="card-title">Kandy City Tour</h4>
                                                    <!--Text-->
                                                    <p class="card-text">Description</p>
                                                    <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
                                                    <button type="button" class="btn btn-light-blue btn-md">Read
                                                        more</button>

                                                </div>

                                            </div>
                                            <!-- Card -->
                                        </div>
                                    </div>
                                    <div class="row row-cols-1 row-cols-md-2">
                                        <div class="col mb-4">
                                            <!-- Card -->
                                            <div class="card">

                                                <!--Card image-->
                                                <div class="view overlay">
                                                    <img class="card-img-top"
                                                        src="https://mdbootstrap.com/img/Photos/Others/images/16.jpg"
                                                        alt="Card image cap">
                                                    <a href="#!">
                                                        <div class="mask rgba-white-slight"></div>
                                                    </a>
                                                </div>

                                                <!--Card content-->
                                                <div class="card-body">

                                                    <!--Title-->
                                                    <h4 class="card-title">Nuwara-eliya City Tour</h4>
                                                    <!--Text-->
                                                    <p class="card-text">Description</p>
                                                    <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
                                                    <button type="button" class="btn btn-light-blue btn-md">Read
                                                        more</button>

                                                </div>

                                            </div>
                                            <!-- Card -->
                                        </div>
                                        <div class="col mb-4">
                                           
                                        </div>
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="scripts/nav.js"></script>
<link rel="stylesheet" href="styles/dropdown.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"> </script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"> </script>

</html>

