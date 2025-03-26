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
   <div class="col-md-8 offset-md-2">
    <!-- table -->
    <div class="card mt-5 paintCard" >
     <div class="card-header text-center fs-3">Details</div>
    <div class="card-body ">
    <div class="table-responsive">
    <table class=" table ">
  <thead>

    <tr>
      <th scope="col">Sr.No</th>
      <th scope="col">Full Name</th>
      <th scope="col">DOB</th>
      <th scope="col">Qualification</th>
      <th scope="col">Specialist</th>
      <th scope="col">Email</th>
      <th scope="col">Mob No</th>
      <th scope="col">Update</th>
       <th scope="col">Remove</th>
      
    </tr>
  </thead>
  <tbody>
   
    
      <%
  queryForDoctors info = new queryForDoctors(DBconnect.getConn());
  List<DoctorProperty> list_doctors = info.allData();
  for(DoctorProperty info_doc:list_doctors){
  %> <tr>
  
      <th scope="row"><%= info_doc.getId() %></th>
      <td><%= info_doc.getFullName() %></td>
      <td><%= info_doc.getDOB() %></td>
      <td><%= info_doc.getQualifications() %></td>
       <td><%= info_doc.getSpecialist() %></td>
      <td><%= info_doc.getEmail() %></td>
      <td><%=info_doc.getMobileNo() %></td>
      <td><a class="btn btn-success" href="updateDoctor.jsp?Id=<%=info_doc.getId()%>">Edit</a></td>
       <td><a class="btn btn-danger text-white" href="../deleteDoctor?Id=<%=info_doc.getId()%>">Delete</a></td>
      
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