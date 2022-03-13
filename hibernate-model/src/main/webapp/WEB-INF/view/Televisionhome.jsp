<%@page isELIgnored="False" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Television Management Screen</title>
</head>
<body>
	<div align="center">
		<h1>Television List</h1>
		
		<table border="1">

            <th>Product ID</th>
			<th>Name</th>
			<th>Description</th>
			<th>Quantity</th>
			<th>Price</th>
			<th>Display Size</th>
			<th>Resolution</th>
			<th>Type</th>
			<th>Colour</th>
			<th>Extension</th>
			<th>Power Consumption</th>
			<th>Actions</th>

			<c:forEach var="television" items="${listTelevision}">
				<tr>

					<td>${television.productID}</td>
					<td>${television.name}</td>
					<td>${television.description}</td>
					<td>${television.quantity}</td>
					<td>${television.price}</td>
					<td>${television.displaySize}</td>
					<td>${television.resolution}</td>
					<td>${television.type}</td>
					<td>${television.colour}</td>
					<td>${television.extension}</td>
					<td>${television.power}</td>
					<td>
					
					 <%
					   if(session.getAttribute("role").equals("admin")){
					   %>
					   	<a href="editTelevision?id=${television.productID}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="deleteTelevision?id=${television.productID}">Delete</a>
					  <%
					   }
					   else{
						   %>
						   <form action="/hibernate-model/addToCart" method="get">
						   <input type="hidden" name="productID" value="${television.productID}">
						   <input type="number" name="quantity"> Quantity &nbsp;&nbsp;
						   <input type="submit" value="Add to Cart">
						   </form>
						    &nbsp;&nbsp;&nbsp;&nbsp; 
						    <form action="/hibernate-model/orderProduct" method="get">
						   <input type="hidden" name="productID" value="${television.productID}">
						   <input type="number" name="quantity"> Quantity &nbsp;&nbsp;
						   <input type="submit" value="Purchase">
						   </form>
						   <%
					   }
					  %>
				 </td>

				</tr>
			</c:forEach>
		</table>
		<h4>
		<%
			 if(session.getAttribute("role").equals("admin")){
			 %>
			   New Television Product <a href="newTelevision">here</a>
			 <%
			 }
			 %> 
			
		</h4>
	</div>
</body>
</html>