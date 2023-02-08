<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="partials/navbar.jsp" />
	
	<!--Modal fade for User Login-->
   <jsp:include page="partials/loginForm.jsp" />

 	<!--Modal fade for User Registration-->
 	<jsp:include page="partials/registration.jsp" />
 	
 	


	<h1>Booking JSP should have a form here</h1>

	<!-- FORM GOES HERE FOR A NEW RESERVATION -->


















	<!-- FOOTER INCLUDE  -->
 	<jsp:include page="partials/footer.jsp" />

</body>
</html>