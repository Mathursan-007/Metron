<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.model.Spa" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>

h2{
 text-align: center;
 font-style:italic;
 font-family:monospace;
 font-size:220%;
 }
 
 .expense{
  border-radius: 3px;
  background-color: #B0C4DE;
  padding: 20px;
  width: 50%;
  margin-left: 23%;
  margin-top:3%;
  box-shadow: 0px 1px 10px 1px #000;
  overflow: hidden;
  display: inline-block;
 
}
 

.expense input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;

}

.expense input[type=number]{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;

}

.expense input[type=date]{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;

}

.expense input[type=submit] {
 
  width: 200px;
  background-color: #1c2e4a;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 10px;
  cursor: pointer;
  margin-left:36%;
  text-transform:uppercase;
  font-size: 16px;
  font-weight:400;
}

.expense input[type=submit]:hover {
  background-color: #008040;

}
</style>
<body>
<%Spa item =(Spa)request.getAttribute("item");%>
  
     <form action="./UpdateSpa" method="post">
     <div class = "expense">

  <div class="form-group">
 
   
     
	      PackageID:<input type="text" class="form-control" name="id" value="<%=item.getID()%>">
	      PackageName:<input  type="text" class="form-control" name="name" value="<%=item.getName()%>"> 
	      Price:<input type="text" class="form-control" name="price" value="<%=item.getPrice()%>">  
	      <input type="submit" class="button" value="Update">
	      </div>
	      </div>
    </form> 

</body>
</html>