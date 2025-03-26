<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include  file="Components/allCssJs.jsp" %>
   <%@ page import="com.Property.*" %>
        <%@ page import="com.dao.*" %>
            <%@ page import="com.conn.*" %>
               <%@ page import="java.util.*" %>
                           <%@ page import="javax.servlet.http.*" %>
               
       <%@ page isELIgnored="false" %>     
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
          <%@ page errorPage="errorpage.jsp" %>    

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Components/style.css">

<meta charset="ISO-8859-1">
<title>Appointement Page</title>
</head>
<style>
.b-img{
background-image:url("img/4433980.jpg");
background-size:cover;
background-repeat:no-repeat;
width:100%;
height:50vh;
    background-position: center;  /* Centers the image */

}



</style>
<body>
<%@ include file="NavBar.jsp" %>
<!-- background  image -->

<div class=" container-fluid b-img">
<!-- background image -->
</div>

<!-- form and image -->
<div class="container">
<div class="row">

 <c:if test="${ not empty success}">
 <div class="d-flex  mt-5 justify-content-center align-items-center ">
  <p class="text-center fs-4 text-success">${success}</p></div>
  <c:remove var="success" scope="session"/>
  </c:if>
  
  <!--  user login error -->
   <c:if test="${ not empty failure}">
  <p class="text-center text-success">${failure}</p>
  <c:remove var="failure" scope="session"/>
  </c:if>
<div class="col-md-6">
<div class="card mt-5 paintCard">
<div class="card-body">
<img  class="img-fluid w-100"alt="" src="img/member2.jpg">
</div>
</div>
</div>
<!--  form -->
<div class="col-md-6">
<div class="card mt-5 paintCard">
<div class="card-body">
<div class="d-flex justify-content-center align-item-center">
<p class="text-center fs-3 text-secondary">User Appointment</p>
</div>

<form class="row g-3" method="post" action="appointment">

<input type="hidden" name="user_Id" value="${userObj.id}">
<div class="col-md-6">
<label >Full Name</label>
<input type="text" required name="name" class="form-control">
</div>
<div class="col-md-6">
<label >Gender</label>
<input type="text" required name="gender" class="form-control">
</div>
<div class="col-md-6">
<label >Age</label>
<input type="number" required name="age" class="form-control">
</div>

<div class="col-md-6">
<label >Appiontment Date</label>
<input type="date" required name="date" class="form-control">
</div>
<div class="col-md-6">
<label >Email </label>
<input type="email" required name="eamil" class="form-control"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$">
</div>
<div class="col-md-6">
<label >Phone Number</label>
<input type="text" required name="number" class="form-control">
</div>
<div class="col-md-6">
<label >Diseases Name</label>
<input type="text" required name="diseases" class="form-control">
</div>
<div class="col-md-6">
<label >Doctor</label>
<select class="form-control" name="select">
<option>..Select..</option>
<%queryForDoctors q=new queryForDoctors(DBconnect.getConn());
List<DoctorProperty> lst = q.allData();
for(DoctorProperty d:lst){
	%>
<option value="<%=d.getId()%>">

<%=d.getFullName() %>(<%=d.getSpecialist()  %>)


</option>


<%
}
%>




</select></div>
<div class="col-md-12">
<label >Full Address</label>
<textarea required name="address" class="form-control" rows="3" cols=""></textarea>
</div>



<c:if test="${ not empty userObj }">
 <button type="submit" class="btn btn-success w-100 col-md-12">Submit</button>
 </form>
 </c:if>
 
 <c:if test="${empty userObj }">
 <%
 HttpSession s = request.getSession();
 s.setAttribute("LoginFirst","Please Login First");
 
 %>
 <button type="submit" class="btn btn-success w-100 col-md-12"><a href="userLogin.jsp" class="text-decoration-none text-white">Submit</a></button>
 
 </c:if>
</div>
</div>
</div>















</div>
</div>
<hr>
<!-- footer -->
 <%@ include file="Footer.jsp" %>
</body>
</html>