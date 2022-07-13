<%@ page language="java" isELIgnored="false" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
<style>
body {
    color: #000;
    overflow-x: hidden;
    height: 100%;
    background-color:#0a2a43!important;
    background-repeat: no-repeat
}
</style>
<link rel="stylesheet" href="<c:url value="/resources/css/payment.css" />" />
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
<!--<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css" />-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
</head>
<body>
<div class="container px-4 py-5 mx-auto">
<div class="row justify-content-center" >
 <h2 style="color:white!important;">Make Payment</h2>
        <div class="col-lg-12">
            <div class="card" style="border-radius: 100px!important;">
                <div class="row">
                    <div class="col-lg-3 radio-group">
                        <div class="row d-flex px-3 radio"> <img class="pay" src="https://i.imgur.com/WIAP9Ku.jpg">
                            <p class="my-auto">Credit Card</p>
                        </div>
                        <div class="row d-flex px-3 radio gray"> <img class="pay" src="https://i.imgur.com/OdxcctP.jpg">
                            <p class="my-auto">Debit Card</p>
                        </div>
                        <div class="row d-flex px-3 radio gray mb-3"> <img class="pay" src="https://i.imgur.com/cMk1MtK.jpg">
                            <p class="my-auto">PayPal</p>
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="row px-2">
                            <div class="form-group col-md-6"> <label class="form-control-label">Name on Card</label> <input type="text" id="cname" name="cname" placeholder="Johnny Doe"> </div>
                            <div class="form-group col-md-6"> <label class="form-control-label">Card Number</label> <input type="text" id="cnum" name="cnum" placeholder="1111 2222 3333 4444"> </div>
                        </div>
                        <div class="row px-2">
                            <div class="form-group col-md-6"> <label class="form-control-label">Expiration Date</label> <input type="text" id="exp" name="exp" placeholder="MM/YYYY"> </div>
                            <div class="form-group col-md-6"> <label class="form-control-label">CVV</label> <input type="text" id="cvv" name="cvv" placeholder="***"> </div>
                        </div>
                    </div>
                    <div class="col-lg-4 mt-2">
                        <div class="row d-flex justify-content-between px-4">
                            <p class="mb-1 text-left">Subtotal</p>
                            <h6 class="mb-1 text-right">$${order.orderCost}</h6>
                        </div>
                        <div class="row d-flex justify-content-between px-4">
                            <p class="mb-1 text-left">Shipping</p>
                            <h6 class="mb-1 text-right">$2.99</h6>
                        </div>
                        <div class="row d-flex justify-content-between px-4" id="tax">
                            <p class="mb-1 text-left">Total (tax included)</p>
                            <h6 class="mb-1 text-right">$${order.orderCost}</h6>
                        </div> 
                        <form id="myform" action="/hibernate-model/orderProduct" method="get">
							<input type="hidden" name="productID" value="${listOrderItem[0].product.productID}">
							<input  type="hidden" name="quantity"  value="${listOrderItem[0].quantity}"  >
							<input  type="hidden" name="shippingAddress" value="${order.shippingAddress}">
							<input type="hidden" name="type" value="${type}">
							<button class="btn-block btn-blue submit" > <span> <span id="checkout">Checkout </span> <span id="check-amt"> &nbsp;$${order.orderCost}</span> </span> </button>
						</form>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row d-flex justify-content-center" style="color:white!important;">
        <div class="col-5">
            <h4 class="heading">Shopping Bag</h4>
        </div>
        <div class="col-7">
            <div class="row text-right">
                <div class="col-4">
                    <h6 class="mt-2">Description</h6>
                </div>
                <div class="col-4">
                    <h6 class="mt-2">Quantity</h6>
                </div>
                <div class="col-4">
                    <h6 class="mt-2">Price</h6>
                </div>
            </div>
        </div>
    </div>
    
    <c:forEach var="orderItem" items="${listOrderItem}">
    <div class="row d-flex justify-content-center border-top mt-5" style="background:#c9e2f3!important; border-radius: 100px!important;">
        <div class="col-5">
            <div class="row d-flex">
                <div class="book"> <img src="${orderItem.product.img}" class="img-fluid rounded-start"
							alt="..." height="250px" width="250px"> </div>
                <div class="my-auto flex-column d-flex pad-left col-7">
                    <h6 class="mob-text mt-5 mx-auto my-auto p-3" style="font-size: 28px;" >${orderItem.product.name}</h6>
                    <!-- style="margin-top:55px!important;" style="background-color: rgb(90,163,223)!important;"-->
                </div>
            </div>
        </div>
        <div class="my-auto col-7">
            <div class="row text-right">
                <div class="col-4">
                    <p class="mob-text">${orderItem.product.description}</p>
                </div>
                <div class="col-4">
                    <div class="row d-flex justify-content-end px-3">
                        <p class="mb-0" id="cnt1">${orderItem.quantity}</p>
                    </div>
                </div>
                <div class="col-4">
                    <h6 class="mob-text">$ ${orderItem.totalPrice}</h6>
                </div>
            </div>
        </div>
    </div>
    </c:forEach>
    
</div>


</body>
<script>


$(document).ready(function(){

	$('.radio-group .radio').click(function(){
	$('.radio').addClass('gray');
	$(this).removeClass('gray');
	});

	const myForm = document.getElementById("myform");
	document.querySelector(".submit").addEventListener("click", function(){

	  myForm.submit();

	});
    

});
</script>
</html>
<%@ include file = "Footer.jsp" %>