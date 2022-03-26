<%@page isELIgnored="false" contentType="text/html; charset=ISO-8859-1" language="java" 
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New Phone</title>
</head>
<body>
    <div align="center">
        <h1>New Phone</h1>
        <h3>${message}</h3>
        <form:form action="savePhone" method="post" modelAttribute="phone">
        <table>
            <form:hidden path="productID"/>
            <tr>
                <td>Name:</td>
                <td><form:input path="name" /></td>
            </tr>
            <tr>
                <td>Description:</td>
                <td><form:input type="text" path="description" /></td>
            </tr>
            <tr>
                <td>Quantity:</td>
                <td><form:input type="number" path="quantity" /></td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><form:input type="double" path="price" /></td>
            </tr>
            <tr>
                <td>Total RAM:</td>
                <td><form:input type="number" path="ram" /></td>
            </tr>
            <tr>
                <td>Total ROM:</td>
                <td><form:input type="number" path="rom" /></td>
            </tr>
            <tr>
                <td>Processor:</td>
                <td><form:input path="processor" /></td>
            </tr>
            <tr>
                <td>Display Size:</td>
                <td><form:input path="size" /></td>
            </tr>
            <tr>
                <td>Colour:</td>
                <td><form:input path="colour" /></td>
            </tr>
            <tr>
                <td>Camera:</td>
                <td><form:input path="camera" /></td>
            </tr>
            <tr>
                <td>Battery:</td>
                <td><form:input  path="battery" /></td>
            </tr>
            <tr>
               <td>Image Url:</td>
               <td><form:input path="img" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Save"></td>
            </tr>
        </table>
        </form:form>
        
    </div>
</body>
</html>