<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ include file = "navbar.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Cart</title>

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

<!-- <div class="container col-12 mt-5"> -->
	<!-- <div align="center" class="container col-8 mt-5">
	
	</div> -->
	<div align="center" class="mb-5" style="margin-top: 20vh !important;">
			<h2 class="mt-5">Your Carts are waiting for you...</h2>
		</div>
	
	<div class="container col-8 mt-5" style="margin-top: 15vh !important;">        
        <c:if test = "${not empty cart_success}">
			<svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
	        <div class="alert alert-success alert-dismissible fade show" role="alert">
				  ${cart_success}
				  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>
        </c:if>
	</div>
	
	<c:if test = "${empty listCart}">
			<div class="container col-8 mt-5 mb-4" style="margin-top: 15vh !important;">
				<center><h1>Cart is Empty</h1></center>
			</div>
        </c:if>
        
        <div class="container col-8 mt-5" style="margin-top: 5vh !important;">        
        <c:if test = "${not empty listCart}">
			<div class="container col-12 mb-4">
				<div class="row">
				    <div class="col-8"><form action="/hibernate-model/paymentCart" method="get">
											<strong>Shipping Address: </strong><input style="width: 300px; height: 50px" type="textarea" name="shippingAddress" placeholder="Enter Shipping Address">
											<button class="btn btn-primary">Purchase</button>
											</form>
					</div>
					<div class="col-4 mt-2"><a class="btn btn-danger" href="/hibernate-model/deleteAllCart/">Clear Cart</a></div>
				</div>
			</div>
        </c:if>
	</div>
	
	<c:forEach var="cart" items="${listCart}" varStatus="theCount">
		<div class="container mt-3 col-8">
			<div class="card mb-3" style="border-radius: 100px;">
				<div class="row g-0">
					<div class="col-md-4 p-5">
						<img src="${cart.product.img}" class="img-fluid rounded-start"
							alt="..." height="250px" width="250px">
					</div>
					<div class="col-md-8 p-5">
						<div class="card-body">
							<h5 class="card-title">${cart.product.name}</h5>
							<p class="card-text">${cart.product.description}</p>
							<div class="row mt-5">
								<div class="col">
									<p><strong>Quantity : </strong>${cart.quantity}</p> 
								</div>
								<div class="col">
									<p><strong>Price per Product : </strong>${cart.product.price}</p> 
								</div>
								<div class="col">
									<p><strong>Total Price : </strong>${cart.totalPrice}</p> 
								</div>
							</div>
							<div class="mt-5">
								<div class=row>
									<form method="GET"name="myform" action="/hibernate-model/updateCart" class="col">
											<input type="hidden" name="cartId" value="${cart.cartId}">
											<input style="width: 50px;" type="number" name="quantity" value="${cart.quantity}" min="1" max="${cart.product.quantity}">
											<button class="btn btn-primary">Update Quantity</button>
									</form>
									<form method="GET" action="/hibernate-model/deleteCart" class="col">
											<input type="hidden" name="cartId" value="${cart.cartId}">
											<button class="btn btn-danger">Delete</button>
									</form>
								</div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
	
	
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