<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include  file="Components/allCssJs.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Components/style.css">

<meta charset="ISO-8859-1">
<title>Doctor Page</title>
</head>
<body>
<%@ include file="NavBar.jsp" %>

<!--  -Doctor Login Page-->

<div class="container">
<div class="row">
<div class="col-md-8 offset-md-2">
<div class="card  paintCard mt-5">
<c:if test="${ not empty success}">
  <p class="text-center text-success">${success}</p>
  <c:remove var="success" scope="session"/>
  </c:if>
  
  <!--  user login error -->
   <c:if test="${ not empty failure}">
  <p class="text-center text-danger">${failure}</p>
  <c:remove var="failure" scope="session"/>
  </c:if>
<div class="card-header text-center">
   Doctor Login
  </div>
  
<div class="card-body">
<form action="doctorLogin" method="post">
  <div class="mb-3">
    <label  class="form-label">Email address</label>
    <input type="email" class="form-control" required name="doctorLoginEmail">
    
  </div>
  <div class="mb-3">
    <label  class="form-label">Password</label>
    <input type="password" class="form-control" required name="doctorLoginPassword">
  </div>
 <div class="d-flex justify-content-center align-items-center">
  <button type="submit" style="width:100%;" class=" bg-success btn btn-success text-white">Login</button>
</div>

</form>

</div>
</div>

</div>

</div>
</div>

















</body>
</html>