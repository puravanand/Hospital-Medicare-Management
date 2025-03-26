<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <%@ include file="Components/allCssJs.jsp" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ page isELIgnored="false" %>
  <%@ page import="com.conn.*" %>
  <%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
      <link rel="stylesheet" href="Components/style.css" />

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
 <body class="bg-light bg-opacity-50">
 
 <c:if test="${ not empty userObj}">
      <!--1. Navbar -->
      <%@ include file="NavBar.jsp" %>
<div class="container p-5">
<div class="row">
<div  class="col-md-8 offset-md-2">

<div class="card paintCard">
<p class="text-center mt-2 fs-4 text-secondary">Change Password</p>
<c:if test="${ not empty success}">
  <p class="text-center text-success">${success}</p>
  <c:remove var="success" scope="session"/>
  </c:if>
  
  <!--  user login error -->
   <c:if test="${ not empty failure}">
  <p class="text-center text-danger">${failure}</p>
  <c:remove var="failure" scope="session"/>
  </c:if>
<div class="mt-1 card-body">
<form method="post" action="changePassword">
<label class="fw-bold"> Old Password </label>
<input type="password"class="form-control  mt-2 " name="old" required>


<label class="fw-bold  mt-2"> New Password </label>
<input type="password" class="form-control  mt-2" name="newP" required>
<input type="hidden" value="${userObj.id}" name="id">
<br><button class="btn  mt-2 btn-success w-100 col-md-12">Submit</button>
</form>


</div>







</div>






</div>






</div>





</div>
</c:if>
<c:if test="${empty userObj}">
<c:redirect url="userLogin.jsp"></c:redirect>
</c:if>
</body>
</html>