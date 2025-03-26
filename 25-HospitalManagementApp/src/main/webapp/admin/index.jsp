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
<% 
queryForDoctors d= new queryForDoctors(DBconnect.getConn());

%>
     <%@ include file="Navbar.jsp" %>
      <!-- specialist successfully aDDED -->
      <c:if test="${not empty success }">
      <p class="text-center fs-5 mt-5 text-success">${success}</p>
      <c:remove var="success" scope="session"></c:remove>
      </c:if>
            <!-- specialist NOT aDDED -->
        <c:if test="${not empty failure }">
      <p class="text-center fs-5 text-danger">${failure}</p>
      <c:remove var="failure" scope="session"></c:remove>
      </c:if>
      <div class="container">
      <div class="row p-5">
      <h3 class=" mb-5 text-center text-secondary">Admin Dashboard</h3>
      
      <!-- Doctor card -->
      <div class="col-md-4">
      <div class="card  mb-2 text-center  paintCard adminCards">
                        <div class="card-header text-primary fs-4 text-center"><a href="doctor.jsp" class="text-decoration-none">Add Doctors</a></div>
      
      <div class="card-body">
      <i class="fa-solid fa-stethoscope fa-3x"></i>
      <p class="text-center text-success f-5">Doctor
      <br>total:- <%=d.countDoctors() %></p>
    </div>
      </div>
</div>


<!-- User Card -->

      <div class="col-md-4">
      <div class="card mb-2  paintCard adminCards">
                        <div class="card-header text-primary fs-4 text-center"><a href="../signUp.jsp" class="text-decoration-none">Add Users</a></div>
     
      <div class="card-body text-center">
<i class="fa-solid fa-user-large fa-3x"></i> 
     <p class="text-center text-success f-5">User
      <br>total:- <%=d.countTotalUserSignup() %></p>
    </div>
      </div>
</div>

 <!-- Doctor card -->
   <div class="col-md-4">
      <div class="card mb-2 text-center  paintCard adminCards">
                        <div class="card-header text-primary fs-4 text-center"><a href="../appointmentLogin.jsp" class="text-decoration-none">Add Appointment</a></div>
      
      <div class="card-body ">
<i class="fa-regular fa-calendar-check fa-3x"></i>    
 <p class="text-center text-success f-5">Appointment
      <br>total:- <%= d.countTotalAppointment() %></p>
    </div>
      </div>
</div>

 <!-- Specialist card -->
      <div class="col-md-4">
      
      <div class="card mb-2  text-center paintCard adminCards" data-bs-toggle="modal" data-bs-target="#exampleModal">
            <div class="card-header text-primary fs-4 text-center">Add Specialist</div>
      
      <div class="card-body ">
<i class="fa-solid fa-vials fa-3x"></i>     
 <p class="text-center text-success f-5">Specialist
      <br>total:- <%=d.countTotalSpecialist() %></p>
    </div>
      </div>
</div>


</div>
</div>


<!-- Modal popup for specialist -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Specialist...</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       <form method="post" action="../specAdd">
       
       <div class="form-group">
      <label class="fs-3">Specialist Name</label>
      <input type="text" name="specFullName" required class="form-control mt-3">
       </div>
       <div class="col-md-12 d-flex justify-content-center align-items-center">
       <button class="btn btn-primary mt-5 w-100">Add</button>
       </div>
       
       
       </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

</body>
</html>