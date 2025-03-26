<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@  include file="../Components/allCssJs.jsp" %>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ page isELIgnored="false" %>
        <%@ page import="java.util.*" %>
    
 
    <%@ page import="com.Property.*" %>
        <%@ page import="com.dao.*" %>
            <%@ page import="com.conn.*" %>  
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../Components/style.css" />
      <%@ include file="Navbar.jsp" %>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:if test="${ not empty docObj }">
<div class="container p-5">
<div class="row">

<div class="col-md-4">
<!-- change password code -->

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
<form method="post" action="../editdocPass">
<label class="fw-bold"> Old Password </label>
<input type="password"class="form-control  mt-2 " name="old" required>


<label class="fw-bold  mt-2"> New Password </label>
<input type="password" class="form-control  mt-2" name="newP" required>
<input type="hidden" value="${docObj.id}" name="id">
<br><button class="btn  mt-2 btn-success w-100 col-md-12">Submit</button>

</form>


</div>







</div>

















</div>

<div class="col-md-6 offset-md-2">

 <div class="card  paintCard">
 <p class="text-center mt-2 fs-4 text-secondary">Change Password</p>
<c:if test="${ not empty successE}">
  <p class="text-center text-success">${successE}</p>
  <c:remove var="successE" scope="session"/>
  </c:if>
  
  <!--  user login error -->
   <c:if test="${ not empty failureE}">
  <p class="text-center text-danger">${failueE}</p>
  <c:remove var="failureE" scope="session"/>
  </c:if>
  <div class="card-header text-center fs-3">Edit Profile Doctors</div>
  <div class="card-body">
  <form action="../editDoctorForm" method="post">
  <div class="mb-3">
    <label class="form-label">Full Name</label>
    <input type="text" required name="fullNameDoctor" value="${docObj.fullName}" class="form-control">
   
  </div>
  <div class="mb-3">
    <label class="form-label">DOB</label>
    <input type="date" required class="form-control" value="${docObj.DOB}" name="dob">
   
  </div>
  
   <div class="mb-3">
    <label class="form-label">Qualification</label>
    <input type="text"  required name="qualification" value="${docObj.qualifications}" class="form-control">
   
  </div>
  
   <div class="mb-3">
    <label class="form-label">Specialist</label>
    <select class="form-control"   required name="select">
    <option value="${docObj.specialist}">${docObj.specialist}</option>
    <%
    queryForSpecialist qs=new queryForSpecialist(DBconnect.getConn());
    List<SpecialistProperty> list = qs.representSpecialist();
    for( SpecialistProperty data:list){
   %>
    	
    
    	
    <option><%= data.getSpecFullName() %></option>
    	
    <%
    }
    %>
    
    
    
    
    
    
    
    
    </select>
   
  </div>
   <div class="mb-3">
    <label class="form-label">Email</label>
    <input type="email"  value="${docObj.email}" readonly required name="email" class="form-control">
   
  </div>
  <div class="mb-3">
    <label class="form-label">Mobile No</label>
    <input type="text" value="${docObj.mobileNo}" required name="telephone" class="form-control">
   
  </div>
   <div class="mb-3">
    <input type="hidden" required name="password" class="form-control">
<input type="hidden" value="${docObj.id}" name="id">
   
  </div>
  <div class="col-md-12 d-flex justify-content-center align-items-center">
  <button type="submit" class="btn btn-success w-100">Submit</button></div>
</form>
  
  
  
  
  </div> 
  </div>
  















</div>













</div>


















</div>

































</c:if>
<c:if test="${empty docObj }">
<c:redirect url="doctorLogin.jsp"></c:redirect>
</c:if>

</body>
</html>