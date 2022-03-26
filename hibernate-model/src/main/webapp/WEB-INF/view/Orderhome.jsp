<%@page isELIgnored="false" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file = "navbar.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Order Management Screen</title>
</head>
<body>
	<div align="center">
		<h1>Order List</h1>
		
		<table border="1">

            <th>Order ID</th>
			<th>Name</th>
			<!-- <th>Description</th>
			<th>Quantity</th>
			<th>Price</th>
			<th>RAM</th>
			<th>Processor</th>
			<th>ROM</th>
			<th>Display Size</th>
			<th>Colour</th>
			<th>Camera</th>
			<th>Battery</th>
			<th>Actions</th> -->

			<c:forEach var="order" items="${Order}">
				<tr>

					<td>${order.key.orderId}</td>
					
					<c:forEach var="orderitem" items="${order.value}">
					   <td>${orderitem.orderItemId}</td>
					</c:forEach>
					<%--<td>${order.value.orderItemId}</td> --%>
					<%-- <td>${phone.description}</td>
					<td>${phone.quantity}</td>
					<td>${phone.price}</td>
					<td>${phone.ram}</td>
					<td>${phone.processor}</td>
					<td>${phone.rom}</td>
					<td>${phone.size}</td>
					<td>${phone.colour}</td>
					<td>${phone.camera}</td>
					<td>${phone.battery}</td> --%>
					
				</tr>
			</c:forEach>
		</table>
		
	</div>
</body>
</html>