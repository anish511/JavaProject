<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forget Password</title>
<link rel="stylesheet"
	href="<c:url value='/resources/css/ForgetPassword.css'/>" />
</head>
<body>
<div class="box">
<div class="logo">
<br><br><br><br>
</div>
<h1>Forgot Password !!<h1>
<br><br>
<div class="noti">
      <strong>${alert} </strong> 
</div>
<br>

<form action="/hibernate-model/ForgetPassword" method='post'>

<div class="form-group">
        <label for="inputEmail0">Enter Email </label>
      </div>

      <div class="form-control768">
        <input type="text" name="email" id="inputEmail0" placeholder="Enter The Email" minlength="5"
         required>
      </div>

      <button type="submit" name="submit" class="btn btn-primary">SUBMIT</button>
</div>      
</form>
</div>
</body>
</html>