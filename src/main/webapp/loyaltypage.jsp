<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


       <!DOCTYPE html>
       <html lang="en">
       <head>
           <title>ND03 Configs</title>
           <link rel="stylesheet" type="text/css" href="/nd033.github.io/style.css">
           <meta charset="utf-8">
           <meta name="description" content="List of all my free & paid configs with download links!"/>
           <meta name="viewport" content="width=device-width, initial-scale=1">
           <meta name="keywords" content="configs, openbullet, blackbullet, openbullet config">
           <meta name="author" content="ND03">
           <link rel="icon" href="https://i.imgur.com/6kjhFWp.png">
           <!-- Global site tag (gtag.js) - Google Analytics -->
       <script src="https://shoppy.gg/api/embed.js"></script> 
       <script async src="https://www.googletagmanager.com/gtag/js?id=UA-160199855-1"></script>
       <script>
         window.dataLayer = window.dataLayer || [];
         function gtag(){dataLayer.push(arguments);}
         gtag('js', new Date());
       
         gtag('config', 'UA-160199855-1');
       </script>

       </head>
       <body>
       
       
 <!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY --> 
 	<jsp:include page="./partials/navbar-two.jsp" />

 	<!--Modal fade for User Login-->
    <jsp:include page="./partials/forms/loginForm.jsp" />

  	<!--Modal fade for User Registration-->
  	 <jsp:include page="./partials/forms/registration.jsp" />
  	 
  	 
       <h1 class="loyalty">Provisio Loyalty Points</h1>

       <div class="line"></div>

       <div class="points mx-5">
           <div class="pointsdesc mx-5">
               <img id="loyaltyPageImage" src="images/cancun.jpg" alt="200pts">

               <p>Room Type:Basic Room</p>
               <p>Price Point: $250 per night</p>
               <p>US Resorts</p>
               <p>Points earned: 200pts</p>

               <a href="#" target="_blank">Get Points</a>
           </div>
           <div class="pointsdesc mx-5">
               <img id="loyaltyPageImage" src="images/london.jpg" alt="500pts">
               <p>Room Type:Luxury Room</p>
               <p>Price Point: $750 per night</p>
               <p>US and Int'l Resort</p>
               <p>Points earned: 500pts</p>
               <a href="#" target="_blank">Get Points</a>
           </div>
               <div class="pointsdesc">
               <img id="loyaltyPageImage" src="images/newyork.jpg" alt="1000 pts">
               <p>Room Type: Suites</p>
               <p>Price Point: $1200 per night</p>
               <p>US and Int'l Resort</p>
               <p>Points earned: 1000pts</p>
               <a href="#" target="_blank">Get Points</a>
           </div>
           
           </div>
           
      <!-- FOOTER INCLUDE  -->
  	<jsp:include page="partials/footer.jsp" />

       </body>
       </html>





