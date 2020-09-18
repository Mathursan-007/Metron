<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css'>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js'></script>
<link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css'>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<link rel="stylesheet" href='https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'>




<script>

$(document).ready(function () {

	$('.star').on('click', function () {
	$(this).toggleClass('star-checked');
	});

	$('.ckbox label').on('click', function () {
	$(this).parents('tr').toggleClass('selected');
	});

	$('.btn-filter').on('click', function () {
	var $target = $(this).data('target');
	if ($target != 'all') {
	$('.table tr').css('display', 'none');
	$('.table tr[data-status="' + $target + '"]').fadeIn('slow');
	} else {
	$('.table tr').css('display', 'none').fadeIn('slow');
	}
	});

	});

</script>

<style>
body {
    background: #2962FF;
    font-family: Arial, Helvetica, sans-serif
}

.card-heading,
.card-subheading {
    font-weight: bold
}

.card {
    width: 450px;
    height: 450px;
    border: none;
    border-radius: 10px
}

.form-control {
    border: none;
    border-radius: 10px
}

.fone {
    padding-left: 30px
}

.form-control {
    background-color: #eee !important
}

.form-control:focus {
    color: #495057;
    border-color: #fff !important;
    outline: 0;
    box-shadow: 0 0 0 0 rgba(0, 123, 255, .25) !important
}

.fone input {
    width: 120%;
    background: rgba(165, 147, 69, 0.075)
}

.ftwo input {
    width: 120%;
    background: rgba(165, 147, 69, 0.075)
}

.fthree {
    padding-left: 30px;
    padding-right: 45px
}

.fthree input {
    background-color: rgba(165, 147, 69, 0.075)
}

.ffour {
    padding-left: 30px
}

.ffour input {
    width: 120%;
    background-color: rgba(165, 147, 69, 0.075)
}

.ffive input {
    width: 120%;
    background-color: rgba(165, 147, 69, 0.075)
}

.rthree {
    padding-top: 1px
}

.para1 {
    height: 10px;
    font-size: 12px
}

.para2 {
    font-size: 12px
}

.btn-primary {
    border-radius: 8px;
    background: #2979FF;
    width: 120px
}

.btn-primary span {
    font-size: 15px
}


}

</style>
<title>Test js</title>
</head>
<body>

    <div class="card mx-5 my-5">
        <div class="card-body px-2">

            <form>
                <div class="row rone">
                    <div class="form-group col-md-5 fone"> <input type="text" class="form-control" placeholder="First name"> </div>
                    <div class="form-group col-md-5 ftwo"> <input type="text" class="form-control ml-3" placeholder="Last name"> </div>
                </div>
                <div class="row rthree">
                    <div class="form-group col-md-5 ffour"> <input type="password" class="form-control" placeholder="Password"> </div>
                    <div class="form-group col-md-5 ffive"> <input type="password" class="form-control ml-3" placeholder="Confirm password"> </div> <small class="text-muted px-3">
                        <p class="para2 pl-3">Use 8 or more characters with a mix of letters,numbers &<br>symbols</p>
                    </small>
                </div>
                <div class="row rfour">
                    <div class="col-md-4 ml-3"> <button type="submit" class="btn btn-primary mt-3"><span>Next step</span></button> </div>
                </div>
            </form>
        </div>
    </div>

</body>
</html>