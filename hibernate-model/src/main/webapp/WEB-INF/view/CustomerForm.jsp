<%@page isELIgnored="False"  language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New Customer</title>
</head>
<body>
    <div align="center">
        <h1>New Customer</h1>
        <h3>${message}</h3>
        <form:form action="saveCustomer" method="post" modelAttribute="customer">
        <table>
            <form:hidden path="id"/>
            <tr>
                <td>First Name:</td>
                <td><form:input path="firstName" /></td>
            </tr>
            <tr>
                <td>Last Name:</td>
                <td><form:input path="lastName" /></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><form:input type="email" path="email" /></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><form:input type="password" path="password" /></td>
            </tr>
            <tr>
                <td>Date of Birth:</td>
                <td><form:input type="date" path="dateofbirth" /></td>
            </tr>
            <tr>
                <td>Primary Phone-Number:</td>
                <td><form:input path="primaryPhonenumber" /></td>
            </tr>
            <tr>
                <td>Secondary Phone-Number:</td>
                <td><form:input path="secondaryPhonenumber" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Save"></td>
            </tr>
        </table>
        </form:form>
        <h4>
			Already Signed Up ? <a href="CustomerLogin">Login</a>
		</h4>
    </div>
</body>
</html>