<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <title>Provisio Contact Us Page </title>
</head>
<body>
<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="./partials/navbar-two.jsp" />
	
	<!--Modal fade for User Login-->
   <jsp:include page="./partials/forms/loginForm.jsp" />

 	<!--Modal fade for User Registration-->
 	<jsp:include page="./partials/forms/registration.jsp" />
 	
 	<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="./partials/header.jsp"/>
 	
 	
 	
 
	





	<div class="my-5 px-4">
    <h2 class="fw-bold h-font text-center"> CONTACT US</h2>
    <div class="h-line bg-dark"></div>
    <p class="text-center mt-3 mb-3  color-white" style=" margin-bottom: 20%; width:70%; text-align-center; margin: 0 auto; font-size: 22px;">
		At Provsio Beach and Resorts we always want to hear how we can better serve our guests.
		Get in contact with us through our many avenues. 
		If there anything that we can do to make your stay better,
		 don't hesitate to ask!   
	</p>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-6 col-md-6 mb-5 px-4">
                <div class="bg-white rounded shadow p-4 ">
                    <iframe class="w-100 rounded mb-4" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28083.146936283563!2d-81.58824960796433!3d28.377184581214436!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88dd7ee634caa5f7%3A0xa71e391fd01cf1a0!2sWalt%20Disney%20World%C2%AE%20Resort!5e0!3m2!1sen!2sus!4v1675958836208!5m2!1sen!2sus" height="320px"></iframe>                   
                    <h5>Address</h5>
                    <a href="https://goo.gl/maps/sKbX8inBBoV2of139" target="_blank" class="d-inline-block text-decoration-none text-dark mb-2">
                        <i class="bi bi-geo-alt"></i> Provisio Beach and Resorts, Orlando, Florida
                    </a>
                    <h5 class="mt-4">Call us</h5>
                    <a href="tel: 3214436963" class="d-inline-block text-decoration-none text-dark mb-2">
                        <i class="bi bi-telephone-fill"></i> 321-443-6963
                    </a>
                    <h5 class="mt-4">Email</h5>
                    <a href="maito:ask.provisio@gmail.com" class="d-inline-block text-decoration-none text-dark">
                        <i class="bi bi-envelope-fill"></i>ask.provisio@gmail.com
                    </a>
                    <h5 class="mt-4">Follow us</h5>
                    <a href="https://twitter.com" class="d-inline-block text-dark fs-5 me-2">
                            <i class="bi bi-twitter me-1"></i>
                     </a>
                    <a href="https://facebook.com" class="d-inline-block text-dark fs-5 me-2">
                            <i class="bi bi-facebook me-1"></i>
                     </a>
                     <a href="https://instagram.com" class="d-inline-block text-dark fs-5 me-2">
                             <i class="bi bi-instagram me-1"></i>
                     </a>
                </div>
            </div>
                <div class="col-6 col-md-6 mb-5 px-4">
                    <div class="bg-white rounded shadow p-4"> 
                     <form id="contact-form">
                        <h4 style="text-align: center">Fill out the form below:</h4>
                        <div class="mt-3">
                            <label class="form-label" style="font-weight: 500;">Name</label>
                            <input type="text" name="user_name" class="form-control shadow-none" required>
                        </div>
                        <div class="mt-3">
                            <label class="form-label" style="font-weight: 500;">Email</label>
                            <input type="email" name="email" class="form-control shadow-none" required>
                        </div>
                        <div class="mt-3">
                            <label class="form-label" style="font-weight: 500;">Subject</label>
                            <input type="text" name="subject" class="form-control shadow-none" required>
                        </div>
                        <div class="mt-3">
                            <label class="form-label" style="font-weight: 500;">Message</label>
                            <textarea class="form-control shadow-none" name="message" rows="5" style="resize: none;" required></textarea>
                        </div>
                        <button type="submit" style="background: #149ddd; border:0; padding: 10px 24px; color: #fff; transition: 0.4s; border-radius: 4px;" id="sendButton" onclick='sendMail()' class="btn-primary mt-3 outline shadow">SEND</button>
                     </form>         
            </div>
        </div>
    </div>
    </div>
 	
 	
 	
 	<!-- Add EmailJS Functionality to send email to my email -->
 	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js"></script>
    <script type="text/javascript">
        (function() {
            // https://dashboard.emailjs.com/admin/account
            emailjs.init('user_RYevFp6mtIxGCcmTimhuP');
        })();
    </script>
    <script type="text/javascript">
    
    function sendMail() {
        document.getElementById('contact-form').addEventListener('submit', function(event) {
            event.preventDefault();
            // This method is provided within documentation: https://www.emailjs.com/docs/sdk/send-form/
            emailjs.sendForm('service_3n8xbix', "contact_form", '#contact-form')
                .then(function() {
                    console.log('SUCCESS!');
                    // Get the button element
                    let success = document.getElementById("sendButton");
                    // Get the contact-form
                    let contactForm = document.getElementById('contact-form');
                    // reset will clear the form
                    contactForm.reset();
                    // Underneath will change the html of the button to ay Successfully Sent if succesful
                    success.innerHTML = "Successfully Sent";
                    // Change the backgroundColor of the button if successful
                    success.style.backgroundColor = "green";
                    // Within 3 seconds, the page will reload
                    setInterval(() => window.location.reload(true), 3000)
                    // If there is an error, it will log "FAILED..., and console log the error"
                }, function(error) {
                    console.log('FAILED...', error);
                });
        });
    }
    
    </script>
 	
 	
 	
 	
 	<!-- FOOTER INCLUDE  -->
 	<jsp:include page="./partials/footer.jsp" />
 	
 	
 	
 	
 	
</body>
</html>