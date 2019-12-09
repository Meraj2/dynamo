<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 	<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
 <style>
 option,select
{
	font-size: 22px;
  display: block;
  width: 100%;
  height: 100%;
  padding: 5px 10px;
  background: none;
  background-image: none;
  border: 1px solid #a0b3b0;
  color:green;
  border-radius: 0;
  transition: border-color 0.25s ease, box-shadow 0.25s ease;
}
input:focus, textarea:focus {
  outline: 0;
  border-color: #1ab188;
}
option:focus,select:focus
{
	 outline: 0;
  border-color: #1ab188;
}
 </style>
</head>
<body class="form">
 
 <h1>Services</h1>
 <form action="service" method="post" modelAttribute="bean">
 <div class="field-wrap">
               <label>
              <span class="req"></span>
            </label>
            <select name="user_type"  required autocomplete="off">
           	 <option>Select option</option>
           	 <option>Saloon at home</option>
            <option>Heathh</option>
            <option>Repairing</option>
            <option>Home shifting</option>
            	
            	
            </select>
            </div>
        
          
          <div class="field-wrap">
            <label>
              Service<span class="req">*</span>
            </label>
            <input type="text"  name="service_name" required autocomplete="off"/>
          </div>
          <div class="field-wrap">
            <label>
              Visiting charge <span class="req">*</span>
            </label>
            <input type="text" name="visit_charge" required autocomplete="off"/>
          </div>
          <div class="field-wrap">
            <label>
            Warranty<span class="req">*</span>
            </label>
            <input type="text"  name="warranty" required autocomplete="off"/>
          </div>
          <button type="submit" class="button button-block">Submit</button>
          </form>

<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
 <script  src="<c:url value="/resources/js/script.js"/>"></script>

</body>
</html>