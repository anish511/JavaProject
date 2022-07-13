<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ include file = "usernavbar.jsp" %>  --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Profile</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<link
	href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css'
	rel='stylesheet'>
<link href='' rel='stylesheet'>
<script type='text/javascript'
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<style>
body {
	background: #0a2a43!important
}

.form-control:focus {
	box-shadow: none;
	border-color: #BA68C8
}

.profile-button {
	background: rgb(90,163,223)!important;
	box-shadow: none;
	border: none
}

.profile-button:hover {
	background: #0a2a43!important;
}

.profile-button:focus {
	background: #0a2a43!important;
	box-shadow: none
}

.profile-button:active {
	background: #0a2a43!important;
	box-shadow: none
}

.back:hover {
	color: #682773;
	cursor: pointer
}

.labels {
	font-size: 11px
}

.add-experience:hover {
	background: #BA68C8;
	color: #fff;
	cursor: pointer;
	border: solid 1px #BA68C8
}

.navbar {
background-color:rgb(0,0,0)!important
}
</style>
<script>var elements = document.getElementsByTagName("*");
for(var id = 0; id < elements.length; ++id) { elements[id].oncontextmenu = null; }</script>
</head>
<body oncontextmenu='return false' class='snippet-body'>
	<nav class="navbar navbar-expand-lg  navbar-dark bg-dark fixed-top">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/hibernate-model/Home">Home</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/hibernate-model/Customer/editCustomer">Profile</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/hibernate-model/logout/">Logout</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Product </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="/hibernate-model/Laptop/">Laptop</a></li>
							<li><a class="dropdown-item" href="/hibernate-model/Phone/">Phone</a></li>
							<li><a class="dropdown-item" href="/hibernate-model/Television/">Television</a></li>
							<li><a class="dropdown-item" href="/hibernate-model/Refrigerator/">Refrigerator</a></li>
							<li><a class="dropdown-item" href="/hibernate-model/Mouse/">Mouse</a></li>
							<li><a class="dropdown-item" href="/hibernate-model/Smartwatch/">Smart Watch</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">Something else
									here</a></li>
						</ul></li>
				</ul>
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>

	<div class="container rounded bg-white mt-5 p-5 mb-5">
	
	<form:form action="saveCustomer" method="post" modelAttribute="customer">
	<c:if test = "${not empty message}">
			<svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
	        <div class="alert alert-success alert-dismissible fade show" role="alert">
				  ${message}
				  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>
        </c:if>
        <form:hidden path="password" value="${customer.password}"/>
        <form:hidden path="role" value="${customer.role}"/>
		<div class="row">
			<div class="col-md-3 border-right">
				<div
					class="d-flex flex-column align-items-center text-center p-3 py-5">
					<img class="rounded-circle mt-5" width="150px"
						src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span
						class="text-black-50">${customer.email}</span><span> </span>
				</div>
			</div>
			<div class="col-md-5 border-right">
				<div class="p-3 py-5">
					<div class="d-flex justify-content-between align-items-center mb-3">
						<h4 class="text-right">Profile Settings</h4>
					</div>
					
						<form:hidden path="id" value="${customer.id}"/>
						<div class="row mt-2">
							<div class="col-md-6">
								<label class="labels">First Name</label>
								<form:input type="text"
									class="form-control" placeholder="first name"
									value="${customer.firstName}"  path="firstName" required="required" />
							</div>
							<div class="col-md-6">
								<label class="labels">Last Name</label>
								<form:input type="text"
									class="form-control" placeholder="last name"
									value="${customer.lastName}"  path="lastName" required="required" />
							</div>
						</div>
						<div class="row mt-3">
							<div class="col-md-12 p-2">
								<label class="labels">Email ID</label>
								<form:input type="text"
									class="form-control" placeholder="Enter Email id"
									value="${customer.email}" path="email" required="required" />
							</div>
							<div class="col-md-12 p-2">
								<label class="labels">Primary Phone Number</label>
								<form:input type="text"
									class="form-control" placeholder="Enter primary phone number"
									value="${customer.primaryPhonenumber}" path="primaryPhonenumber" required="required" />
							</div>
							<div class="col-md-12 p-2">
								<label class="labels">Secondary Phone Number</label>
								<form:input type="text"
									class="form-control" placeholder="Enter secondary phone number"
									value="${customer.secondaryPhonenumber}" path="secondaryPhonenumber" required="required" />
							</div>
							<div class="col-md-12 p-2">
								<label class="labels">Date Of Birth</label>
								<form:input type="date"
									class="form-control" placeholder="Enter your Birth Date"
									value="${customer.dateofbirth}" path="dateofbirth" required="required" />
							</div>
						</div>
						
					
				</div>
			</div>
			<div class="col-md-4 mt-5">
				<div class="p-3 py-5">
					
					<div class="col-md-12 p-2">
						<label class="labels"> Address</label>
						<form:input type="text"
							class="form-control" placeholder="Enter  Address"
							value="${customer.billingAddress}"  path="billingAddress" required="required" />
					</div>
					<div class="mt-5 text-center">
							<button class="btn btn-primary profile-button" type="submit">Save Profile</button>
						</div>
				</div>
			</div>
		</div>
		</form:form>
	</div>

	<script type='text/javascript'
		src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js'></script>


</body>
</html>
<%@ include file = "Footer.jsp" %>