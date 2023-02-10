<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <link rel="stylesheet" type="text/css" href="./booking.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<title>Provisio Booking Page</title>
</head>
<body>

	<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="partials/navbar.jsp" />
	
	<!--Modal fade for User Login-->
   <jsp:include page="partials/loginForm.jsp" />

 	<!--Modal fade for User Registration-->
 	<jsp:include page="partials/registration.jsp" />
 	

	<!-- FORM GOES HERE FOR A NEW RESERVATION -->

<!-- <div style="width: 80%; margin: 0 auto">

<form action="/action_page.php">

<div class="mb-3 mt-3">
<label for="email" class="form-label">Email:</label>
<input type="text" class="form-control" placeholder="User Name" name="" readonly>
</div>
  
<div class="mb-3 mt-3">
<label for="email" class="form-label">Email:</label>
<input type="text" class="form-control" placeholder="User Email" name="" readonly>
</div>
  
<div class="mb-3 mt-3">
<label for="email" class="form-label">Email:</label>
<input type="text" class="form-control" placeholder="Hotel Selected" name="" readonly>
</div>
  
<div class="mb-3 mt-3">
<label for="email" class="form-label">Email:</label>
<input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
</div>

<div class="row">
    <div class="col">
    <label for="email" class="form-label">Adults:</label>
      <input type="text" class="form-control" placeholder="Enter email" name="email">
    </div>
    <div class="col">
    <label for="email" class="form-label">Email:</label>
      <input type="password" class="form-control" placeholder="Enter password" name="pswd">
    </div>
  </div>

<div class="mb-3 mt-3">
<label for="email" class="form-label">Email:</label>
<input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
</div>
  
  
<div class="mb-3">
<label for="pwd" class="form-label">Password:</label>
<input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd">
</div> 
  
  
<div class="mb-3">
<label for="comment">Comments:</label>
<textarea class="form-control" rows="5" id="comment" name="text"></textarea>
</div>
  
  
<div class="form-check mb-3">
<label class="form-check-label">
<input class="form-check-input" type="checkbox" name="remember"> Remember me
</label>
</div>
  
<button type="submit" class="btn btn-primary">Submit</button>
</form>

</div>

-->



<section class="banner">
        <h2>BOOK YOUR ROOM NOW</h2>
        <div class="card-container" >
            <div class="card-img">
                <!-- image here -->
            </div>
            
            <div class="card-content" style="height: auto; width: auto;">
                <h3>Make Your Reservation</h3>
                <form style="margin: 0; padding: 0; width: 100%; border: none;" method="POST" action="BookingFormServlet">
                
                 <div class="form-row">
                 <% 
                 String first = (String)session.getAttribute("first_name");
                 String last = (String)session.getAttribute("last_name"); 
                 String email = (String)session.getAttribute("email"); 
                 %>
                 
                 		<input type="hidden" style="width: 100%" name="user_id" value="<%= session.getAttribute("user_id") %>" >
                        <input type="text" style="width: 50%" name="user_first" disabled value="<%= session.getAttribute("first_name") %>" >
                        <input type="text" style="width: 50%" name="user_last"  disabled placeholder=<%= last %> >
                        
                    </div>
                    
                     <div class="form-row">
                        <input type="text" style="width: 100%" name="user_email" placeholder=<%= email %> disabled>
                        <input type="text" style="width: 100%" value="<%= request.getParameter("hotel_name") %>" disabled >
                        <input type="hidden" style="width: 100%" name="hotel_id" value="<%= request.getParameter("hotel_id") %>" >
                        <input type="hidden" style="width: 100%" name="hotel_name" value="<%= request.getParameter("hotel_name") %>" >
                        <input type="hidden" style="width: 100%" name="hotel_amenities" value="<%= request.getParameter("hotel_amenities") %>" >
                        <input type="hidden" style="width: 100%" name="hotel_descrip" value="<%= request.getParameter("hotel_descrip") %>" >
                    </div>
                    
                    
                    
                    <div class="form-row">
                        <input type="text" style="width: 50%" placeholder="Check-in" readonly>
                        <input type="date" style="width: 50%" name="check_in" placeholder="Check-in"required>
                    </div>
                    <div class="form-row">
                        <input type="text" style="width: 50%" placeholder="Check-out" readonly>
                        <input type="date" style="width: 50%" name="check_out" placeholder="Check-out" required>
                    </div>
                    <div class="form-row">
						<input type="text" style="width: 50%" placeholder="Room Type" readonly>
                        <select name="room_type" required>
                            <option value="room-type">Select One</option>
                            <option value="Deluxe">Deluxe</option>
                            <option value="Standard">Standard</option>
                            <option value="1 Bedroom">1 Bedroom</option>
                            <option value="2 Bedroom">2 Bedroom</option>
                            <option value="3 Bedroom">3 Bedroom</option>
                            <option value="Suite">Suite</option>
                        </select>
                          </div>
                          
                        <div class="form-row">
                        <input type="number" style="width: 50%" name="adults" placeholder="Adults?" required>
                      	 <input type="number" style="width: 50%" name="children" placeholder="Children?"required>
                        </div>
                          
                          <!-- Textarea 4 rows height -->
                        <div class="form-row">
                            <textarea class="form-control" id="instructions" name="instructions" rows="10" placeholder="List Special Instruction Here"></textarea>
                        </div>
                        
                        <div class="form-row">
                            <input type="submit"  value="RESERVE ROOM" class="center">
                        </div>
                  </form>
               </div>
            </div>
    </section>





<!-- 
Resource: https://www.quora.com/How-can-I-send-data-from-one-JSP-page-to-another-JSP-page 
Use this resource to send data from one jsp to another. when the reserve button gets clicked, 
I want data from the hotel sent to the form as well
 -->





	<!-- FOOTER INCLUDE  -->
 	<jsp:include page="partials/footer.jsp" />

</body>
</html>