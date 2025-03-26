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
<title>Insert title here</title>
</head>
<body>
<!-- Navbar -->
  <%@ include file="Navbar.jsp" %>
  
    <div class=" mt-3 d-flex justify-content-center align-items-center">
 <c:if test="${not empty success}">
 <p class="text-center text-success fs-4">${success }</p>
 <c:remove var="success" scope="session"></c:remove>
 </c:if>
 
 <c:if test="${not empty failure}">
 <p class="text-center text-danger fs-4">${failure }</p>
 <c:remove var="failure" scope="session"></c:remove>
 </c:if>
  
  </div>
  
  <div class="container">
  <div class="row">
   <div class="col-md-10 offset-md-1">
    <!-- table -->
    <div class="card mt-5 paintCard" >
     <div class="card-header text-center fs-3">Details</div>
    <div class="card-body ">
    <div class="table-responsive">
    <table class=" table ">
  <thead>

    <tr>
      <th scope="col">Full Name</th>
      <th scope="col">Gender</th>
      <th scope="col">Age</th>
      <th scope="col">Appointment</th>
      <th scope="col">Email</th>
      <th scope="col">Mob No</th>
      <th scope="col">Diseases</th>
       <th scope="col">Doctor Name</th>
             <th scope="col">Address</th>
       
            <th scope="col">Status</th>
      
    </tr>
  </thead>
  <tbody>
   
    
      <%
  queryForAppointment info = new queryForAppointment(DBconnect.getConn());
  queryForDoctors q3=  new queryForDoctors(DBconnect.getConn());
      List<AppointmentProperty> list = info.AllAppointFromDatabase();
  for(AppointmentProperty info_apptment:list){
	 DoctorProperty d1= q3.updateDoctorform(info_apptment.getDoc_Id());
	  
  %> <tr>
  
      <th scope="row"><%= info_apptment.getFullName() %></th>
        <td><%=info_apptment.getGender() %></td>
  
      <td><%=info_apptment.getAge() %></td>
      <td><%= info_apptment.getAppoint_date() %></td>
       <td><%= info_apptment.getEmail() %></td>
      <td><%= info_apptment.getPhone() %></td>
      <td><%=info_apptment.getDiseases() %></td>
      <td><%=d1.getFullName() %></td>
             <td><%=info_apptment.getAddress() %></td>
                  <td><%=info_apptment.getStatus() %></td>
            
      
     
      
    </tr>
      <%} %>
  
  </tbody>
</table>
</div>
</div>
</div>

    </div>
  
  
  
  
  
  
  
  
  </div>
  </div>
</body>
</html>