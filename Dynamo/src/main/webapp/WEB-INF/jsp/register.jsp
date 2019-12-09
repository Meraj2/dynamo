<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Vendor Registration</h1>
<form:form action="vregister" method="post" modelAttribute="bean">
Vendor name :<br />
<form:input path="vname"/><br />
E-mail ID :<br />
<form:input path="email"/><br />
Password :<br />
<form:password path="password"/><br />
Mobile :<br />
<form:input path="mobile"/><br />
City :<br />
<form:input path="city"/><br />
Zip :<br />
<form:input path="zip"/><br />
<input type="submit" value="Register">

</form:form></body>
</html>