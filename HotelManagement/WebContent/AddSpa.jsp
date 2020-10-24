<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 10px; /* Location of the box */
  left: 0;
  top: 10%;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}
.modal-content {
  background-color: #B0C4DE;
  
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 50%;
}

/* The Close Button */
.close1 {
  color: #000;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close1:hover,
.close1:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
  margin-top:30px;
}
.wrapper {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 50vh;
    position: absolute;
    left: 90%;
    
}

.pulse {
    width: 70px;
    height: 70px;
    background-color: green;
    border-radius: 50%;
    position: relative;
    animation: animate 3s linear infinite
}
.pulse i {
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 30px;
    color: #fff;
    height: 100%;
    cursor: pointer
}
@keyframes animate {
    0% {
        box-shadow: 0 0 0 0 rgb(255, 109, 74, 0.7), 0 0 0 0 rgb(255, 109, 74, 0.7)
    }

    40% {
        box-shadow: 0 0 0 50px rgb(255, 109, 74, 0), 0 0 0 0 rgb(255, 109, 74, 0.7)
    }

    80% {
        box-shadow: 0 0 0 50px rgb(255, 109, 74, 0), 0 0 0 30px rgb(255, 109, 74, 0)
    }

    100% {
        box-shadow: 0 0 0 0 rgb(255, 109, 74, 0), 0 0 0 30px rgb(255, 109, 74, 0)
    }
}
</style>
<body>
<!-- Trigger/Open The Modal -->
<div class="wrapper">
<button class="pulse" id="myBtn"><i class="fa fa-plus"></i></button>
</div>
<!-- The Modal -->
<div id="myModal" class="modal">
<div class="modal-content">
<br><br><br>
    <span class="close">&times;</span>
<form action="./AddSpa" method="post" >
		<div class = "expense">

  <div class="form-group">
 
  <h2>ADD SPA</h2>
 
      <label for="paymentID">PackageID : </label>
      <input type="text" class="form-control" id="paymentID" placeholder="PackageID" name="id" pattern="[S]{1}[0-9]{1}[0-9]{1}[0-9]{1}" required>
      <br><br><br>
      <label for="description"> PackageName : </label>
      <input type="text" class="form-control" id="description" placeholder="PackageName" name="name" required>
      <br><br><br>
       
      <label for="description">Description : </label>
      <textarea type="text" class="form-control" id="description" placeholder="Description " name="description" required ></textarea>
      <br><br><br>
      <label for="amount"> Amount : </label>
      <input  type="number" min="0" step=any class="form-control" id="amount" placeholder="0" name="price" required>
      <br><br><br>
     
            <input type="submit" value="ADD" class="button">
    </div>
    </div>
       
    </form> </div>

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
</script>
    

</body>
</html>