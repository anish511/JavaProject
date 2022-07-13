<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
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
<title>Contact</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600;700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css"
        integrity="undefined" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="<c:url value="/resources/css/contact.css" />" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
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
<div class="about" style="margin-top:100px;">
<div class="content">
            <div class="title">${alert}</div>
        </div>
        <div class="content">
            <div class="title">Contact details</div>
        </div>
    </div>
    <div class="conu">
        <div class="container">
            <div class="box">
                <div class="imgbx">
                    <img src="<c:url value="/resources/images/call.png" />">
                </div>
                <div class="content2">
                    <i class="fa fa-phone" aria-hidden="true"></i>
                    <h3>Mobile no.</h3>
                    <h4><strong>Priyanshi Parmar : </strong>8765432678</h4>
                    <h4><strong>Aadit Baldha : </strong>9873654638</h4>
                    <h4><strong>Anish Giri : </strong>9265045066</h4>
                    <h4><strong>Vaidik Lathiya : </strong>9876543210</h4>
                </div>
            </div>
            <div class="box">
                <div class="imgbx">
                    <img src="<c:url value="/resources/images/email.png" />">
                </div>
                <div class="content2">
                    <i class="fa fa-envelope-o" aria-hidden="true"></i>
                    <h3>E-mail</h3>
                    <h4><strong>Priyanshi Parmar : </strong>priyanshi@gmail.com</h4>
                    <h4><strong>Aadit Baldha : </strong>aadit@gmail.com</h4>
                    <h4><strong>Anish Giri : </strong>anish@gmail.com</h4>
                    <h4><strong>Vaidik Lathiya : </strong>vaidik@gmail.com</h4>
                </div>            
            </div>
            <div class="box">
                <div class="imgbx">
                    <img src="<c:url value="/resources/images/location.png" />">
                </div>
                <div class="content2">
                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                    <h3>Address of Head Quarters</h3>
                    <h4>Dharmsinh Desai University,College Road,Nadiad,Gujarat.</h4>
                </div>           
            </div>
        </div>
    </div>

    


    <div class="border"></div>
        <h1>Please Share Your Thoughts With Us...</h1>    


    
    <div class="contact-section mb-5">
        <form action="/hibernate-model/email" method="POST" class="contact-form">
            
            <h1>Feel free to contact us</h1>
            <input type="text" name="name" class="contact-form-text" placeholder="Your Name" required>
            <input type="email" name="email" id="email" class="contact-form-text" placeholder="Your e-mail address" required>
            <input type="text" name="message" id="message" class="contact-form-text" placeholder="Your Message..." required>
            <div class="btn">
                <input type="submit" value="Send" name="submit">
            </div>
        </form>
    </div>
    
</body>
</html>
<%@ include file = "Footer.jsp" %>
 <link rel="stylesheet" href="<c:url value="/resources/css/contact.css" />" /> 