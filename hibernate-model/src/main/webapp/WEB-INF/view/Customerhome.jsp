<%@page isELIgnored="false" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file = "navbar.jsp" %>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Customer Management Screen</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/customerhome.css" />" />
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



<div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel" style="height: 100vh;">
  <div class="carousel-inner">
    <!-- <div class="carousel-item active">
      <img src="https://www.devsnews.com/template/epixx-prev/epixx/assets/img/slider/main-Banner-2.jpg" alt="...">
    </div> -->
    <div class="carousel-item active">
      <img src="https://fdn.gsmarena.com/imgroot/news/21/01/google-store-fitbit/inline/-1200/gsmarena_001.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://images-eu.ssl-images-amazon.com/images/G/31/img19/Wireless/A52020/LP/Web.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://images-eu.ssl-images-amazon.com/images/G/31/img20/CEPC/Wearables/OnePlus/Watch/13thMay/PC-BANNER_13th.jpg" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://images-eu.ssl-images-amazon.com/images/G/31/img18/Wireless/OPPOF11Pro/OpenSale/LP/PC/2._CB469241851_.jpg" class="d-block w-100" alt="...">
    </div>
    <!-- <div class="carousel-item">
      <img src="https://promotions.newegg.com/nepro/22-0407/1920x660@2x.jpg" class="d-block w-100" alt="...">
    </div> -->
    <div class="carousel-item">
      <img src="https://acsoft.co.uk/wp-content/uploads/2017/01/Slider.jpg" class="d-block w-100" alt="...">
    </div> 
    <div class="carousel-item">
      <img src="http://www.anshudisplay.com/images/slider-1.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://truvison.com/wp-content/uploads/2014/12/Websie_Slider1-inner-page.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://demo.codezeel.com/opencart/OPC06/OPC060143/image/cache/catalog/main-banner-1-1131x498.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://images-eu.ssl-images-amazon.com/images/G/31/img19/Wireless/MobileAccessories/OnePlus_accessories/PC_accesories_banner._CB443675846_.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://m.media-amazon.com/images/S/aplus-media/vc/6c538caa-ea73-4397-9a63-286b1b575dd6.__CR0,0,1464,600_PT0_SX1464_V1___.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://images-eu.ssl-images-amazon.com/images/G/31/img20/Laptops/DELL/Microsite/PC/D17796502_IN_PC_GGD_Dell_Microsite_Banner_2A.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://m.media-amazon.com/images/S/aplus-media-library-service-media/62382b79-ce1d-442d-b639-76f53b4b7fc0.__CR0,0,1464,600_PT0_SX1464_V1___.jpeg" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>


	<!-- <div align="center">
		
		<h4>
			
			<a href="/hibernate-model/Laptop/">About Laptop</a><br>
			<a href="/hibernate-model/Phone/">About Phone</a><br>
			<a href="/hibernate-model/Television/">About Television</a><br>
			<a href="/hibernate-model/Mouse/">About Mouse</a><br>
			<a href="/hibernate-model/Refrigerator/">About Refrigerator</a><br>
			<a href="/hibernate-model/myCart/">My Cart</a><br>
			<a href="/hibernate-model/showOrder/">My Order</a><br>
			<a href="/hibernate-model/Customer/editCustomer">Update Profile</a><br>
			<a href="/hibernate-model/logout/">Logout</a>
		</h4>
	</div> -->
	
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
                        <h3>My Cart</h3>
                        <p>Get all your cart details here</p>
                        <a href="/hibernate-model/myCart/">My Carts</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container786">
            <div class="card">
                <div class="box">
                    <div class="content">
                        <h2>08</h2>
                        <h3>My Orders</h3>
                        <p>Get all your past Order details here</p>
                        <a href="/hibernate-model/showOrder/">My Orders</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container786">
            <div class="card">
                <div class="box">
                    <div class="content">
                        <h2>09</h2>
                        <h3>Update Customer</h3>
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