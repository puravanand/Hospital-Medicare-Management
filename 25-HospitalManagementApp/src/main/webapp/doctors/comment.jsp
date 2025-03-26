<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
    <%@  include file="../Components/allCssJs.jsp" %>
     
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
<link rel="stylesheet" href="../Components/style.css" />


<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.b-img{
background-image:url("../img/675111.jpg");
background-size:cover;
background-repeat:no-repeat;
width:100%;
height:50vh;
    background-position: center;  /* Centers the image */

}



</style>
<body>
<c:if test="${empty docObj }">
<c:redirect url="../doctorLogin.jsp"></c:redirect>

</c:if>

<%
int id=Integer.parseInt(request.getParameter("id"));

queryForAppointment q=new queryForAppointment(DBconnect.getConn());
AppointmentProperty  ap = q.aptmDetailsFromDatabaseById(id);


%>
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
<div class=" container-fluid b-img">
<!-- background image -->
</div>

<div class="container p-5">
<div class="row">
<div class="col-md-6 offset-md-3">
<div class="card paintCard" >
<div  class="card-body">
<form class="row g-3" method="post" action="../comment">

<div class="col-md-6">
<label>Patient Name</label>
<input type="text" value="<%=ap.getFullName() %>" name="name" readonly class="form-control" >


</div>
<div class="col-md-6">
<label>Age</label>
<input type="text" value="<%=ap.getAge() %>"  name="age"  readonly class="form-control" >


</div>
<div class="col-md-6">
<label>Mob No</label>
<input type="text" value="<%=ap.getPhone() %>" name="mobNo" readonly class="form-control" >


</div>
<div class="col-md-6">
<label>Diseases</label>
<input type="text" value="<%=ap.getDiseases()%>"name="diseases" readonly class="form-control" >


</div>
<input type="hidden" name="id" value="<%=ap.getId() %>">
<input type="hidden" name="did" value="<%=ap.getDoc_Id() %>">

<div class="col-md-12">
<label>Comment</label>
<textarea rows="3" class="form-control" required name="comm" cols=""></textarea>
<br>
<button class="btn mt-2 btn-success col-md-12 text-center fw-bold">Comment</button>

</div>




</form>





</div>







</div>





</div>







</div>












</div>
















</body>
</html>