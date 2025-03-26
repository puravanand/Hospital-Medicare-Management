<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@ page import="java.util.*" %>
    
 <%@  include file="../Components/allCssJs.jsp" %>
    <%@ page import="com.Property.*" %>
        <%@ page import="com.dao.*" %>
            <%@ page import="com.conn.*" %>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ page isELIgnored="false" %>
              
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../Components/style.css"/>
<meta charset="ISO-8859-1">
<title>Doctor form</title>
</head>
<body>
<!-- Navbar -->
  <%@ include file="Navbar.jsp" %>
  
  <!-- form and details -->
  
  <div class="container-fluid">
  <div class="row pt-5">
  <!-- form -->
  <div class=" mt-3 d-flex justify-content-center align-items-center">
 <c:if test="${not empty success}">
 <p class="text-center text-success fs-4">${success }</p>
 <c:remove var="success" scope="session"></c:remove>
 </c:if>
 
 <c:if test="${not empty failure}">
 <p class="text-center text-success fs-4">${failure }</p>
 <c:remove var="failure" scope="session"></c:remove>
 </c:if>
  
  </div>
  <div class="col-md-8 offset-md-2">
  <div class="card mt-5 paintCard">
  <div class="card-header text-center fs-3">Doctors</div>
  <div class="card-body">
  <form action="../doctorForm" method="post">
  <div class="mb-3">
    <label class="form-label">Full Name</label>
    <input type="text" required name="fullNameDoctor" class="form-control">
   
  </div>
  <div class="mb-3">
    <label class="form-label">DOB</label>
    <input type="date" required class="form-control" name="dob">
   
  </div>
  
   <div class="mb-3">
    <label class="form-label">Qualification</label>
    <input type="text" required name="qualification" class="form-control">
   
  </div>
  
   <div class="mb-3">
    <label class="form-label">Specialist</label>
    <select class="form-control" required name="select">
    <option>..select..</option>
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
    <input type="email" required name="email" class="form-control">
   
  </div>
  <div class="mb-3">
    <label class="form-label">Mobile No</label>
    <input type="text" required name="telephone" class="form-control">
   
  </div>
   <div class="mb-3">
    <label class="form-label">Password</label>
    <input type="password" required name="password" class="form-control">
   
  </div>
  <div class="col-md-12 d-flex justify-content-center align-items-center">
  <button type="submit" class="btn btn-success w-100">Submit</button></div>
</form>
  
  
  
  
  </div> 
  </div>
  
  
  </div>

    </div>
    
  </div>
</body>
</html>