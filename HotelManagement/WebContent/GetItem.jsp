<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Item" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ItemInfo</title>

<link rel="stylesheet" href="styles/get.css">
<link rel="stylesheet" href='https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
</head>
<body style="background-image:url('images/itembg.jpg'); background-repeat: no-repeat;background-size:1400px 800px;">
<%Item item =(Item)request.getAttribute("item"); %>
  
      

    <div class="container">
        <div class="row justify justify-content-center">
            <div class="col-11 col-md-8 col-lg-6 col-xl-5">
                <form action="./UpdateItem" class="form-container" method="post">
                    <div class="card" style="background:rgba(0,0,0,0.5);">
                        <div class="row mt-0">
                            <div class="col-md-12 ">
                                <h4 style="color:white;text-align:center;">ITEM DETAILS</h4>
                            </div>
                        </div>
                           <div class="form-group row mb-3">
                            <div class="col-md-12 mb-0">    
								    <label for="Item No" style="color:white;text-align:center;"><b>Item No</b></label>
								    <input type="text" placeholder="Enter Name" name="itemno" class="form-control input-box rm-border" value="<%=item.getItemno()%>" readonly>
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                            <div class="col-md-12 mb-0">    
								    <label for="Name" style="color:white;text-align:center;"><b>Name</b></label>
								    <input type="text" placeholder="Enter Name" name="name" class="form-control input-box rm-border"  value="<%=item.getName()%>" readonly >
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12 mb-2">
                                  <label for="Category" style="color:white;text-align:center;"><b>Category</b></label>
	                              <input type="text" placeholder="Enter Category" name="category" class="form-control input-box rm-border" value="<%=(String)item.getCategory() %>" readonly>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12 mb-2">
                                   <label for="Price" style="color:white;text-align:center;"><b>Price</b></label>
	                               <input type="text" placeholder="Enter Price(Rs.)" name="price" class="form-control input-box rm-border" value="<%=item.getPrice()%>">
                            </div>
                        </div>
                        <div class="form-group row justify-content-center mb-0">
                          <div class="col-md-12 px-3">
                            <input type="submit" value="Update Item" class="btn btn-block btn-purple rm-border">
                           </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
</div>



</body>
</html>