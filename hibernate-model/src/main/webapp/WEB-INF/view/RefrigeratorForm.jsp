<%@page isELIgnored="False"  language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New Refrigerator</title>
</head>
<body>
    <div align="center">
        <h1>New Refrigerator</h1>
        <h3>${message}</h3>
        <form:form action="saveRefrigerator" method="post" modelAttribute="refrigerator">
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
                <td>Capacity:</td>
                <td><form:input type="number" path="capacity" /></td>
            </tr>
            <tr>
                <td>Dimension:</td>
                <td><form:input  path="dimension" /></td>
            </tr>
            <tr>
                <td>Cooling Technology:</td>
                <td><form:input path="coolingTech" /></td>
            </tr>
            <tr>
                <td>Stars:</td>
                <td><form:input type="number" path="stars" /></td>
            </tr>
            <tr>
                <td>Door Style:</td>
                <td><form:input path="doorstyle" /></td>
            </tr>
            <tr>
                <td>Colour:</td>
                <td><form:input path="colour" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Save"></td>
            </tr>
        </table>
        </form:form>
        
    </div>
</body>
</html>