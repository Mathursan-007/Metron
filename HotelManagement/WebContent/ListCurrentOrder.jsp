<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.service.IRestaurant" %>  
<%@ page import="com.service.RestaurantImpl"%>   
<%@ page import="com.model.Order" %>    
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
     <div>
                <h1 class="itHead" style="padding-top:200px;">Pending Orders</h1>
               <input id="myInput4" type="text" onkeyup="myFunction4()" style="margin-left:20px;" placeholder="Search Order.."> 
<br><br>
                
                <div class="scroll">
      
      <table class="table table-striped table-hover" border="1" id="myTable4" style="background-color:white;">
         <thead class="thead-dark">
           <tr>
               <th scope="col">OrderID</th>
               <th scope="col">Type</th>
               <th scope="col">Amount</th>
               <th scope="col">Action</th>
            </tr>
         </thead>   
        
       
         
    <%
              IRestaurant irservice1=new RestaurantImpl();
              ArrayList<Order> Orders=new ArrayList<>();
              
              Orders=irservice1.listOrders();
              
              if(Orders.isEmpty()){%>
            	  <p class="Atlee">There are no table records</p>
              
             <%}else{
             for(Order order:Orders){ %>
               
                <tr>
               <td><%=order.getOrderID()%> </td> 
               <td><%=order.getType()%></td> 
               <td><%=order.getSubtotatl()%></td>
               <td>
                <div class="btn-group" role="group">
                
                
	               <form action="OrderBill.jsp" method="post" target="new">
	               <input type="hidden" name="orderid"  value="<%=order.getOrderID()%>">
	               <button class="btn btn-primary"  style="margin-right:30px;"><i class="fa fa-print" aria-hidden="true"></i>Print Bill</button>
	               </form>
	               <form action="UpdateOrder.jsp" method="post" target="new">
	               <input type="hidden" name="orderid"  value="<%=order.getOrderID()%>">
	               <button class="btn btn-success" onclick="updateorder()"  style="margin-right:30px;"><i class="fa fa-plus" aria-hidden="true"></i>Add more</button>
	               </form>
	               <form action="./DeleteOrder" method="post">
	               <input type="hidden" name="orderid"  value=<%=order.getOrderID() %>>
	               <button type="submit" class="btn btn-danger" value="Cancel" style="margin-right:30px;"><i class="fa fa-trash" aria-hidden="true"></i>Cancel</button>
	               </form>
	                <%} %>
               </div>
              </td>
               
            </tr>
            <%} %>
     
     
     </table>
     </div>
    </div> 
<script>

function myFunction4() {
	  var input, filter, table, tr, td, i, txtValue;
	  input = document.getElementById("myInput4");
	  filter = input.value.toUpperCase();
	  table = document.getElementById("myTable4");
	  tr = table.getElementsByTagName("tr");
	  for (i = 0; i < tr.length; i++) {
	    td = tr[i].getElementsByTagName("td")[0];
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

function updateorder() {
	
		  setTimeout("location.reload(true);",3000);
	  
}

</script>     
   
</body>
</html>