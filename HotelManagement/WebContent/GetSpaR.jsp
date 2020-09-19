<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.model.*" %> 
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
<%SpaReservation re =(SpaReservation)request.getAttribute("rid");%>
  
     <form action="./UpdateSpaR" method="post">
     <div class = "expense">

  <div class="form-group">
 
   
     
	    
	  <label for="paymentID">ReservationID : </label>
      <input type="text" class="form-control" id="paymentID" placeholder="ReservationID" name="rid" value="<%=re.getRID()%>" required>
      <br><br><br>
      <label for="description">PackageID: </label>
      <input type="text" class="form-control" id="description" placeholder="PackageID" name="id" value="<%=re.getSpackageID()%>" required>
      <br><br><br>
      <label for="amount">PackageName: </label>
      <input type="text" class="form-control" id="amount" placeholder="PackageName" name="name" value="<%=re.getGpackagename()%>" required>
      <br><br><br>
      
      <label for="amount">RoomNo: </label>
      <input type="text" class="form-control" id="amount" placeholder="RoomNo" name="no" value="<%=re.getRoomNo()%>" required>
       <br><br><br>
        <label for="amount">CustomerName: </label>
      <input type="text" class="form-control" id="amount" placeholder="customername" name="cname" value="<%=re.getCusName()%>" required>
       <br><br><br>
       <label for="amount">Date: </label>
      <input type="date" class="form-control" id="amount" placeholder="Date" name="date" value="<%=re.getDate()%>" required>
       <br><br><br>
       <label for="amount">Time: </label>
      <input type="text" class="form-control" id="amount" placeholder="Time" name="time" value="<%=re.getTime()%>" required>
       <br><br><br>
        
	      <input type="submit" class="button" value="Update">
	      </div>
	      </div>
    </form> 

</body>
</html>