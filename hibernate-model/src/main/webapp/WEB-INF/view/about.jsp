<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<title>About Page</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600;700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css"
        integrity="undefined" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<c:url value="/resources/css/about.css" />" />
</head>
<body>
<div class="title" style="margin-top:100px;"> About Designers </div>

    <div class="c1">
        <div class="container">
            <div class="card">
                <span></span>
                <div class="imgbx">
                    <img height="360px" width="360px" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2w-2Q36I0rL4IbE8OfeQDSiZpCr_ZklRIJw&usqp=CAU">
                </div>
                <div class="content2">
                    <div>
                        <h2>Priyanshi Parmar</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque nihil blanditiis nostrum eius, debitis vero deleniti illo, voluptatibus, repudiandae quos fugit quae repellendus perspiciatis obcaecati voluptas sit quod a exercitationem.</p>
                    </div>
                </div>
            </div>
            <div class="card">
                <span></span>
                <div class="imgbx">
                    <img height="360px" width="360px"src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRvT59urBwJHSQXaH3g7IlcOkYg6qgN252OhLouqTxZ66ROulvZ_5Xs1LnMgUG_h_JCP8&usqp=CAU">
                </div>
                <div class="content2">
                    <div>
                        <h2>Aadit Baldha</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque nihil blanditiis nostrum eius, debitis vero deleniti illo, voluptatibus, repudiandae quos fugit quae repellendus perspiciatis obcaecati voluptas sit quod a exercitationem.</p>
                    </div>
                </div>
            </div>
            <div class="card">
                <span></span>
                <div class="imgbx">
                    <img height="360px" width="360px"src="data:image/png;base64,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">
                </div>
                <div class="content2">
                    <div>
                        <h2>Anish Giri</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque nihil blanditiis nostrum eius, debitis vero deleniti illo, voluptatibus, repudiandae quos fugit quae repellendus perspiciatis obcaecati voluptas sit quod a exercitationem.</p>
                    </div>
                </div>
            </div>
            <div class="card">
                <span></span>
                <div class="imgbx">
                    <img height="360px" width="360px"src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrK_QtS2oMOB7ays-uUPPEKj16G4uND2v8eeCbZrCnIBEi1R9DbWCTu-2nDQ_6p3Koeh0&usqp=CAU">
                </div>
                <div class="content2">
                    <div>
                        <h2>Vaidik Lathiya</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque nihil blanditiis nostrum eius, debitis vero deleniti illo, voluptatibus, repudiandae quos fugit quae repellendus perspiciatis obcaecati voluptas sit quod a exercitationem.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
<%@ include file = "Footer.jsp" %>