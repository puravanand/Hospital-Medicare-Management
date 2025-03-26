<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include  file="/Components/allCssJs.jsp" %>
   <%@ page import="com.Property.*" %>
        <%@ page import="com.dao.*" %>
            <%@ page import="com.conn.*" %>
               <%@ page import="java.util.*" %>
                           <%@ page import="javax.servlet.http.*" %>
               
       <%@ page isELIgnored="false" %>     
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Components/style.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.b-img{
background-image:url("img/675111.jpg");
background-size:cover;
background-repeat:no-repeat;
width:100%;
height:50vh;
    background-position: center;  /* Centers the image */

}



</style>
<body>
 <c:if test="${ not empty userObj}">

<!-- navbar -->
<%@ include file="NavBar.jsp" %>
<!-- background  image -->

<div class=" container-fluid b-img">
<!-- background image -->
</div>

<div class="container">
<div class="row">

<div class="col-md-9">
<div class="card mt-5 paintCard">
<div class="card-body">
<div class="table-responsive">
<table class="table">
  <thead>
    <tr>
      <th scope="col">Full Name</th>
      <th scope="col">Gender</th>
      <th scope="col">Age</th>
      <th scope="col">Appoint Date</th>
       <th scope="col">Diseases</th>
      <th scope="col">Doctor Name</th>
      <th scope="col">Status</th>
    </tr>
  </thead>
  <tbody>
  
  
  
 <%    SignUpProperty user = (SignUpProperty) session.getAttribute("userObj");

 queryForAppointment q= new queryForAppointment(DBconnect.getConn());
 queryForDoctors  q2= new queryForDoctors(DBconnect.getConn());
 List<AppointmentProperty> list = q.aptmDetFromDatabase(user.getId());
 
  for(AppointmentProperty data:list){
	 DoctorProperty doc= q2.updateDoctorform(data.getDoc_Id());
  
  %>
    <tr>
      <th scope="row"><%=data.getFullName() %></th>
      <td><%= data.getGender() %></td>
      <td><%=data.getAge()%></td>
      <td><%= data.getAppoint_date() %></td>
      <td><%=data.getDiseases() %></td>
      <td><%= doc.getFullName() %></td>
      <td><% if("pending".equals(data.getStatus())){ %>
    	<a href="#" class="btn btn-sm btn-warning">Pending</a>  
    
    
    <%} else{%> 
    
    <%=data.getStatus() %>
     
      
 
 <%} %>
 
 

  
  
  
  
  </td>
    </tr>
    
    <%
    }%>
   
  </tbody>
</table>
</div>
</div>




</div>









</div>

<div class="col-md-3">

<div class="mt-5 card paintCard">
<img src="img/624157.jpg" width=100%" height="300px" >
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