
<%@page contentType="text/html; charset=ISO-8859-1"
	language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%
if (session.getAttribute("role").equals("admin")) {
%>
<%@ include file="adminNavbar.jsp"%>
<%
} else {
%>
<%@ include file="navbar.jsp"%>
<%
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet"
	href="<c:url value='/resources/css/televisionform.css'/>" />
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
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New Television</title>
</head>
<body>
	<div class=" col-md-4 offset-md-4 backgroundimgd">
		<h3>${message}</h3>

		<div class="lform mb-5">

			<form:form action="saveTelevision" method="post"
				modelAttribute="television">
				<form:hidden path="productID" />
				<div class="col-4 offset-md-4 fhead">
					<h1>New Television</h1>
				</div>


				<div class="lformtbl">

					<div class="row">
						<div class="col-md-10 offset-md-1">
							<div class="row">
								<div class="col-md-6 lforml">Name:</div>
								<div class="col-md-6 lformi">
									<form:input type="text" path="name" />
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-10 offset-md-1">
							<div class="row">
								<div class="col-md-6 lforml">Description:</div>
								<div class="col-md-6 lformi">
									<form:input type="text" path="description" />
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-10 offset-md-1">
							<div class="row">
								<div class="col-md-6 lforml">Quantity:</div>
								<div class="col-md-6 lformi">
									<form:input type="number" path="quantity" />
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-10 offset-md-1">
							<div class="row">
								<div class="col-md-6 lforml">Price:</div>
								<div class="col-md-6 lformi">
									<form:input type="double" path="price" />
								</div>
							</div>
						</div>
					</div>

					
					<div class="row">
						<div class="col-md-10 offset-md-1">
							<div class="row">
								<div class="col-md-6 lforml">Display Size:</div>
								<div class="col-md-6 lformi"><form:input type="text" path="displaySize" /></div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-10 offset-md-1">
							<div class="row">
								<div class="col-md-6 lforml">Resolution:</div>
								<div class="col-md-6 lformi"><form:input  path="resolution" /></div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-10 offset-md-1">
							<div class="row">
								<div class="col-md-6 lforml">Power Consumption:</div>
								<div class="col-md-6 lformi"><form:input  path="power" /></div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-10 offset-md-1">
							<div class="row">
								<div class="col-md-6 lforml">Extensions:</div>
								<div class="col-md-6 lformi"><form:input type="text" path="extension" /></div>
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="col-md-10 offset-md-1">
							<div class="row">
								<div class="col-md-5 lforml">Types:</div>
								<div class="col-md-7 lformi">LED <form:radiobutton name="type" path="type" value="LED"/> &nbsp;&nbsp;
                 LCD <form:radiobutton name="type" path="type" value="LCD"/> &nbsp;&nbsp;
                 Plasma Panels <form:radiobutton name="type" path="type" value="plasma"/> &nbsp;
                 OLED <form:radiobutton name="type" path="type" value="OLED"/></div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-10 offset-md-1">
							<div class="row">
								<div class="col-md-6 lforml">Colour:</div>
								<div class="col-md-6 lformi">
									<form:input type="text" path="colour" />
								</div>
							</div>
						</div>
					</div>


					<div class="row">
						<div class="col-md-10 offset-md-1">
							<div class="row">
								<div class="col-md-6 lforml">Image Url:</div>
								<div class="col-md-6 lformi">
									<form:input type="text" path="img" />
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-4 offset-md-4 scol">
							<input type="submit" value="Add Television">
						</div>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>
<%@ include file = "Footer.jsp" %>