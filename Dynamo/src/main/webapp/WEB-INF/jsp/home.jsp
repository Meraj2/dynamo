<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Sign-Up/Login Form</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>">
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
<body>
<div class="form">
      
      <ul class="tab-group">
        <li class="tab active"><a href="#signup">Sign Up</a></li>
        <li class="tab"><a href="#login">Log In</a></li>
      </ul>
      
      <div class="tab-content">
        <div id="signup">   
          <h1>Sign Up for Free</h1>
          
          <form action="vregister" method="post" modelAttribute="bean">
          
          <div class="top-row">
          <div class="field-wrap">
               <label>
              <span class="req"></span>
            </label>
            <select name="user_type"  required autocomplete="off">
           	 <option>Select option</option>
           	 <option>Client</option>
            	
            	<option>Vendor</option>
            	
            </select>
            </div>
        
            
          
            
            <div class="field-wrap">
              <label>
                First Name<span class="req">*</span>
              </label>
              <input type="text" name="fname" required autocomplete="off" />
            </div>
        
            <div class="field-wrap">
              <label>
                Last Name<span class="req">*</span>
              </label>
              <input type="text" name="lname" required autocomplete="off"/>
            </div>
          </div>

          <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="text" name="email" required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Set A Password<span class="req">*</span>
            </label>
            <input type="password"  name="password" required autocomplete="off"/>
          </div>
          <div class="field-wrap">
            <label>
              Mobile no.<span class="req">*</span>
            </label>
            <input type="text" name="mobile" required autocomplete="off"/>
          </div>
          <div class="field-wrap">
            <label>
              City<span class="req">*</span>
            </label>
            <input type="text"  name="city" required autocomplete="off"/>
          </div>
          <div class="field-wrap">
            <label>
              Zip<span class="req">*</span>
            </label>
            <input type="text" name="zip" required autocomplete="off"/>
          </div>
          
          <button type="submit" class="button button-block">Get Started</button>
          
          </form>

        </div>
        
        <div id="login">   
          <h1>Welcome Back!</h1>
          
          <form action="check" method="post" modelAttribute="bean">
          <div class="field-wrap">
               <label>
              <span class="req"></span>
            </label>
            <select name="user_type"  required autocomplete="off">
           	 <option>Select option</option>
           	 <option>Client</option>
            	
            	<option>Vendor</option>
            	
            </select>
            </div>
            
            <div class="field-wrap">
            <label>
              Email Address/Mobile no.<span class="req">*</span>
            </label>
            <input type="text" name="email"  required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password" name="password" required autocomplete="off"/>
          </div>
          
          <p class="forgot"><a href="#">Forgot Password?</a></p>
          
          <button class="button button-block">Log In</button>
          
          </form>

        </div>
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
 <script  src="<c:url value="/resources/js/script.js"/>"></script>


</body>
</html>