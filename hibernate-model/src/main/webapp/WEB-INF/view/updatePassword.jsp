<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Password</title>
<link rel="stylesheet"
	href="<c:url value='/resources/css/ForgetPassword.css'/>" />
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
<!--<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css" />-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
</head>
<body>

<script>
          
            // Function to check Whether both passwords
            // is same or not.
            function checkPassword(form) {
                password1 = form.Password.value;
                password2 = form.conPassword.value;
  
               if (password1 != password2) {
            	   $('.alert-danger').removeClass('hide');
            	   $('.alert-success').addClass('hide');
                    return false;
                }
  
                // If same return True.
                else{
                	 $('.alert-danger').addClass('hide');
              	   $('.alert-success').removeClass('hide');
                    return true;
                }
            }
        </script>
<div class="alert alert-success hide" role="alert">
  Password Changed Successfully...
</div>
<div class="alert alert-danger hide" role="alert">
  Please Confirm Your Password...
</div>
<div class="box" style="margin-top:150px;">
    <div class="logo">
    </div>

	<form action="/hibernate-model/updatePassword" onSubmit = "return checkPassword(this)" method="post">
	<div>
	<center>
	<input type="hidden" name="id" value="${id}">
	<br><br>
	<h1>Update your Password</h1>
	<br><br>
	<div class="form-control768">
        <input type="password" name="Password" id="inputPassword1" placeholder="Enter Your New Password" minlength="6"
          maxlength="12" required>
      </div>
      <br>
	  <div class="form-control768">
        <input type="password" name="conPassword" id="inputPassword1" placeholder="Confirm Your New Password" minlength="6"
          maxlength="12" required>
      </div>
      <br>
	<button type="submit" name="submit" class="btn btn-primary">SUBMIT</button>
	<br><br>
	</center>
	</div>
	</form>



</body>
</html>