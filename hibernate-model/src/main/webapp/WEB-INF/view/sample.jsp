<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value='/resources/css/sample.css'/>" />
</head>
<body>
<div class="login-box">
    <h2>Login</h2>
    <form>
      <div class="user-box">
        <input type="text">
        <label>Username</label>
      </div>
      <div class="user-box">
        <input type="password">
        <label>Password</label>
      </div>
      <a href="#">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        Submit
      </a>
    </form>
  </div> 
</body>
</html>