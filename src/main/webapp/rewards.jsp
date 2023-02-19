<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, rewards.*"%>
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
    <title>Provisio Rewards Page </title>
</head>
<body>



<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="./partials/navbar-two.jsp" />
	

<!-- Checking if there is a session, if there isn't, user does not have access to go to the path -->
 	<% if (session.getAttribute("first_name") == null){ 
 		response.sendRedirect("index.jsp");
 	} else { %>



 	<h1>Rewards Page</h1>
 		<% List<RewardsRes> resList = (List<RewardsRes>)request.getAttribute("rewardsResList"); %>
 		
 	<div style="margin: 0 auto; width: 65%; text-align: center;">
 			<table class="table table-hover table-bordered">
 				<thead>
    				<tr>
      					<th scope="col">Name</th>
				      	<th scope="col">Confirmation Code</th>
				      	<th scope="col">Location</th>
				      	<th scope="col">Hotel Name</th>
				      	<th scope="col">Check-in</th>
				      	<th scope="col">Check-out</th>
				      	<th scope="col">Rewards Points</th>
				      	<th scope="col"></th>
    				</tr>
  				</thead>
  				
 		<% for (RewardsRes res : resList) { %>
 				<tbody>
 					<tr class="table-primary">
      					<th scope="row"><%=res.getFirst_name() + " " + res.getLast_name() %></th>
      					<td><%=res.getConfirmation_code() %></td>
      					<td><%=res.getCity() + ", " + res.getInd_state() %></td>
      					<td><%=res.getHotel_name() %></td>
      					<td><%=res.getCheck_in() %></td>
      					<td><%=res.getCheck_out() %></td>
      					<td><%=res.getPoints() %></td>
      					<td>
      						<form action="IndividualResSum" method="GET" style="margin:0 auto;">
 								<input type="hidden" name="reservation_id" value="<%= res.getId() %>" />
 								<input type="hidden" name="check_in" value="<%= res.getCheck_in() %>" />
 								<input type="hidden" name="check_out" value="<%= res.getCheck_out() %>" />
 								<input type="hidden" name="adults" value="<%= res.getAdults() %>" />
 								<input type="hidden" name="children" value="<%= res.getChildren() %>" />
 								<input type="hidden" name="room_type" value="<%= res.getRoom_type() %>" />
 								<input type="hidden" name="confirmation_code" value="<%= res.getConfirmation_code() %>" />
 								<input type="hidden" name="instructions" value="<%= res.getInstructions() %>" />
 								<input type="submit" name="submit" id="btn2" value="View Reservation" />
 							</form> 
      					</td>
    				</tr>
    			</tbody>

 				

 			<% } %>
    		</table>
    	</div>

 	<% } %>
 	
 	
 	<!-- FOOTER INCLUDE  -->
 	<jsp:include page="./partials/footer.jsp" />

</body>
</html>