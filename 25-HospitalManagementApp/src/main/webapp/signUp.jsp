<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ include file="Components/allCssJs.jsp" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ page isELIgnored="false" %>   
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Components/style.css">

<meta charset="ISO-8859-1">
<title>SignUp</title>
</head>
<body>
<!-- Navbar  -->
 <%@ include file="NavBar.jsp" %>
 <div class="container">
 <div class="row p-5">
 <div  class="col-md-8 offset-md-2">
 
 <div class="card mt-2 paintCard">
  <div class="card-header text-center">Enter valid Details</div>
 <div class="card-body">
<c:if test="${not empty success }">
<p class="text-center text-success">${success}</p>
<c:remove var="success" scope="session"/>
</c:if>

<c:if test="${not empty failure }">
<p class="text-center text-success">${failure}</p>
<c:remove var="failure" scope="session"/>
</c:if>
 <form class="row g-3 needs-validation"  method="post" action="signUpForm">
  <div class="col-md-4">
    <label  class="form-label">Full Name</label>
    <input type="text" class="form-control"   name="fullNameSingUp" required>
    <div class="valid-feedback">
      Looks good!
    </div>
  </div>
  <div class="col-md-4">
    <label for="validationCustom02" class="form-label">Email</label>
    <input type="email" class="form-control"   name="emailSignUp" required>
    <div class="valid-feedback">
      Looks good!
    </div>
  </div>
  <div class="col-md-4">
    <label for="validationCustomUsername" class="form-label">Username</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="inputGroupPrepend">@</span>
      <input type="text" class="form-control"  name="userNameSignUp" required>
      <div class="invalid-feedback">
        Please choose a username.
      </div>
    </div>
  </div>
      <div class="col-md-6">
    <label  class="form-label">Password</label>
    <input type="password" class="form-control"  name="passwordSignUp" required>
    <div class="invalid-feedback">
      Strong Password atleast length be 6 including characters.
    </div>
  </div>
  <div class="col-md-6">
    <label  class="form-label">City</label>
    <input type="text" class="form-control"  name="citySignUp" required>
    <div class="invalid-feedback">
      Please provide a valid city.
    </div>
    </div>

  <div class="col-md-3">
    <label class="form-label">Country</label>
    <select class="form-select" name="selectSignUp" required>
      <option value=" disabled selected style="font-size:20px;">Choose..</option>
  <option value="Afghanistan">Afghanistan</option>
  <option value="Albania">Albania</option>
  <option value="Algeria">Algeria</option>
  <option value="Andorra">Andorra</option>
  <option value="Angola">Angola</option>
  <option value="Argentina">Argentina</option>
  <option value="Armenia">Armenia</option>
  <option value="Australia">Australia</option>
  <option value="Austria">Austria</option>
  <option value="Azerbaijan">Azerbaijan</option>
  <option value="Bahamas">Bahamas</option>
  <option value="Bahrain">Bahrain</option>
  <option value="Bangladesh">Bangladesh</option>
  <option value="Belarus">Belarus</option>
  <option value="Belgium">Belgium</option>
  <option value="Bhutan">Bhutan</option>
  <option value="Bolivia">Bolivia</option>
  <option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
  <option value="Brazil">Brazil</option>
  <option value="Brunei">Brunei</option>
  <option value="Bulgaria">Bulgaria</option>
  <option value="Cambodia">Cambodia</option>
  <option value="Cameroon">Cameroon</option>
  <option value="Canada">Canada</option>
  <option value="Chile">Chile</option>
  <option value="China">China</option>
  <option value="Colombia">Colombia</option>
  <option value="Costa Rica">Costa Rica</option>
  <option value="Croatia">Croatia</option>
  <option value="Cuba">Cuba</option>
  <option value="Cyprus">Cyprus</option>
  <option value="Czech Republic">Czech Republic</option>
  <option value="Denmark">Denmark</option>
  <option value="Dominican Republic">Dominican Republic</option>
  <option value="Ecuador">Ecuador</option>
  <option value="Egypt">Egypt</option>
  <option value="Estonia">Estonia</option>
  <option value="Ethiopia">Ethiopia</option>
  <option value="Finland">Finland</option>
  <option value="France">France</option>
  <option value="Georgia">Georgia</option>
  <option value="Germany">Germany</option>
  <option value="Ghana">Ghana</option>
  <option value="Greece">Greece</option>
  <option value="Guatemala">Guatemala</option>
  <option value="Honduras">Honduras</option>
  <option value="Hungary">Hungary</option>
  <option value="Iceland">Iceland</option>
  <option value="India">India</option>
  <option value="Indonesia">Indonesia</option>
  <option value="Iran">Iran</option>
  <option value="Iraq">Iraq</option>
  <option value="Ireland">Ireland</option>
  <option value="Israel">Israel</option>
  <option value="Italy">Italy</option>
  <option value="Jamaica">Jamaica</option>
  <option value="Japan">Japan</option>
  <option value="Jordan">Jordan</option>
  <option value="Kazakhstan">Kazakhstan</option>
  <option value="Kenya">Kenya</option>
  <option value="Kuwait">Kuwait</option>
  <option value="Latvia">Latvia</option>
  <option value="Lebanon">Lebanon</option>
  <option value="Lithuania">Lithuania</option>
  <option value="Luxembourg">Luxembourg</option>
  <option value="Malaysia">Malaysia</option>
  <option value="Maldives">Maldives</option>
  <option value="Mexico">Mexico</option>
  <option value="Mongolia">Mongolia</option>
  <option value="Morocco">Morocco</option>
  <option value="Nepal">Nepal</option>
  <option value="Netherlands">Netherlands</option>
  <option value="New Zealand">New Zealand</option>
  <option value="Nigeria">Nigeria</option>
  <option value="Norway">Norway</option>
  <option value="Oman">Oman</option>
  <option value="Pakistan">Pakistan</option>
  <option value="Panama">Panama</option>
  <option value="Paraguay">Paraguay</option>
  <option value="Peru">Peru</option>
  <option value="Philippines">Philippines</option>
  <option value="Poland">Poland</option>
  <option value="Portugal">Portugal</option>
  <option value="Qatar">Qatar</option>
  <option value="Romania">Romania</option>
  <option value="Russia">Russia</option>
  <option value="Saudi Arabia">Saudi Arabia</option>
  <option value="Serbia">Serbia</option>
  <option value="Singapore">Singapore</option>
  <option value="Slovakia">Slovakia</option>
  <option value="South Africa">South Africa</option>
  <option value="South Korea">South Korea</option>
  <option value="Spain">Spain</option>
  <option value="Sri Lanka">Sri Lanka</option>
  <option value="Sweden">Sweden</option>
  <option value="Switzerland">Switzerland</option>
  <option value="Thailand">Thailand</option>
  <option value="Turkey">Turkey</option>
  <option value="Ukraine">Ukraine</option>
  <option value="United Arab Emirates">United Arab Emirates</option>
  <option value="United Kingdom">United Kingdom</option>
  <option value="United States">United States</option>
  <option value="Vietnam">Vietnam</option>
  <option value="Yemen">Yemen</option>
  <option value="Zimbabwe">Zimbabwe</option>
    </select>
    <div class="invalid-feedback">
      Please select a valid state.
    </div>
  </div>
  <div class="col-md-3">
    <label class="form-label">Zip</label>
    <input type="text" class="form-control" name="zipSignUp" required>
    <div class="invalid-feedback">
      Please provide a valid zip.
    </div>
  </div>
  <div class="col-12">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value=""  required>
      <label class="form-check-label" for="invalidCheck">
        Agree to terms and conditions
      </label>
      <div class="invalid-feedback">
        You must agree before submitting.
      </div>
    </div>
  </div>
  <div class="d-flex justify-content-center align-items-center">
    <button class="btn  btn-success" style="width:100%; type="submit">Submit form</button>
  </div>
</form>
</div>
</div>
</div>
</div>
</div>

</body>
</html>