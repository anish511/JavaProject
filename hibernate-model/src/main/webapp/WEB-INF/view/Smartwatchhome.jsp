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
<title>Smartwatch Management System</title>

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
			<h2 class="mt-5">Smartwatch List</h2>
		</div>

        <c:if test = "${empty listSmartwatch}">
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
						<div class="col"><a class="btn btn-primary" href="newSmartwatch">Add Smartwatch</a></div>
					</div>
				</div>
			<%
			}
			%>
		</div>

		<c:forEach var="Smartwatch" items="${listSmartwatch}" varStatus="theCount">
			<div class="container">
				<div class="card mb-3" style="max-width: 100%;border-radius: 100px;">
					<div class="row g-0">
						<div class="col-md-4 p-5">
							<img src="${Smartwatch.img}" class="img-fluid rounded-start"
								alt="...">
						</div>
						<div class="col-md-8 p-5">
							<div class="card-body">
								<h5 class="card-title">${Smartwatch.name}</h5>
								<p class="card-text">${Smartwatch.description}</p>
								<div class="row mt-5">
									<div class="col">
										<p><strong>Quantity : </strong>${Smartwatch.quantity}</p> 
									</div>
									<div class="col">
										<p><strong>Price : </strong>${Smartwatch.price}</p> 
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
													<strong>Colour </strong>${Smartwatch.colour}</p>
												<p>
													<strong>Display Size </strong>${Smartwatch.dimension}</p>
												<p>
													<strong>Ideal For </strong>${Smartwatch.idealFor}</p>
											    <p>
													<strong>Water Resistant </strong>${Smartwatch.waterResistant}</p>
												<p>
													<strong>Basic Features </strong>${Smartwatch.basicFeatures}</p>
														
											</div>
										</div>
									</div>
								</div>
								<div class="mt-3">

									<%
										if(session.getAttribute("role").equals("admin")){
										%>
										<a href="editSmartwatch?id=${Smartwatch.productID}" class="btn btn-primary">Edit</a>
											&nbsp;&nbsp;&nbsp;&nbsp; <a
											href="deleteSmartwatch?id=${Smartwatch.productID}" class="btn btn-primary">Delete</a>
										<%
										}
										else{
											%>
											<form action="/hibernate-model/addToCart" method="get">
											<input type="hidden" name="productID" value="${Smartwatch.productID}">
											<strong>Quantity: </strong><input style="width: 50px;" type="number" value=1 name="quantity"  min="1" max="${Smartwatch.quantity}">
											<button class="btn btn-primary">Add to Cart</button>
											</form>
												&nbsp;&nbsp;&nbsp;&nbsp; 
												<form action="/hibernate-model/paymentProduct" method="get">
											<input type="hidden" name="productID" value="${Smartwatch.productID}">
											<strong>Quantity: </strong><input style="width: 50px;" type="number" name="quantity" value=1  min="1" max="${Smartwatch.quantity}"><br>
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