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

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
      <%@ include file="Navbar.jsp" %>
    <% 
queryForDoctors d= new queryForDoctors(DBconnect.getConn());

%>  
      <div class="d-flex fw-bold fs-1  mt-4  justify-content-center align-items-center">
      <p>Doctor's Dashboard</p>
      </div>
<div class="mt-5 container">
<div class="row mt-5">
<div class="col-md-6">
<div class="card text-center mb-4  paintCard">
<div class="card-body">
 <div class="  fs-5 ">
<i class="fa-solid fa-stethoscope fa-3x"></i>
<h3>Doctor</h3>

  <br>total:- <%=d.countDoctors() %></p>
      </div>






</div>
</div>

</div>
<div class="col-md-6">
<div class="card paintCard">
<div class="card-body text-center">
<div class="fs-5">
<i class="fa-regular fa-calendar-check fa-3x"></i>

<h3 class="fs-4">Total Appointment</h3>

 <br>total:- <%=d.countTotalUserSignup() %></p>
</div>
</div>
</div>

</div>

</div>


</div>
</body>
</html>