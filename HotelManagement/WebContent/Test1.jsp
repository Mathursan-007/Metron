<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.service.IRestaurant" %>  
<%@ page import="com.service.RestaurantImpl"%>   
<%@ page import="com.model.Item" %>  
<%@ page import="com.model.Order" %>      
    
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
	<%
	
	 Order order=new Order();
	 order.setOrderID(1);
	
	 ArrayList<Integer> qty=new ArrayList<>();
	 qty.add(1);
	 
	 int id=Integer.parseInt(request.getParameter("custid"));
	
	%>
	
	<h1 class="itHead">ITEMS</h1>
	<input id="myInput1" type="text" onkeyup="myFunction1()"  placeholder="Search Item..">
<br><br>
	
	
	<div class="scroll">
	<form action="" method="post">  
     <table class="table table-striped table-hover" border="1" id="myTable1" style="background-color:white;">
     
       <thead class="thead-dark">
           <tr>
               <th scope="col">ItemNO</th>
               <th scope="col">Name</th>
               <th scope="col">Category</th>
               <th scope="col">Price</th>
               <th scope="col">Quantity</th>
               <th scope="col">Action</th>
            </tr>
         </thead> 
         	   <%
              IRestaurant irestaurantservice=new RestaurantImpl();
              ArrayList<Item> Items=new ArrayList<>();
              Items=irestaurantservice.listitems();
               int i=0;
               if(Items.isEmpty()){%>
            	   <p class="Atlee">There are no item records</p>
               <% }else%>
             <%for(Item item:Items){ %>
           
                <div style="margin:50px;"></div>
               
            <tr>
            <td><div class="custom-control-input"> <input  class="form-check-input" type="checkbox"  onClick="return updateCount()" name="items" value=<%=item.getItemno() %>></div></td>
               <td><%=item.getItemno() %> </td> 
               <td ><input onClick="return addItem(this,<%=item.getPrice() %>)" id="pname" type="text" value=<%=item.getName()%> readonly> </td>
               <td><%=item.getCategory() %></td>
               <td id="price"><%=item.getPrice() %></td>
               <td><input id="qty" type="number" min=0 name="qts" ></td>
              <td>
               <div class="btn-group" role="group">
           
             <!--    <form action="./DeleteItem" method="post">
               <input type="hidden" name="itemno" value="<%=item.getItemno() %>" style="float:right;width:30%;">
               <button type="submit" class="btn btn-danger" value="Delete"><i class="fa fa-trash" aria-hidden="true"></i> Delete</button>
               </form>-->
               </div>
               </td>
            </tr>
         <!--   <input type="hidden" name="itemno" value="<%=Items%>">-->
               
             
            
            <%} %>
      
     </table>
     <input type="hidden" value=<%=id %> name="custid">
      <button type="submit" class="btn btn-primary" value="View" style="margin-right:20px;"><i class="fa fa-eye" aria-hidden="true" ></i>Add</button>
             </form>
    
   
     </div>
     
       
                     
            
     <div id="bill"></div>
     
<script>
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
	


inames = []
iqtyp = []
iprice = []


function addItem(x,y){
  

  inames.push(x.value)
  x.disabled=true;
  iqtyp.push(2)
  iprice.push(y)
 
  
  displayCart()

   
}

function displayCart(){
  

  cartdata = '<table border="1"><tr><th>Product Name</th><th>Quantity</th><th>Price</th><th>Total</th></tr>';
  
  total = 0;
  
  for (i=0; i<inames.length; i++){
   // total += iqtyp[i] * iprice[i]
   
  
    cartdata += "<tr><td>" 
                          + inames[i] + "</td><td>" 
                          + "<input type='number' min=0 oninput='calc(this,"+iprice[i]+",i)'>" + "</td><td>" 
                          + iprice[i] + "</td><td id="+i+">"
                           + "</td><td><button onclick='delElement("+i+")'>Delete</button></td></tr>"
  }
  
  cartdata += '<tr><td></td><td></td><td></td><td>' + total + '</td></tr></table>'
  
  document.getElementById('bill').innerHTML = cartdata
  return false;
  
}


function calc(x,y,i){
	
	document.getElementById(i).innerHTML=x.value*y
	
}


function add(x){
	
	var y=x.value

	
}

function delElement(a){
  inames.splice(a, 1);
  iqtyp.splice(a, 1)
  iprice.splice(a, 1)
  displayCart()
}
	
</script>	
    
</body>
</html>