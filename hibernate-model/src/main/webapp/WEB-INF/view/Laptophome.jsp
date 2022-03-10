<%@page isELIgnored="False" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Laptop Management Screen</title>
</head>
<body>
	<div align="center">
		<h1>Laptop List</h1>
		
		<table border="1">

            <th>Product ID</th>
			<th>Name</th>
			<th>Description</th>
			<th>Quantity</th>
			<th>Price</th>
			<th>RAM</th>
			<th>Processor</th>
			<th>Storage</th>
			<th>Display Size</th>
			<th>Colour</th>
			<th>GPU</th>
			<th>Actions</th>

			<c:forEach var="laptop" items="${listLaptop}">
				<tr>

					<td>${laptop.productID}</td>
					<td>${laptop.name}</td>
					<td>${laptop.description}</td>
					<td>${laptop.quantity}</td>
					<td>${laptop.price}</td>
					<td>${laptop.ram}</td>
					<td>${laptop.processor}</td>
					<td>${laptop.memory}</td>
					<td>${laptop.displaySize}</td>
					<td>${laptop.colour}</td>
					<td>${laptop.GPU}</td>
					<td><a href="editLaptop?id=${laptop.productID}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="deleteLaptop?id=${laptop.productID}">Delete</a></td>

				</tr>
			</c:forEach>
		</table>
		<h4>
			New Laptop Product <a href="newLaptop">here</a>
		</h4>
	</div>
</body>
</html>