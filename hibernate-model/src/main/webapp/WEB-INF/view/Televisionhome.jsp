<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<%
	if(session.getAttribute("role").equals("admin")){
		%>
		<%@ include file = "adminNavbar.jsp" %>
		<%
	}else{
		%>
		<%@ include file = "navbar.jsp" %>
		<% 
	}
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Television Management System</title>

<style>
.card:hover {
	background: white;
	box-shadow: 0px 15px 26px rgba(0, 0, 0, 0.8);
	-webkit-transition: all 0.2s ease-in;
	-moz-transition: all 0.2s ease-in;
	-ms-transition: all 0.2s ease-in;
	-o-transition: all 0.2s ease-in;
	transition: all 0.2s ease-in;
}

.card{
background: #0a2a43!important;
color: white!important;
margin-top: 25px;
border-radius: 100px;
}

body{
background: #c9e2f3!important;
}
</style>

</head>
<body>

<div class="container col-10 mt-5">
		<div align="center" class="mb-5" style="margin-top: 20vh !important;">
			<h2 class="mt-5">Television List</h2>
		</div>

        <c:if test = "${empty listTelevision}">
			<div class="container col-8 mt-5 mb-4" style="margin-top: 15vh !important;">
				<center><h1>No Products Available...</h1></center>
			</div>
        </c:if> 
		<div class="container col-8 mt-5" style="margin-top: 15vh !important;">        
			<%
		    if(session.getAttribute("role").equals("admin")){
		    %>
				<div class="container col-3 mb-4">
					<div class="row">
						<div class="col"><a class="btn btn-primary" href="newTelevision">Add Television</a></div>
					</div>
				</div>
			<%
			}
			%>
		</div>

		<c:forEach var="television" items="${listTelevision}" varStatus="theCount">
			<div class="container">
				<div class="card mb-3" style="max-width: 100%; border-radius: 100px;">
					<div class="row g-0">
						<div class="col-md-4 p-5">
							<img src="${television.img}" class="img-fluid rounded-start"
								alt="...">
						</div>
						<div class="col-md-8 p-5">
							<div class="card-body">
								<h5 class="card-title">${television.name}</h5>
								<p class="card-text">${television.description}</p>
								<div class="row mt-5">
									<div class="col">
										<p><strong>Quantity : </strong>${television.quantity}</p> 
									</div>
									<div class="col">
										<p><strong>Price : </strong>${television.price}</p> 
									</div>
								</div>
								<div class="accordion" id="accordionExample">
									<div class="accordion-item">
										<h2 class="accordion-header" id="headingOne">
											<button class="accordion-button" type="button"
												data-bs-toggle="collapse"
												data-bs-target="#divIDNo${theCount.index}"
												aria-expanded="true"
												aria-controls="divIDNo${theCount.index}">Key
												Features</button>
										</h2>
										<div id="divIDNo${theCount.index}"
											class="accordion-collapse collapse"
											aria-labelledby="headingOne"
											data-bs-parent="#accordionExample">
											<div class="accordion-body" style="color:black;">
												
												<p>
													<strong>Color </strong>${television.colour}</p>
												<p>
													<strong>Display Size </strong>${television.displaySize}</p>
												<p>
													<strong>Resolution </strong>${television.resolution}</p>
											    <p>
													<strong>Cable Type </strong>${television.type}</p>
												<p>
													<strong>Extension </strong>${television.extension}</p>
												
												<p>
													<strong>Power </strong>${television.power}</p>
														
											</div>
										</div>
									</div>
								</div>
								<div class="mt-3">

									<%
										if(session.getAttribute("role").equals("admin")){
										%>
										<a href="editTelevision?id=${television.productID}" class="btn btn-primary">Edit</a>
											&nbsp;&nbsp;&nbsp;&nbsp; <a
											href="deleteTelevision?id=${television.productID}" class="btn btn-primary">Delete</a>
										<%
										}
										else{
											%>
											<form action="/hibernate-model/addToCart" method="get">
											<input type="hidden" name="productID" value="${television.productID}">
											<strong>Quantity: </strong><input style="width: 50px;" type="number" value=1 name="quantity"  min="1" max="${television.quantity}">
											<button class="btn btn-primary">Add to Cart</button>
											</form>
												&nbsp;&nbsp;&nbsp;&nbsp; 
												<form action="/hibernate-model/paymentProduct" method="get">
											<input type="hidden" name="productID" value="${television.productID}">
											<strong>Quantity: </strong><input style="width: 50px;" type="number" name="quantity" value=1  min="1" max="${television.quantity}"><br>
											<strong>Shipping Address: </strong><input style="width: 300px; height: 50px" type="textarea" name="shippingAddress" placeholder="Enter Shipping Address"><br>
											<button class="btn btn-primary">Purchase</button>
											</form>
												
											<%
										}
										%>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>

	
	
<!-- </div>	 -->
	<script>
var button = document.querySelector('form[name="myform"] > button');
button.addEventListener(function() {
  document.querySelector("form[name="myform"]").submit();
});
</script>

</body>
</html>
<%@ include file = "Footer.jsp" %>