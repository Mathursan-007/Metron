<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList" %>
<%@ page import="com.model.Vehicle" %>  
<%@ page import="com.service.TransportImpl"%> 
<%@ page import="com.service.ITransport"%>  
 
<!DOCTYPE html>
<html>

<head>

<meta charset="ISO-8859-1">
    <title>Vehicle</title>
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
       .black{ 
       background-color:black;
       color:white;
       }
       
    </style>

</head>

<body class="w3-light-grey">

    <script>
        document.getElementById("try").className = " ";
    </script>

 

<!-- Overlay effect when opening sidebar on small screens -->
    <div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer"
        title="close side menu" id="myOverlay">
    </div>

    <!-- !PAGE CONTENT! -->
    <div class="w3-main" style="margin-left:300px;margin-top:63px; transform:translate(0%, 20%);">
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
                                                <h3 class="card-title">Vehicle</h3>
                                            </div>
                                        </div>
                                        <div class="col-3">
                                            <div align="right">
                                                <input class="form-control" type="text" placeholder="Search" aria-label="Search"> 
                                           	</div>
                                        </div>
                                        <div class="col-2">
                                            <div align="left">
                                            	<form action="./AddVehicle" method="post">
                                                <a href="AddVehicle.jsp" class="btn btn-success">Add</a></form>
                                            </div>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="table-responsive">
                                        <table id="zero_config" class="table table-striped table-bordered no-wrap">
                                            <thead class="black" >
                                                <tr>
                                                     <th>Vehicle ID</th>
                                                    <th>Model Number</th>
                                                    <th>Condition</th>
                                                    <th>Feature</th>
                                                    <th>Capacity</th>
                                                    <th>Availability</th>
                                                   
                                                    <th width="2%">Actions</th>

                                                </tr>
                                                 </thead>
              <%
              ITransport vehicleImpl=new TransportImpl();
              ArrayList<Vehicle> Vehicles=new ArrayList<>();
             
              Vehicles=vehicleImpl.listVehicles();
             
              for(Vehicle vehicle:Vehicles)
            { %>
                                           
                                            <tbody>
                                                <tr>
                                                     
                                                   <td> <%=vehicle.getId() %></td>
                                                    <td><%=(String)vehicle.getModelNo() %></td>
                                                    <td><%=(String)vehicle.getCondition() %></td>
                                                     <td><%=(String)vehicle.getFeature() %></td>
                                                    <td><%=(String)vehicle.getCapacity() %></td>
                                                   <td><% 
                                                   if(Integer.parseInt(vehicle.getAvailability())==1){ %>
                                                   <p>Available</p>
                                                   <% }else{ %>
                                                    <p>Not Available</p>
                                                     <% } %>
                                                   </td>  
                                               
                                                  

                <td>                          
                    <form action="./GetVehicle" method="post"  >                  
               <input type="hidden" name="id" value="<%=vehicle.getId() %>">
               <input type="submit" value="View" class="btn btn-primary" >
               </form>
             
               <form action="./DeleteVehicle" method="post">
             
               <input type="hidden" name="id" value="<%=vehicle.getId( )%>">
               <input type="submit" value="Delete" class="btn btn-danger">
               </form>
                         </td>                     
                           </tr>
                                               
                                            </tbody>
                                               <%} %>
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
</body>

<script src="scripts/Employee.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="scripts/nav.js"></script>
<link rel="stylesheet" href="styles/dropdown.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"> </script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"> </script>
</html>
