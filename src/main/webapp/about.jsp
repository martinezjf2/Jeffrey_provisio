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
    <title>Provisio About Page</title>
</head>


<body>
<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="partials/navbar.jsp" />
	
	<!--Modal fade for User Login-->
   <jsp:include page="partials/loginForm.jsp" />

 	<!--Modal fade for User Registration-->
 	<jsp:include page="partials/registration.jsp" />
 	
 	<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="partials/header.jsp"/>
	
	
	
	
	
	
	
	<body>

                        <!-- About Company-->
                        <div class="my-5 px-5">  
                            <h3 class="text-center fw-bold h-font">ABOUT OUR COMPANY</h3>
                            <div class="h-line">
                                   <p class="text-center mt-3 ">
                                    Provisio Hotels Beach and Resort was established in 2022 by a group of software developers
                                    turned land developers. We offer multiple locations throughout the United States. We take pride in accommodating
                                    remote work, extended stays, business, and pleasure for our loyal customers. Our staff is built on Integrity, 
                                    Inclusion, Growth, and most of all a good time with great customer service
                                   </p>
                            </div>
                        </div>
                         
                 
               
                   <div class="container">
                     <div class="row align-items-center"> 
                       <div class="col-lg-6 col-md-5 mb-4 order-lg-1 order-md-1 order-2">  
                           <h3 class="mb-3">Message from our C.E.O.</h3>
                           <p>
                           Welcome to Provisio Beach and Resorts. I'm thrilled to take the time to say thank you
                           for coming and visiting our website and our company. We take pride in creating a relationship with
                           our guests, each and every day. I hope to have the opportunity to meet each and every one of you soon!
                           </p>
                       </div>
                        <div class="col-lg-5 col-md-5 mb-4 order-lg-2 order-md-2 order-1">
                        <img src="images/provisioceo.jpg" class="w-50  rounded ">
                       </div>
                     </div>  
                   </div>

</body>








 	<!-- FOOTER INCLUDE  -->
 	<jsp:include page="partials/footer.jsp" />
	
</body>
</html>