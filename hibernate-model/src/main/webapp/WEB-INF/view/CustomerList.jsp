<%@page isELIgnored="false" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file = "adminNavbar.jsp" %>
<html>
<head>
<link rel="stylesheet"
	href="<c:url value='/resources/css/showCustomer.css'/>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Customer Management Screen</title>
</head>
<body>
	<div align="center" style="margin-top:100px; margin-bottom:100px;">
		<h1>Customer List</h1>
		
		<table border="1">

			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Date of Birth</th>
			<th>Primary Phone Number</th>
			<th>Secondary Phone Number</th>

			<c:forEach var="customer" items="${listCustomer}">
				<tr>

					<td>${customer.firstName}</td>
					<td>${customer.lastName}</td>
					<td>${customer.email}</td>
					<td>${customer.dateofbirth}</td>
					<td>${customer.primaryPhonenumber}</td>
					<td>${customer.secondaryPhonenumber}</td>
					

				</tr>
			</c:forEach>
		</table>
		
	</div>
</body>
</html>
 <%@ include file = "Footer.jsp" %> 