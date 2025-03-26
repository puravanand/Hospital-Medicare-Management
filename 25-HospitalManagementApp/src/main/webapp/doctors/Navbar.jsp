<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>  

<c:if test="${not empty docObj}">


<nav class="navbar navbar-expand-lg bg-success bg-opacity-75 myNavbar">
  <div class="container-fluid">
    <a class="navbar-brand text-white" href="index.jsp"><i class="fa-solid fa-plus myIcons"></i> MediCare</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp"><i class="fa-solid fa-house-chimney"></i> HOME</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="patient.jsp"><i class="fa-solid fa-stethoscope"></i> PATIENT</a>
        </li>  
        
       
        
       </ul>

 <div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
     <i class="fa-solid fa-user text-primary"></i> ${docObj.fullName}
  </button>
  <ul class="dropdown-menu dropdown-menu-end">
    <li><a class="dropdown-item" href="EditProfile.jsp">Edit Profile</a></li>
    <li><a class="dropdown-item" href="../doctorLogout">Logout</a></li>
  </ul>
</div>
       
    </div>
  </div>
</nav>

</c:if>

<c:if test="${empty docObj }">
<c:redirect url="../doctorLogin.jsp"></c:redirect>


</c:if>