<%@page isELIgnored="False"  language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New Television</title>
</head>
<body>
    <div align="center">
        <h1>New Television</h1>
        <h3>${message}</h3>
        <form:form action="saveTelevision" method="post" modelAttribute="television">
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
                <td>Display Size:</td>
                <td><form:input path="displaySize" /></td>
            </tr>
            <tr>
                <td>Colour:</td>
                <td><form:input path="colour" /></td>
            </tr>
            <tr>
                <td>Resolution:</td>
                <td><form:input  path="resolution" /></td>
            </tr>
            <tr>
                <td>Type:</td>
                <td> LED <form:radiobutton name="type" path="type" value="LED"/> &nbsp;&nbsp;
                 LCD <form:radiobutton name="type" path="type" value="LCD"/> &nbsp;&nbsp;
                 Plasma Panels <form:radiobutton name="type" path="type" value="plasma"/> &nbsp;&nbsp;
                 OLED <form:radiobutton name="type" path="type" value="OLED"/></td>
            </tr>
            <tr>
                <td>Extensions:</td>
                <td><form:input path="extension" /></td>
            </tr>
            <tr>
                <td>Power Consumption:</td>
                <td><form:input path="power" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Save"></td>
            </tr>
        </table>
        </form:form>
        
    </div>
</body>
</html>