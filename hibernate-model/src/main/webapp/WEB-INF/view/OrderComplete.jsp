<%@ page language="java" isELIgnored="false" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Confirmed</title>
<link rel="stylesheet" href="<c:url value="/resources/css/invoice.css" />" />
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"/>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
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
<body style="background:#c9e2f3!important;">
<div class="container">
    <div class="page-header">
        <h1>Congratulations... </h1>
    </div>
    <div class="container " >
        <div class="row">
        	<div class="col-md-1"></div>
            <div class="col-md-10 col-md-offset-3 body-main"  align="center">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-4"> <img class="img" alt="Invoce Template" src="http://pngimg.com/uploads/shopping_cart/shopping_cart_PNG59.png" /> </div>
                        <div class="col-md-8 text-right">
                            <h4 style="color: #F81D2D;"><strong>Order Confirmed</strong></h4>
                            <h5><strong>Shipping Address</strong><h5>
                            <p>${order.shippingAddress}</p>
                            
                        </div>
                    </div> <br />
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <h2>INVOICE</h2>
                        </div>
                    </div> <br />
                    <div>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>
                                        <h4>Name</h4>
                                    </th>
                                    <th>
                                        <h4>Description</h4>
                                    </th>
                                    <th>
                                        <h4>Amount</h4>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="orderItem"  items="${listOrderItem}">
                                <tr>
                                    <td class="col-md-3"><p>${orderItem.product.name}</p></td>
                                    <td class="col-md-6"><p>${orderItem.product.description}</p></td>
                                    <td class="col-md-3"><p>$ ${orderItem.totalPrice}</p></td>
                                </tr>
                              </c:forEach>  
                                
                                <tr>
                                    <td class="text-right">
                                        <p> <strong>Shipment and Taxes:</strong> </p>
                                        <p> <strong>Total Amount: </strong> </p>
                                        <p> <strong>Discount: </strong> </p>
                                        <p> <strong>Payable Amount: </strong> </p>
                                    </td>
                                    </td>
                                    <td>
                                        <p> <strong>$ 500 </strong> </p>
                                        <p> <strong>$ ${order.orderCost}</strong> </p>
                                        <p> <strong>$ 3,000 </strong> </p>
                                        <p> <strong>$ ${order.orderCost}</strong> </p>
                                    </td>
                                </tr>
                                <tr style="color: #F81D2D;">
                                    <td class="text-right">
                                        <h3><strong>Total:</strong></h3>
                                    </td>
                                    </td>
                                    <td class="text-left">
                                        <h3><strong>$ ${order.orderCost}</strong></h3>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div>
                        <div class="col-md-12">
                            <p><b>Date :</b>${order.orderDate}</p> <br />
                        </div>
                       <a href="/hibernate-model/Home"> <button class="btn btn-danger" >Go to Home Page</button></a>
                    </div>
                </div>
            </div>
            <div class="col-md-1"></div>
            
        </div>
        
    </div>
</div>

</body>
</html>
<%@ include file = "Footer.jsp" %>