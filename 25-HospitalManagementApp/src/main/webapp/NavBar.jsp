<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>   

<nav class="navbar navbar-expand-lg bg-success bg-opacity-75 myNavbar">
  <div class="container-fluid">
    <a class="navbar-brand text-white" href="index.jsp"><i class="fa-solid fa-plus myIcons"></i> MediCare</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
      <!-- user Not login -->
     <c:if test="${ empty userObj}">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="adminLogin.jsp"><i class="fa-solid fa-user-tie"></i> ADMIN</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="doctorLogin.jsp"><i class="fa-solid fa-stethoscope"></i> DOCTOR</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="appointmentLogin.jsp"> <i class="fa-regular fa-calendar-check"></i> APPOINTMENT</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="userLogin.jsp"><i class="fa-solid fa-right-to-bracket"></i> USER</a>
        </li>
        </c:if>
          <!-- user login -->
        <c:if test="${ not empty userObj }">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="appointmentLogin.jsp"> <i class="fa-regular fa-calendar-check"></i> APPOINTMENT</a>
        </li>
        
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="viewAppointment.jsp"> <i class="fa-regular fa-calendar-check"></i>  VIEW APPOINTMENT</a>
        </li>
        
        <div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
           <i class="fa-solid fa-user text-primary"></i> ${userObj.fullNameSingUp}

  </button>
  <ul class="dropdown-menu dropdown-menu-end">
    <li><a class="dropdown-item" href="ChangePassword.jsp">Change Password</a></li>
    <li><a class="dropdown-item" href="userLogout">Logout</a></li>
  </ul>
</div>
        
       </c:if>
       </ul>
        
       
    </div>
  </div>
</nav>