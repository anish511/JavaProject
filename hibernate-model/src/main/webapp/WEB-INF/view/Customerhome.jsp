<%@page isELIgnored="False" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Customer Management Screen</title>
</head>
<body>
	<div align="center">
		<h1>Customer List</h1>
		
		<table border="1">

			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Date of Birth</th>
			<th>Primary Phone Number</th>
			<th>Secondary Phone Number</th>
			<th>Action</th>

			<c:forEach var="customer" items="${listCustomer}">
				<tr>

					<td>${customer.firstName}</td>
					<td>${customer.lastName}</td>
					<td>${customer.email}</td>
					<td>${customer.dateofbirth}</td>
					<td>${customer.primaryPhonenumber}</td>
					<td>${customer.secondaryPhonenumber}</td>
					<td><a href="editCustomer?id=${customer.id}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="deleteCustomer?id=${customer.id}">Delete</a></td>

				</tr>
			</c:forEach>
		</table>
		<h4>
			New Customer Register <a href="newCustomer">here</a>
		</h4>
	</div>
</body>
</html>