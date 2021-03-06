<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.service.IRestaurant" %>  
<%@ page import="com.service.RestaurantImpl"%>   
<%@ page import="com.model.Item" %>      
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MenuItems</title>
<link rel="stylesheet" href="styles/AddItem.css">
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>

</head>  
<body class="vee">
	
	
	<h1 class="itHead"  style="padding-top:100px;">ITEMS</h1>
	<input id="myInput1" type="text" onkeyup="myFunction1()"  style="margin-left:20px;" placeholder="Search Item..">
<br><br>
	
	
	<div class="scroll">
     <table class="table table-striped table-hover" border="1" id="myTable1" style="background-color:white;">
     
       <thead class="thead-dark">
           <tr>
               <th scope="col">ItemNO</th>
               <th scope="col">Name</th>
               <th scope="col">Category</th>
               <th scope="col">Price</th>
               <th scope="col">Action</th>
            </tr>
         </thead> 
         	   <%
              IRestaurant irestaurantservice=new RestaurantImpl();
              ArrayList<Item> Items=new ArrayList<>();
              
              Items=irestaurantservice.listitems();
             
               if(Items.isEmpty()){%>
            	   <p class="Atlee">There are no item records</p>
               <% }else%>
             <%for(Item item:Items){ %>
           
                <div style="margin:50px;"></div>
             
            <tr>
               <td><%=item.getItemno() %> </td> 
               <td><%=item.getName() %></td> 
               <td><%=item.getCategory() %></td>
               <td><%=item.getPrice() %></td>
               <td>
               <div class="btn-group" role="group">
               <form action="./GetItem" method="post">
               <input type="hidden" name="itemno" value="<%=item.getItemno() %>">
               <button type="submit" class="btn btn-primary" value="View" style="margin-right:20px;"><i class="fa fa-eye" aria-hidden="true"></i>   View</button>
               </form>
             <!--    <form action="./DeleteItem" method="post">
               <input type="hidden" name="itemno" value="<%=item.getItemno() %>" style="float:right;width:30%;">
               <button type="submit" class="btn btn-danger" value="Delete"><i class="fa fa-trash" aria-hidden="true"></i> Delete</button>
               </form>-->
               </div>
               </td>
            </tr>
           
   
            <%} %>
     
     
     </table>
     </div>
     
<button class="btn btn-success" id="myBtn1" style="margin-top:20px;position:relative;left: 45%;"><i class="fa fa-plus" aria-hidden="true"></i>   Add Item</button>
<!-- The Modal -->
<div id="myModal1" class="modal" id="myForm1">

    <div class="container">
        <div class="row justify justify-content-center">
            <div class="col-11 col-md-8 col-lg-6 col-xl-5">
                <form action="./AddItem" class="form-container" method="post">
                    <div class="card bg-dark">
                        <div class="row mt-0">
                            <div class="col-md-12">
                                <h4 style="color:white;text-align:center;">ADD NEW ITEM</h4>
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                            <div class="col-md-12 mb-0">    
								    <label for="Name" style="color:white;text-align:center;"><b>Name</b></label>
								    <input type="text" placeholder="Enter Name" name="name" class="form-control input-box rm-border" required>
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                            <div class="col-md-12 mb-0">    
								   <span style="color:white;text-align:center;"> Category </span>
									      <select name="category" class="form-control input-box rm-border" required>
									          <option value="Starter">Starter</option>
									          <option value="Rice">Rice</option>
									          <option value="Noodles">Noodles</option>
									          <option value="Bread">Bread</option>
									          <option value="Vegetarian Dish">Vegetarian Dish</option>
									          <option value="Non-Vegetarian Dish">Non-Vegetarian Dish</option>
									          <option value="Drinks">Drinks</option>
									          <option value="Dessert">Dessert</option> 
									      </select>   
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12 mb-2">
                                   <label for="Price" style="color:white;text-align:center;"><b>Price(Rs.)</b></label>
	                               <input type="number" placeholder="Enter Price(Rs.)" name="price" class="form-control input-box rm-border" required>
                            </div>
                        </div>
                        <div class="form-group row justify-content-center mb-0">
                          <div class="col-md-12 px-3">
                            <input type="submit" value="Add" class="btn btn-block btn-purple rm-border">
                            <input type="button" value="Cancel" onclick="closeForm1()" class="btn btn-block btn-purple rm-border"> 
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
var modal1 = document.getElementById("myModal1");

// Get the button that opens the modal
var btn1 = document.getElementById("myBtn1");

// Get the <span> element that closes the modal
var span1 = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn1.onclick = function() {
  modal1.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span1.onclick = function() {
  modal1.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal1) {
    modal1.style.display = "none";
  }
}

function closeForm1() {
	  document.getElementById("myModal1").style.display = "none";
	}



function myFunction1() {
	  var input, filter, table, tr, td, i, txtValue;
	  input = document.getElementById("myInput1");
	  filter = input.value.toUpperCase();
	  table = document.getElementById("myTable1");
	  tr = table.getElementsByTagName("tr");
	  for (i = 0; i < tr.length; i++) {
	    td = tr[i].getElementsByTagName("td")[1];
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