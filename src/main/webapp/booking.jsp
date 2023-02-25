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
	<jsp:include page="./partials/navbar-two.jsp" />
	
	<!--Modal fade for User Login-->
   <jsp:include page="./partials/forms/loginForm.jsp" />

 	<!--Modal fade for User Registration-->
 	<jsp:include page="./partials/forms/registration.jsp" />
 	

	<!-- FORM GOES HERE FOR A NEW RESERVATION -->



<% if (session.getAttribute("first_name") == null){ 
 		response.sendRedirect("index.jsp");
 	} else { %>


<section class="banner">
        <h2>BOOK YOUR ROOM NOW</h2>
        <div class="card-container" >
            <div class="card-img">
                <!-- image here -->
            </div>
            
            <div class="card-content" style="height: auto; width: auto;">
                <h3>Make Your Reservation</h3>
                <form style="margin: 0; padding: 0; width: 100%; border: none;" method="GET" action="BookingFormServlet">
                
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
                        <input type="text" style="width: 100%" value="${hotel_name}" disabled >
                        <input type="hidden" style="width: 100%" name="hotel_id" value="${hotel_id}" >
                        <input type="hidden" style="width: 100%" name="hotel_name" value="${hotel_name}" >
                        <input type="hidden" style="width: 100%" name="hotel_amenities" value="${hotel_amenities}" >
                        <input type="hidden" style="width: 100%" name="hotel_descrip" value="${hotel_descrip}" >
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
                        <select name="room_type" placeholder="Select Room Type" required>
                            <option value="Double Full Beds">Double Full Beds</option>
                            <option value="Queen">Queen</option>
                            <option value="Double Queen Beds">Double Queen Beds</option>
                            <option value="King">King</option>
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
                            <input type="submit" name="submit" value="RESERVE ROOM" class="center">
                        </div>
                  </form>
               </div>
            </div>
    </section>
<% } %>


<!-- 
Resource: https://www.quora.com/How-can-I-send-data-from-one-JSP-page-to-another-JSP-page 
Use this resource to send data from one jsp to another. when the reserve button gets clicked, 
I want data from the hotel sent to the form as well
 -->





	<!-- FOOTER INCLUDE  -->
 	<jsp:include page="./partials/footer.jsp" />

</body>
</html>