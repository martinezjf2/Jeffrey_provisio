<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Provisio Footer</title>
</head>
<body>

<div class="container-fluid ">    
            <div class="row bg-primary" id="footer">
                <div class="col-lg-6 bg-primary" id="firstDiv">
                    <h3 class="h-font fw-bold fs-3 mb-2 text-white">Provisio Hotel and Resorts</h3>
                    <p class="text-white" style="font-size: 20px">
                       We are a company based on the providing the ultimate experience in luxury to our guests.
                    </p>
                </div>
                <div class="col-lg-3 bg-primary" id="secondDiv">
                    <h5 class="mb-3 text-white h4">Links</h5>
                    <a href="index.jsp" class="d-inline-block mb-2 text-white text-decoration-none ">Home</a><br>
                    <a href="about.jsp" class="d-inline-block mb-2 text-white text-decoration-none ">About</a><br>
                    <a href="hotels" class="d-inline-block mb-2 text-white text-decoration-none ">Hotels</a><br>
                    <% if (session.getAttribute("first_name") == null){ %>
						<a href="registerUser.jsp" class="d-inline-block mb-2 text-white text-decoration-none ">Register</a><br>
					<% } else { %>
			
						 
						 <form action="reservations" method="POST" id="reserveForm">
  							<input type="hidden" name="user_id" value=<%=session.getAttribute("user_id") %> />
  							<!-- <button type="submit" id="btn1" class="btn nav-link">Reservations</button> -->
  							<a class="d-inline-block mb-2 text-white text-decoration-none" style="cursor: pointer;" onclick="document.getElementById('reserveForm').submit()" >Reservations</a>
    					</form>
						 
						 
						 
						 
						 <form action="rewards" method="POST" id="myForm">
						 	<input type="hidden" name="user_id" value="<%=session.getAttribute("user_id") %>" />
  							<a style="cursor: pointer;" class="d-inline-block mb-2 text-white text-decoration-none" onclick="document.getElementById('myForm').submit()">Rewards</a>
						 </form>
						 <br>
					<% } %>
                </div> 
                <div class="col-lg-3 bg-primary" id="thirdDiv">
                <h5 class="mb-3 text-white h4">Follow Us</h5>
                		<a href="contact.jsp" class="d-inline-block mb-3 text-white text-decoration-none ">
                			<i class="bi bi-envelope-fill"></i> Contact Us
                		</a><br>
                		<a href="https://www.facebook.com" class="d-inline-block mb-3 text-white text-decoration-none">
                            <i class="bi bi-facebook me-1"></i> Facebook
                        </a><br>
                        <a href="https://www.linkedin.com/" class="d-inline-block mb-3 text-white text-decoration-none">
                            <i class="bi bi-linkedin me-1"></i> Linkedin
                        </a><br>
                        <a href="locations" class="d-inline-block mb-3 text-white text-decoration-none">
                            <i class="bi bi-geo me-1"></i> Location
                        </a><br>
                         
                </div>
            </div>
         </div>
     

         <!-- Designed by-->

         <h6 class="text-center bg-dark text-white p-3 m-0">Designed and Developed by Team Two</h6>

         <!-- Script-->
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>