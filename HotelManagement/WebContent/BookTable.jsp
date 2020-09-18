<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.service.IRestaurant" %>  
<%@ page import="com.service.RestaurantImpl"%>   
<%@ page import="com.model.Table" %>   
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BookTable</title>
<link rel="stylesheet" href="styles/booktable.css">
<link rel="stylesheet" href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css'>

<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js'></script>
<link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css'>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>

<script>

$(document).ready(function () {

	$('.star').on('click', function () {
	$(this).toggleClass('star-checked');
	});

	$('.ckbox label').on('click', function () {
	$(this).parents('tr').toggleClass('selected');
	});

	$('.btn-filter').on('click', function () {
	var $target = $(this).data('target');
	if ($target != 'all') {
	$('.table tr').css('display', 'none');
	$('.table tr[data-status="' + $target + '"]').fadeIn('slow');
	} else {
	$('.table tr').css('display', 'none').fadeIn('slow');
	}
	});

	});

</script>
<script>
function myFunction() {
  if(document.getElementById("myCheck").checked= true){
            document.getElementById("btn").disabled = false;
  }
}


</script>
</head>
<% IRestaurant irestaurantservice=new RestaurantImpl();
   Date date = new Date(); 
   if(irestaurantservice.checktime(date)==false){%>
   
   
	  <script>
	  alert('Resrvation closed'+'\n'+'Open between 9am to 9pm'+'\n'+'Try again later!');
	  window.location.href = "Restaurant.jsp";

	  </script>
	  
	   
   <% }else {%>
   
   
   
<body class="thaksa">

     
<div>
		<div class="container">
  
    <div class="row">
        <section class="content">
            <h1 style="color:white;">Find your table for any occasion</h1>
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="pull-right">
                           <div class="btn-group"> 
                            <button type="button" class="btn btn-success btn-filter" data-target="Casual">Casual</button> 
                            <button type="button" class="btn btn-warning btn-filter" data-target="Booth">Booth</button> 
                            <button type="button" class="btn btn-danger btn-filter" data-target="Outdoor">Outdoor</button> 
                            <button type="button" class="btn btn-info btn-filter" data-target="Family">Family</button> 
                            <button type="button" class="btn btn-default btn-filter" data-target="all">All</button> </div>
                        </div>
                        <div class="table-container">
                        <form action="./ReserveTable" method="post">
                           <div>
                            <table class="table table-filter">
                                <tbody>
                                    <tr>
                                    <th><div></div></th>
                                    <th></th>
                                    <th><div><h4>Table Number</h4></div></th>
                                    <th></th>
                                    <th><div> <h4>Type</h4></div></th>
                                    <th></th>
                                    <th><div><h4>Capacity</h4></div></th>
                                    <th></th>
                                    <th><div><h4>Price</h4></div></th>
                                    </tr>
                                 
                                    <%
		                               
		                               ArrayList<Table> Tables=new ArrayList<>();
		              
		                               Tables=irestaurantservice.listtables();
		                                
		                               String status="";
		                               String color="";
		                               for(Table table:Tables){
		                                
		                            	  if(table.getType().equals("Casual")){
		                            		  
		                            		  status="Casual";
		                            		  color="#5cb85c";
		                            		  
		                            	  }else if(table.getType().equals("Booth")){
		                            		  
		                            		  status="Booth";
		                            		  color="#f0ad4e";
		                            		  
		                            	  }else if(table.getType().equals("Outdoor")){
		                            		  
		                            		  status="Outdoor";
		                            		  color="#d9534f";
		                            		  
		                            	  }else if(table.getType().equals("Family")){
		                            		  
		                            		  status="Family";
		                            		  color="#24a0ed ";
		                            		  
		                            	  }
		                               
		                            	  if(table.getStatus().equals("Available")){
		                               %>
                                    <tr data-status=<%=status %> style="color:<%=color%>;">
                                        <td><div class="custom-control-input"> <input  class="form-check-input" type="checkbox" onClick="return updateCount()" name="tables" value="<%=table.getTableno() %>"></div></td>
                                        <td> </td>
                                        <td><div class="media"><h4><%=table.getTableno()%></h4></div></td>
                                        <td> </td>
                                        <td><div class="media"><h4><%=table.getType()%></h4></div></td>
                                        <td> </td>
                                        <td><div class="media"><h4><%=table.getCapacity() %></h4></div></td>
                                        <td> </td>
                                        <td><div class="media"><h4><%=table.getPrice()%></h4></div></td>
                                    </tr>
                                     <%}} %>
                                </tbody>
                            </table>
                            </div>
                            <div class="container" style="margin-left:50px;">
                             <div class="card-body">
                                <h2 class="card-heading" style="margin-left:190px;">Enter Details</h2>
				                    <div class="row rone">
				                       <div class="form-group col-md-3 fone"><input type="text" class="form-control" name="fullname" placeholder="Full Name" required></div>
						               <div class="form-group col-md-3 fone"><input type="text" class="form-control" name="nic" placeholder="NIC" required>
						                 <div>
                                             <p id="phoneno" style="color:red"></p>
                                         </div>
                                       </div>
						             </div>
						             <div class="row rone">
						               <div class="form-group col-md-3 fone"><input type="email" class="form-control" name="email" placeholder="Email" required></div>
						               <div class="form-group col-md-3 fone"><input type="text" class="form-control" name="phone" Placeholder="Phone No." required></div>
						             </div>
						             
		 <br>
								 <div class="checkbox">
						     		  <label><input type="checkbox" value="agree" onclick="myFunction()" id="myCheck">I acknowledge having read and agreed to the terms and conditions and privacy policy.</label>
								 </div>
		<br>
		                        <div>
                                    <div class="col-md-5 ml-4" style="margin-left:200px;"><button type="submit" id="btn" value="Book Now"  class="btn btn-primary mt-3" disabled><span>Book Now</span></button> </div>
                                </div>
	</div>
    </div>

                         
                             </form>
                             
                             
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
  
</div>
		     	   
		       
		
   </div>   
<script>
function updateCount() {
	  var checkboxes = document.querySelectorAll('input[name="tables"]:checked');
	  if(checkboxes.length>5){
		  alert('You can book only upto 5 tables!');
		  return false;
	  }
	
	  
	}
</script>
       
        
</body>
<%}%>
</html>