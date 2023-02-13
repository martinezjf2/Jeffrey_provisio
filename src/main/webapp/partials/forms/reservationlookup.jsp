<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./styles.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>Provisio Beach and Resorts -Reservation Lookup Page </title>
</head>
<body>
<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY --> 
	<jsp:include page="../navbar-two.jsp" />

	<!--Modal fade for User Login-->
   <jsp:include page="../forms/loginForm.jsp" />

 	<!--Modal fade for User Registration-->
 	 <jsp:include page="../forms/registration.jsp" />



    <section class="search-sec">
        <div class="container">
            
            <form action="#" method="post" novalidate="novalidate">
                <h1> Reservation Lookup</h1>
                <div class="row">
                    <div class="col-lg-12">
                      <div class="row align-items-center">
                            <div class="col-lg-3 col-lg-3 col-sm-12  px-0 ">
                                <input type="date" class="form-control search-slt"  placeholder="Check-in">
                            </div>
                            <div class="col-lg-3 col-lg-3 col-sm-12 px-0  ">
                                <input type="date" class="form-control search-slt"  placeholder="Check-out">
                            </div>
                            <div class="col-lg-3 col-lg-3 col-sm-12 px-0  ">
                                <input type="number" class="form-control search-slt"  placeholder="Reservation Number">
                            </div>
                            <div class="col-lg-3 col-lg-3 col-sm-12 ">
                                <button type="button" class="btn btn-warning btn-lg">SEARCH</button>
                            </div>
                              </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>
    
    
 	<!-- FOOTER INCLUDE  -->
 	<jsp:include page="../footer.jsp" />
 	
    
</body>
</html>