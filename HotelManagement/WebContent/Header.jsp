<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">


<link rel="stylesheet" href="styles/homestyle.css">
</head>
<body>
	
	<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="main" style="background-color:#000" id="main">
			<div class="container"> 
				<a class="navbar-brand" href="#"> METRON </a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" 
		data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"> </span>
		</button>
		
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto"> 
				<li class="nav-item" id="try">
					<a class="nav-link" href="Home.jsp"> Home </a>
				</li>
				
				<li class="nav-item" id="try1">
					<a class="nav-link" href="Home.jsp#about"> About us </a>
				</li>
				
				<li class="nav-item" id="try2">
					<a class="nav-link" href="Home.jsp#team"> Our Team </a>
				</li>
				
								
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Services </a>
				
					<div class="dropdown-menu bts" aria-labelledby="dropdownMenuLink" style="text-decoration:none;">
					    <a class="dropdown-item" href="RoomCustomer.jsp">Rooms</a>
					    <a class="dropdown-item" href="#">Restaurant</a>
					</div>
				</li>

				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Events </a>
				
					<div class="dropdown-menu bts" aria-labelledby="dropdownMenuLink" style="text-decoration:none;">
					    <a class="dropdown-item" href="#">Weddings</a>
					    <a class="dropdown-item" href="#">Meetings & Confererences</a>
					    <a class="dropdown-item" href="#">Banquets</a>
					</div>
				</li>
				
				<li class="nav-item" id="try3">
					<a class="nav-link" href="Home.jsp#zooka"> Contact us </a> 
				</li>
				
				<li class="nav-item" id="login1">
					<a class="nav-link" href="Login.jsp" onclick="myFunction()"> Login </a>
				</li>
			</ul>
		</div>
			</div>
		
		</nav>
	
</body>
</html>