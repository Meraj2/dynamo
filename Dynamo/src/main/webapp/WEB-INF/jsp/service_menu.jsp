<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page isELIgnored="false" %>
       <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
 <style>
 a
 {
 	font-size:20px;
 	color:white;
 
 }
  a:hover
 {
 	background-color:white;
 	color:green;
 }
 </style>
</head>
<body class="form">
${msg }
<center>
<hr>
<a href="service_add">Add Service </a>
|<a href="service_display">Display Service </a>
<hr>
</center>
</body>
</html>