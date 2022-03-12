<%@page isELIgnored="False" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cart Management Screen</title>
</head>
<body>
	<div align="center">
		<h1>Cart List</h1>
		
		<table border="1">

			<th>Product Name</th>
			<th>Description</th>
			<th>Quantity</th>
			<th>Price</th>
			<th>Total Cost</th>
			<th>Action</th>

			<c:forEach var="cart" items="${listCart}">
				<tr>

					<td>${cart.product.name}</td>
					<td>${cart.product.description}</td>
					<td>${cart.quantity}</td>
					<td>${cart.product.price}</td>
					<td>${cart.totalPrice}</td>
					<td>
					
					    <form action="/hibernate-model/updateCart" method="get">
						   <input type="hidden" name="cartId" value="${cart.cartId}">
						   <input type="number" name="quantity" > Quantity <br>
						   <input type="submit" value="Update">
						</form>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="/deleteCart?id=${cart.cartId}">Delete</a></td>

				</tr>
			</c:forEach>
		</table>
		<h4>
			<a href="purchase">Purchase</a>
		</h4>
	</div>
</body>
</html>