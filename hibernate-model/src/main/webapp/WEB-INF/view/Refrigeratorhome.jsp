<%@page isELIgnored="False" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Refrigerator Management Screen</title>
</head>
<body>
	<div align="center">
		<h1>Refrigerator List</h1>
		
		<table border="1">

            <th>Product ID</th>
			<th>Name</th>
			<th>Description</th>
			<th>Quantity</th>
			<th>Price</th>
			<th>Capacity</th>
			<th>Dimension</th>
			<th>Cooling Technology</th>
			<th>Stars</th>
			<th>Door Style</th>
			<th> Colour </th>
			<th>Actions</th>

			<c:forEach var="refrigerator" items="${listRefrigerator}">
				<tr>

					<td>${refrigerator.productID}</td>
					<td>${refrigerator.name}</td>
					<td>${refrigerator.description}</td>
					<td>${refrigerator.quantity}</td>
					<td>${refrigerator.price}</td>
					<td>${refrigerator.capacity}</td>
					<td>${refrigerator.dimension}</td>
					<td>${refrigerator.coolingTech}</td>
					<td>${refrigerator.stars}</td>
					<td>${refrigerator.doorstyle}</td>
					<td>${refrigerator.colour}</td>
					<td>
					
					 <%
					   if(session.getAttribute("role").equals("admin")){
					   %>
					   	<a href="editRefrigerator?id=${refrigerator.productID}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="deleteRefrigerator?id=${refrigerator.productID}">Delete</a>
					  <%
					   }
					   else{
						   %>
						   <form action="/hibernate-model/addToCart" method="get">
						   <input type="hidden" name="productID" value="${refrigerator.productID}">
						   <input type="number" name="quantity"> Quantity &nbsp;&nbsp;
						   <input type="submit" value="Add to Cart">
						   </form>
						    &nbsp;&nbsp;&nbsp;&nbsp; 
						    <form action="/hibernate-model/orderProduct" method="get">
						   <input type="hidden" name="productID" value="${refrigerator.productID}">
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
			   New Refrigerator Product <a href="newRefrigerator">here</a>
			 <%
			 }
			 %> 
			
		</h4>
	</div>
</body>
</html>