<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include  file="Components/allCssJs.jsp" %>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Components/style.css">

<meta charset="ISO-8859-1">
<title>	User Login Page</title>
</head>

<body>
<%@ include file="NavBar.jsp" %>

<!-- Login form -->

<div class="container">
<div class="row">
<div class="col-md-8 offset-md-2">
<div class="card  paintCard mt-5">
<div class="card-header text-center">
   User Login
  </div>
  <!--  user login out -->
  <c:if test="${ not empty logout}">
  <p class="text-center text-success">${logout}</p>
  <c:remove var="logout" scope="session"/>
  </c:if>
   <c:if test="${ not empty LoginFirst}">
  <p class="text-center text-success">${LoginFirst}</p>
  <c:remove var="LoginFirst" scope="session"/>
  </c:if>
  
  <!--  user login error -->
   <c:if test="${ not empty failure}">
  <p class="text-center text-success">${failure}</p>
  <c:remove var="failure" scope="session"/>
  </c:if>
 

<div class="card-body">
<form action="userLogin" method="post">
  <div class="mb-3">
    <label  class="form-label">Email address</label>
    <input type="email" class="form-control" required name="userLoginEmail">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label  class="form-label">Password</label>
    <input type="password" class="form-control" required name="userLoginPassword">
  </div>
 <div class="d-flex justify-content-center align-items-center">
  <button type="submit" style="width:100%;" class=" bg-success btn btn-success text-white">Login</button>
</div>
<br>
Don't have an account? <a href="signUp.jsp" class="text-decoration-none">create one</a>
</form>

</div>
</div>

</div>

</div>
</div>












</body>
</html>