<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <%@ include file="Components/allCssJs.jsp" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ page isELIgnored="false" %>
  <%@ page import="com.conn.*" %>
  <%@ page import="java.sql.*" %>

    <!DOCTYPE html>
    <html>

    <head>
      <link rel="stylesheet" href="Components/style.css" />
      
      
      <meta charset="ISO-8859-1" />
      <title>Hotel Management Project</title>
    </head>

    <body class="bg-light bg-opacity-50">
      <!--1. Navbar -->
      <%@ include file="NavBar.jsp" %>
      
    
        <section class="pt-1">
          <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" data-bs-interval="2000">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="img/banner4.jpg" class="d-block w-100" alt="..." height="500px" />
                <div class="carousel-caption">
                  <h3 class="text-danger-emphasis">
                    "Testing today, for a safer tomorrow."
                  </h3>
                </div>
              </div>
              <div class="carousel-item">
                <img src="img/banner1.jpg" class="d-block w-100" alt="..." height="500px" />
                <div class="carousel-caption">
                  <h3 class="text-warning-emphasis">"Every heartbeat matters."</h3>
                </div>
              </div>
              <div class="carousel-item">
                <img src="img/banner6.jpg" class="d-block w-100" alt="..." height="500px" />
                <div class="carousel-caption">
                  <h3 class="text-body-emphasis">"Healing with every dose."</h3>
                </div>
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
              data-bs-slide="prev">
              <span class="carousel-control-prev-icon bg-primary bg-opacity-25" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
              data-bs-slide="next">
              <span class="carousel-control-next-icon bg-secondary bg-opacity-25" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
        </section>
         <HR>

        <!-- section3 -->
        <section>
          <div class="container">
          <h3 class="text-center mt-5 text-success">key Features of Our Hospital</h3>
            <div class="row p-3">
              <div class="col-md-8">
                <!-- 4card  -->

                <div class="row">
                  <div class="col-md-6 mt-2">
                    <div class="card shadow-lg rounded  myCards" style="height:16rem;">
                      <div class="card-body">
                        <h4 class="text-center"><i class="fa-solid fa-microchip"></i> Advanced Technology</h4>
                        <p class="text-secondary">AI-powered diagnostics and smart systems for faster, accurate care.
Streamlining healthcare with advanced tech for better outcomes..</p>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6 mt-2  " >
                    <div class="card shadow-lg rounded myCards"style="height:16rem;" >
                      <div class="card-body ">
                        <h4 class="text-center"><i class="fa-solid fa-bed-pulse"></i> Patient Care</h4>
                      <p class="text-secondary">Compassionate care tailored to each patient's needs.
Ensuring comfort, support, and personalized treatment for every patient..</p>  
                     
                      </div>
                    </div>
                  </div>

                  <div class="col-md-6   ">
                    <div class="card mt-2 shadow-lg rounded myCards" style="height:16rem;">
                      <div class="card-body ">
                        <h4 class="text-center"> <i class="fa-solid fa-truck-medical"></i> 24/7 Support</h4>
                         <p class="text-secondary"> Healthcare support with real-time monitoring and immediate response.
"Always available care, ensuring patient well-being around the clock..</p>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-6  mt-2 ">
                    <div class="card shadow-lg rounded myCards" style="height:16rem;">
                      <div class="card-body">
                        <h4 class="text-center"> <i class="fa-solid fa-people-group"></i> Expert Team</h4>
                        <p class="text-secondary">Expert care at your fingertips, anytime, anywhere.
Access top healthcare professionals for timely consultations and treatments..</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              
             <div class=" col-md-4  mt-1 d-flex justify-content-center align-items-center ">
               
                   <div class="card imgCards">
                      <img src="img/doctor.jpg"   height="330px" alt="doctor">
                    
                  </div>
                 
                </div>
             
              
             
            </div>
          </div>
        </section>
        <HR>
        
        
        
        
        <!-- section4 -->
 <section>
 <div class="container">
 <h3 class="text-center mt-4 text-success">Expert Team Members</h3>
 <div class="row p-3">
 
 <div class="col-6  col-sm-6 col-md-3  d-flex justify-content-center align-items-center">
 <!-- Team MEMBER 1-->
 <div class="card myMembers" style="width: 18rem;  height:21rem;">
  <img src="img/member1.jpg" class="card-img-top" alt="...">
  <div class="card-body">
  <h5 class="text-center">Dr.Ashleel Kumar</h5>
    <p style="font-size:14px;" class="card-text text-center">(CEO & CHAIRMAN).</p>
  </div>
</div>
 </div>
 <div class=" col-6  col-sm-6 col-md-3  d-flex justify-content-center align-items-center">
 <!-- Team MEMBER 2 -->
  <div class=" card mt-1 myMembers" style="width: 18rem;  height:21rem;">
  <img src="img/member2.jpg" class="card-img-top" alt="...">
  <div class="card-body">
  <h5 class="text-center">Dr.Phantom Rana</h5>
    <p class="card-text text-center" style="font-size:14px;">(Head of Surgery Department).</p>
  </div>
  </div>
</div>

<div class="col-6  col-sm-6 col-md-3  d-flex justify-content-center align-items-center">
<!-- Team MEMBER 3 -->
  <div class="myMembers  card mt-1" style="width: 18rem;  height:21rem;">
  <img src="img/member3.jpg" class="card-img-top" alt="...">
  <div class="card-body">
  <h5  class="text-center">Dr.Munni Shek</h5>
    <p style="font-size:13px;" class="card-text text-center">(Director of Emergency Medicine).</p>
  </div>
  </div>
</div>

<div class=" col-6  col-sm-6 col-md-3  d-flex justify-content-center align-items-center  ">
<!-- Team MEMBER 4 -->
  <div class="card mt-1 myMembers " style="width: 18rem;  height:21rem;">
  <img src="img/member4.jpg" class="card-img-top" alt="...">
  <div class="card-body">
  <h5 class="text-center">Dr.Johny Sins</h5>
    <p style="font-size:13px;" class="card-text text-center"> (Senior Pediatrician).</p>
  </div>
</div>
 </div>
 
 </div>
 
 
 </div>
 

 </section>
 <HR>
 <!-- footer -->
 <%@ include file="Footer.jsp" %>
 
 
        
        
    </body>

    </html>