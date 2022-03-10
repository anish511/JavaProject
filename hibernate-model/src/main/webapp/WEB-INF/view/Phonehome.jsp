<%@page isELIgnored="False" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Phone Management Screen</title>
</head>
<body>
	<div align="center">
		<h1>Phone List</h1>
		
		<table border="1">

            <th>Product ID</th>
			<th>Name</th>
			<th>Description</th>
			<th>Quantity</th>
			<th>Price</th>
			<th>RAM</th>
			<th>Processor</th>
			<th>ROM</th>
			<th>Display Size</th>
			<th>Colour</th>
			<th>Camera</th>
			<th>Battery</th>
			<th>Actions</th>

			<c:forEach var="phone" items="${listPhone}">
				<tr>

					<td>${phone.productID}</td>
					<td>${phone.name}</td>
					<td>${phone.description}</td>
					<td>${phone.quantity}</td>
					<td>${phone.price}</td>
					<td>${phone.ram}</td>
					<td>${phone.processor}</td>
					<td>${phone.rom}</td>
					<td>${phone.size}</td>
					<td>${phone.colour}</td>
					<td>${phone.camera}</td>
					<td>${phone.battery}</td>
					<td><a href="editPhone?id=${phone.productID}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="deletePhone?id=${phone.productID}">Delete</a></td>

				</tr>
			</c:forEach>
		</table>
		<h4>
			New Phone Product <a href="newPhone">here</a>
		</h4>
	</div>
</body>
</html>