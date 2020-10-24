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
<title>Update Order</title>
<link rel="stylesheet" href='styles/kot.css'>
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		
		<link rel="stylesheet" href ="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	 	<script src="scripts/nav.js"></script>
	 	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
         <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
		

</head>
<body style="background:#8f9dd7;">
<%@include file="Header.jsp" %>

<div class="container" style="margin-top:150px">
    <div class="row">
    
        <div class="col-12">
            <div class="card" >
                <div class="card-body text-center">
                    <h5 class="card-title m-b-0">Prepare KOT</h5>
                </div>
                <form action="./UpdateOrder" method="post" target="new">
                 <div style="margin-left:800px" >
                    Order No:<input type="number" name="orderid" value="<%=Integer.parseInt(request.getParameter("orderid"))%>" readonly>
                  </div> 
                 <input id="myInput3" type="text" onkeyup="myFunction3()"  placeholder="Search Item..">       
                <div class="scroll">
                 
                    <table class="table" id="myTable3">
                        <thead class="thead-light">
                            <tr>
                               <th></th>
                               <th scope="col">ItemNO</th>
				               <th scope="col">Name</th>
				               <th scope="col">Category</th>
				               <th scope="col">Price</th>
				               <th scope="col">Quantity</th>
				              
                            </tr>
                        </thead>
                        <tbody class="customtable">
                               <%
					              IRestaurant irestaurantservice2=new RestaurantImpl();
					              ArrayList<Item> Items1=new ArrayList<>();
					              Items1=irestaurantservice2.listitems();
					               int i=0;
					               if(Items1.isEmpty()){%>
					            	   <p>There are no item records</p>
					               <% }else%>
					             <%for(Item item:Items1){ %>
					           
					                <div style="margin:50px;"></div>
                            
                            <tr>
                                <th> <label class="customcheckbox m-b-20"> <input type="checkbox" onClick="return checkQty()" id="mainCheckbox" name="items" value=<%=item.getItemno() %>><span class="checkmark"></span> </label></th>
                                <td><%=item.getItemno() %> </td> 
				                <td ><%=item.getName()%></td>
				                <td><%=item.getCategory() %></td>
				                <td id="price"><%=item.getPrice() %></td>
				                <td><input id="qty" type="number" min=0 name="qts" value=0></td>
                            </tr>
                            <%} %>
                        </tbody>
                    </table>
                    </div>
                  <button type="submit" class="btn btn-primary"  onClick="return checkitem()" style="margin-top:20px;position:relative;left:45%;top:45%"><i class="fa fa-print" aria-hidden="true"></i>Print KOT</button>
                
                 </form>  
                </div>
            </div>
        </div>
    </div>
<script>


function checkQty() {
	 
	  var checkboxes = document.querySelectorAll('input[name="items"]:checked');
	  var qtys = document.querySelectorAll('input[name="qts"]');
	  var num=0;
	  
	  for(var i=0;i<qtys.length;i++){
		  if(qtys[i].value!=0){
			  num++;
		  }
	  }
	  
	  if(num!=checkboxes.length){
		  alert('Enter the quantity!');
		  return false;
	  }
	
	  
	}
	

function checkitem() {
	
	var checkboxes = document.querySelectorAll('input[name="items"]:checked');
	
	  if(checkboxes.length==0){
	      
		  alert('Select Items');
		  return false;
		  
	  }
}

function myFunction3() {
	  var input, filter, table, tr, td, i, txtValue;
	  input = document.getElementById("myInput3");
	  filter = input.value.toUpperCase();
	  table = document.getElementById("myTable3");
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