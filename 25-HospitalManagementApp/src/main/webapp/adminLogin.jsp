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
<title>Admin Page</title>
</head>
<body>
<%@ include file="NavBar.jsp" %>

<!-- admin login -->

<div class="container">
<div class="row">
<div class="col-md-8 offset-md-2">
<div class="card  paintCard mt-5">
<div class="card-header text-center">
   Admin Login
  </div>
  <!-- admin logout successfully -->
  <c:if test="${ not empty success}">
  <p class="text-center text-success">${success}</p>
  <c:remove var="success" scope="session"/>
  </c:if>
  <!-- login error -->
   <c:if test="${ not empty failure}">
  <p class="text-center text-success">${failure}</p>
  <c:remove var="failure" scope="session"/>
  </c:if>
<div class="card-body">
<form action="adminLogin" method="post">
  <div class="mb-3">
    <label  class="form-label">Email address</label>
    <input type="email" class="form-control" required name="adminLoginEmail">
    
  </div>
  <div class="mb-3">
    <label  class="form-label">Password</label>
    <input type="password" class="form-control" required name="adminLoginPassword">
  </div>
 <div class="d-flex justify-content-center align-items-center">
  <button type="submit" style="width:100%;" class="  text-white bg-success btn btn-success">Login</button>
</div>

</form>

</div>
</div>

</div>

</div>
</div>





















</body>
</html>