<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Display all services</h1>
<table width="100%" border="3">
<tr><th>ID</th><th>Vendor ID</th><th>Service Type</th><th>Service name</th><th>Visit charge</th><th>Warranty</th></tr>
<c:forEach var="tab" items="${saloonlist }">
<tr><td>${tab.id }</td><td>${tab.vid }</td><td>${tab.service_type }</td><td>${tab.service_name }</td><td>${tab.visit_charge }</td><td>${tab.warranty }</td></tr>
</c:forEach>
</table>
</body>
</html>