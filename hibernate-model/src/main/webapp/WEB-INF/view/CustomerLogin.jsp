<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
  
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="<c:url value="/resources/css/login.css" />" />
</head>
<body>


<h1>LOGIN</h1>
<h3>${message}</h3>
<div>
  <form action="/hibernate-model/" method="post">
    <label for="email">Email</label>
    <input type="text" id="email" name="email" placeholder="Your Email...">

    <label for="password">password</label>
    <input type="password" id="password" name="password" placeholder="Your Password...">

  
    <input type="submit" value="Submit">
  </form>
  
  <a href="ForgetPassword">Forget Password</a>
  New Customer Register <a href="Customer/newCustomer">here</a><br>
</div>

</body>
</html>
