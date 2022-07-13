<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
  
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="<c:url value="/resources/css/sample.css" />" />
</head>
<body>
<c:if test="${not empty message}">
    <div class="noti1">
      <strong>${message} </strong> 
</div>
</c:if>


<div class="login-box">
 <h2>Login</h2>
  <form action="/hibernate-model/" id="login" method="post">
  <div class="user-box">
    <input type="text" id="email" name="email">
    <label for="email">Email</label>
  </div>

   <div class="user-box">
    <input type="password" id="password" name="password">
    <label for="password">Password</label>
  </div>
  <a href="#" onclick="myFunction()">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        Submit
      </a>
    
    <a href="/hibernate-model/ForgetPassword"> <span></span>
        <span></span>
        <span></span>
        <span></span>
        Forget Password
   </a>
   <a href="/hibernate-model/Customer/newCustomer">
       <span></span>
        <span></span>
        <span></span>
        <span></span>
       New Customer here
   </a>
  </form>

</div>
<script>
            function myFunction() {
                document.getElementById("login").submit();
            }
        </script>
</body>
</html>
