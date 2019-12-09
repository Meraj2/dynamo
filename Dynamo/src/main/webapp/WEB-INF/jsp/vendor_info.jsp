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
<h1 class="button button-block">Vendor Information</h1>
<br />Vendor name :${data.fname }&nbsp&nbsp&nbsp${data.lname }
<br />E-mail :${data.email }
<br />Mobile :${data.mobile}
<br />City :${data.city }
<br />Zip :${data.zip }
 <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
 <script  src="<c:url value="/resources/js/script.js"/>"></script>

</body>
</html>