<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.service.IRestaurant" %>  
<%@ page import="com.service.RestaurantImpl"%>   
<%@ page import="com.model.Table" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tables</title>
<link rel="stylesheet" href="styles/AddItem.css">
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>



 

  
</head>
<body>
     
                
                <h1 class="itHead" style="padding-top:100px;" >TABLES</h1>
                  <input id="myInput2" type="text" onkeyup="myFunction2()" style="margin-left:20px;" style="margin-top:50px;" placeholder="Search Table Status..">
<br><br>
                
                <div class="scroll">
 
      <table class="table table-striped table-hover" border="1" id="myTable2" style="background-color:white;left-margin:20px;">
         <thead class="thead-dark">
           <tr>
               <th scope="col">TableNO</th>
               <th scope="col">Type</th>
               <th scope="col">Capacity</th>
               <th scope="col">Price</th>
               <th scope="col">Status</th>
               <th scope="col">Action</th>
            </tr>
         </thead>   
        
       
         
    <%
              IRestaurant irservice=new RestaurantImpl();
              ArrayList<Table> Tables=new ArrayList<>();
              
              Tables=irservice.listtables();
              
              if(Tables.isEmpty()){%>
            	  <p class="Atlee">There are no table records</p>
              
             <%}else{
             for(Table table:Tables){ %>
               
                <tr>
               <td><%=table.getTableno() %> </td> 
               <td><%=table.getType()%></td> 
               <td><%=table.getCapacity() %></td>
               <td><%=table.getPrice()%></td>
               <td><%=table.getStatus()%></td>
               <td>
                <div class="btn-group" role="group">
	               <form action="./GetTable" method="post">
	               <input type="hidden" name="tableno" value="<%=table.getTableno()%>">
	               <button type="submit" class="btn btn-primary" value="View" style="margin-right:30px;"><i class="fa fa-eye" aria-hidden="true"></i> View</button>
	               </form>
	          <!--       <form action="./DeleteTable" method="post">
	               <input type="hidden" name="tableno" value="<%=table.getTableno()%>">
	               <button t>ype="submit" class="btn btn-danger" value="Delete" style="margin-right:30px;"><i class="fa fa-trash" aria-hidden="true"></i> Delete</button>
	               </form>-->
	              <%if(table.getStatus().equals("Available")){ %>
	               <form action="./ReleaseTable" method="post"> 
	               <input type="hidden" name="tableno" value="<%=table.getTableno()%>">
	               <button type="submit" class="btn btn-info" value="Release" disabled><i class="fa fa-key" aria-hidden="true"></i> Release</button>
	               </form>
	               <%}else{ %>
	               <form action="./ReleaseTable" method="post"> 
	               <input type="hidden" name="tableno" value="<%=table.getTableno()%>">
	               <button type="submit" class="btn btn-info" value="Release"><i class="fa fa-key" aria-hidden="true"></i> Release</button>
	               </form>
	               <%} %>
               </div>
              </td>
               
            </tr>
            <%}} %>
     
     
     </table>
     </div>
     
    
<button class="btn btn-success" id="myBtn" style="position:relative;left: 45%;"><i class="fa fa-plus" aria-hidden="true"></i>Add Table</button>

<div id="myModal" class="modal" id="myForm">

    <div class="container">
        <div class="row justify justify-content-center">
            <div class="col-11 col-md-8 col-lg-6 col-xl-5">
                <form action="./AddTable" class="form-container" method="post">
                    <div class="card bg-dark">
                        <div class="row mt-0">
                            <div class="col-md-12 ">
                                <h4 style="color:white;text-align:center;">ADD NEW TABLE</h4>
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                            <div class="col-md-12 mb-0">    
								   <span style="color:white;text-align:center;"> Type:  </span>
									      <select name="type" class="form-control input-box rm-border" required>
									          <option value="Casual">Casual</option>
									          <option value="Booth">Booth</option>
									          <option value="Family">Family</option>
									          <option value="Outdoor">Outdoor</option> 
									      </select>   
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12 mb-2">
                                  <label for="Category" style="color:white;text-align:center;"><b>Capacity</b></label>
	                              <input type="number" placeholder="Enter Capacity" name="capacity" class="form-control input-box rm-border" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12 mb-2">
                                   <label for="Price" style="color:white;text-align:center;"><b>Price</b></label>
	                               <input type="number" placeholder="Enter Price(Rs.)" name="price" class="form-control input-box rm-border" required>
                            </div>
                        </div>
                        <div class="form-group row justify-content-center mb-0">
                          <div class="col-md-12 px-3">
                            <input type="submit" value="Add" class="btn btn-block btn-purple rm-border">
                            <input type="button" value="Cancel" onclick="closeForm()" class="btn btn-block btn-purple rm-border"> 
                           </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
</div>

</div>




<script>

// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

function closeForm() {
	  document.getElementById("myModal").style.display = "none";
	}
	

function myFunction2() {
	  var input, filter, table, tr, td, i, txtValue;
	  input = document.getElementById("myInput2");
	  filter = input.value.toUpperCase();
	  table = document.getElementById("myTable2");
	  tr = table.getElementsByTagName("tr");
	  for (i = 0; i < tr.length; i++) {
	    td = tr[i].getElementsByTagName("td")[4];
	    if (td) {
	      txtValue = td.textContent || td.innerText;
	      if (txtValue.toUpperCase().indexOf(filter) > -1) {
	        tr[i].style.display = "";
	      } else {
	        tr[i].style.display = "none";
	      }
	    }       
	  }
	}

</script> 
 
</body>
</html>