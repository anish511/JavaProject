<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file = "adminNavbar.jsp" %>     
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Admin Panel</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/adminhome.css" />" />
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
<!-- <a href="/hibernate-model/Laptop/">About Laptop</a><br>
<a href="/hibernate-model/Phone/">About Phone</a><br>
<a href="/hibernate-model/Television/">About Television</a><br>
<a href="/hibernate-model/Mouse/">About Mouse</a><br>
<a href="/hibernate-model/Refrigerator/">About Refrigerator</a><br>
<a href="/hibernate-model/Admin/showCustomer/">Show Customer List</a>
<a href="/hibernate-model/Customer/editCustomer">Update Profile</a><br> -->

<div class="ss">

        <div class="container786">
            <div class="card">
                <div class="box">
                    <div class="content" id="e">
                        <h2>01</h2>
                        <h3>Laptops</h3>
                        <p>Get Exclusive Laptops at best price here only.</p>
                        <a href="/hibernate-model/Laptop/">Purchase Now</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container786">
            <div class="card">
                <div class="box">
                    <div class="content" id="f">
                        <h2>02</h2>
                        <h3>Phones</h3>
                        <p>Get Exclusive Phones at best price here only</p>
                        <a href="/hibernate-model/Phone/">Purchase Now</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container786">
            <div class="card">
                <div class="box">
                    <div class="content">
                        <h2>03</h2>
                        <h3>Television</h3>
                        <p>Get Exclusive Televisions at best price here only</p>
                        <a href="/hibernate-model/Television/">Purchase Now</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container786">
            <div class="card">
                <div class="box">
                    <div class="content">
                        <h2>04</h2>
                        <h3>Mouse</h3>
                        <p>Get Exclusive Mouse Pad at best price here only</p>
                        <a href="/hibernate-model/Mouse/">Purchase Now</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container786">
            <div class="card">
                <div class="box">
                    <div class="content">
                        <h2>05</h2>
                        <h3>Refrigerator</h3>
                        <p>Get Exclusive Refrigerators at best price here only</p>
                        <a href="/hibernate-model/Refrigerator/">Purchase Now</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container786">
            <div class="card">
                <div class="box">
                    <div class="content">
                        <h2>06</h2>
                        <h3>Smart Watch</h3>
                        <p>Get Exclusive Smart Watch at best price here only</p>
                        <a href="/hibernate-model/Smartwatch/">Purchase Now</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container786">
            <div class="card">
                <div class="box">
                    <div class="content">
                        <h2>07</h2>
                        <h3>Show Customer</h3>
                        <p>Get the Customer list here</p>
                        <a href="/hibernate-model/Admin/showCustomer/">Show Customers</a>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="container786">
            <div class="card">
                <div class="box">
                    <div class="content">
                        <h2>08</h2>
                        <h3>Update Profile</h3>
                        <p>Update your profile details</p>
                        <a href="/hibernate-model/Customer/editCustomer">Update details</a>
                    </div>
                </div>
            </div>
        </div>
        
    </div>

</body>
</html>
<%@ include file = "Footer.jsp" %>