<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
 
</head>
<body class="disp" style="color:white;width:100%;background-color:black;">
<h1 class="button button-block">Display all services</h1>
<% String user_type=(String)session.getAttribute("type");

if(!user_type.equalsIgnoreCase("Client"))
{
%>
<table  border="3">
<tr><th class="req">ID</th><th>Vendor ID</th><th>Service Type</th><th>Service name</th><th>Visit charge</th><th>Warranty</th><th>Update</th><th>Delete</th></tr>
<c:forEach var="tab" items="${data }">
<tr><td class="field-wrap"><form action="service_update" method="post" modelAttribute="bean"><input type="text" value=${tab.id } name="id"></td><td><input type="text" value=${tab.vid } name="vid"></td><td><input type="text" value=${tab.service_type } name="service_type"></td><td><input type="text" value=${tab.service_name } name="service_name"></td><td><input type="text" value=${tab.visit_charge } name="visit_charge"></td><td><input type="text" value=${tab.warranty } name="warranty"></td><td><input type="submit" value="Update"></form></td><td><form action="service_delete" method="post" modelAttribute="bean"><input type="hidden" value=${tab.id } name="id"><input type="submit" value="Delete"></form></td></tr>
</c:forEach>
</table>
<%
}
else
{
%>
<table  border="3">
<tr><th class="req">ID</th><th>Vendor ID</th><th>Service Type</th><th>Service name</th><th>Visit charge</th><th>Warranty</th><th>Action</th></tr>
<c:forEach var="tab" items="${data }">
<tr><td class="field-wrap"><form action="service_apply" method="post" modelAttribute="bean"><input type="text" value=${tab.id } name="id" readonly></td><td><input type="text" value=${tab.vid } name="vid" readonly></td><td><input type="text" value=${tab.service_type } name="service_type" readonly></td><td><input type="text" value=${tab.service_name } name="service_name" readonly></td><td><input type="text" value=${tab.visit_charge } name="visit_charge" readonly></td><td><input type="text" value=${tab.warranty } name="warranty" readonly></td><td><input type="submit" value="Apply"></form></td></tr>
</c:forEach>
</table>
<%
}
%>
 <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
 <script  src="<c:url value="/resources/js/script.js"/>"></script>

</body>
</html>