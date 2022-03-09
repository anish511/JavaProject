<%@ page isELIgnored="False" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  
<!DOCTYPE html>
<html>
<head>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=password], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

h3 {
text-align:center; 
background-color:#FFCCCC
}

input[type=submit] {
  width: 100%;
  background-color: DodgerBlue;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: Blue;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<meta charset="ISO-8859-1">
<!-- <link href="/resources/css/login.css" type="text/css" rel="stylesheet"> -->
<title>Login Page</title>
</head>
<body>


<h1>LOGIN</h1>
<h3>${message}</h3>
<div>
  <form action="CustomerLogin" method="post">
    <label for="email">Email</label>
    <input type="text" id="email" name="email" placeholder="Your Email...">

    <label for="password">password</label>
    <input type="password" id="password" name="password" placeholder="Your Password...">

  
    <input type="submit" value="Submit">
  </form>
  
  <a href="ForgetPassword">Forget Password</a>
</div>

</body>
</html>
