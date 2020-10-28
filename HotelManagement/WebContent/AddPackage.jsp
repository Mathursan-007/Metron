<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	
<meta charset="ISO-8859-1">
    <title>Package</title>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>

    <style>
        .btn {
            background-color: DodgerBlue;
            border: none;
            color: white;
            padding: 12px 16px;
            font-size: 16px;
            cursor: pointer;
        }

        /* Darker background on mouse-over */
        .btn:hover {
            background-color: RoyalBlue;
        }
    </style>

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
	<div class="w3-main" style="margin-left:350px;margin-top:43px;">
		<div class="page-wrapper">
			<div class="container-fluid">
				<div class="page-breadcrumb">
					<div class="row">
						<div class="col-10">
							<div class="card">
								<div class="card-body">
									<form  name="AddPackage"action="./AddPackage" method="post">
									<h3 align="center">Add Package</h3>
									<br>
										<div class="form-row">
										<div class="col-md-6 mb-3">
												<label>Package ID</label>
												<input type="number" class="form-control" 
													placeholder="" value="" name="id" required>
											</div>
										
										
										 <div class="col-md-6 mb-3">
												<label>Package Name </label>
												<input type="text" class="form-control" 
													placeholder="" value="" name="packageName" required>
											</div>
											</div>
											<div class="form-row">
											<div class="col-md-6 mb-3">
												<label >Price Per Person</label>
												<input type="number" class="form-control" id=""
													placeholder="" value="" name="price" required>
											</div>
										
										
										
											<div class="col-md-6 mb-3">
												<label >Description</label>
												<input type="text" class="form-control" 
													placeholder="" value="" name="description" required>
											</div>
											</div>
									<br>
										<br>
											<div align="center">
												<div class="col-md-6 mb-3">
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