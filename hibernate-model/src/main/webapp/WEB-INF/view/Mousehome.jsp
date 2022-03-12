<%@page isELIgnored="False" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mouse Management Screen</title>
</head>
<body>
	<div align="center">
		<h1>Mouse List</h1>
		
		<table border="1">

            <th>Product ID</th>
			<th>Name</th>
			<th>Description</th>
			<th>Quantity</th>
			<th>Price</th>
			<th>Connection Type</th>
			<th>Colour</th>
			<th>DPI</th>
			<th>Life Style</th>
			<th>Actions</th>

			<c:forEach var="mouse" items="${listMouse}">
				<tr>

					<td>${mouse.productID}</td>
					<td>${mouse.name}</td>
					<td>${mouse.description}</td>
					<td>${mouse.quantity}</td>
					<td>${mouse.price}</td>
					<td>${mouse.connectionType}</td>
					<td>${mouse.colour}</td>
					<td>${mouse.DPI}</td>
					<td>${mouse.lifeStyle}</td>
					<td>
					 <%
					   if(session.getAttribute("role").equals("admin")){
					   %>
					   <a href="editMouse?id=${mouse.productID}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="deleteMouse?id=${mouse.productID}">Delete</a>
					  <%
					   }
					   else{
						   %>
						   <form action="/hibernate-model/addToCart" method="get">
						   <input type="hidden" name="productID" value="${mouse.productID}">
						   <input type="number" name="quantity"> Quantity &nbsp;&nbsp;
						   <input type="submit" value="Add to Cart">
						   </form>
						    &nbsp;&nbsp;&nbsp;&nbsp; <a
						    href="purchaseProduct?id=${mouse.productID}">Purchase</a>
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
			   New Mouse Product <a href="newMouse">here</a>
			 <%
			 }
			 %>
		</h4>
	</div>
</body>
</html>