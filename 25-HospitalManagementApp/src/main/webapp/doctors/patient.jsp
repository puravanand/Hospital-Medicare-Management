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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../Components/style.css" />

</head>
<body>
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
      <th scope="col">Full Name</th>
      <th scope="col">Gender</th>
      <th scope="col">Age</th>
      <th scope="col">Appoint Date</th>
            <th scope="col">Email</th>
                  <th scope="col">Mob No</th>
            
      
      
       <th scope="col">Diseases</th>
    
      <th scope="col">Status</th>
      <th>Action</th>
      
      
    </tr>
  </thead>
  <tbody>
  <%
    DoctorProperty  d=(DoctorProperty)session.getAttribute("docObj");
  queryForAppointment  q= new queryForAppointment (DBconnect.getConn());
  List<AppointmentProperty> lst= q.aptmDoctFromDatabase(d.getId());
  for(AppointmentProperty data:lst){%>
	  
 
  
  <tr>
  <th scope="row"><%=data.getFullName() %></th>
  <td><%=data.getGender() %></td>
  <td><%=data.getAge() %></td>
  <td><%=data.getAppoint_date() %></td>
  <td><%=data.getEmail()%></td>
  <td><%=data.getPhone() %></td>
  <td><%=data.getDiseases() %></td>
    <td><%=data.getStatus() %></td>
      <td>
      <% if("pending".equals(data.getStatus())){ %>
    	 
          <a href="comment.jsp?id=<%=data.getId() %>" class="btn btn-success btn-sm">Comment</a>

    	  
    	  
     <%  }else{%>
    	    <a href="comment.jsp?id=<%=data.getId() %>" class="btn btn-success btn-sm disabled">Comment</a>
    <%  }
      
      
      
      %>
      
    
      
      
      
      
      
      
      
      
      </td>
    
  
  
  
  
  
  
  
  
  
  
  
  
  
  </tr><% 
   }
  %>
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