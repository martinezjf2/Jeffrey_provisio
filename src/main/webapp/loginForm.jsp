<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="modal fade" id="loginModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
            <div class="modal-content">
                <form id="register-form" action="login" method="GET">
            <div class="modal-header">
                <h5 class="modal-title d-flex align-items-center">
                <i class="bi bi-person-circle fs-3 me-2"></i> Login
                </h5>
                <button type="reset" class="btn-close shadow-none" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                	<div class="mb-3">
                        <label class="form-label">Email address</label>
                        <input name="email" type="email" class="form-control shadow-none" required>
                    </div>
                    <div class="mb-4">
                        <label class="form-label">Password</label>
                        <input name="password" type="password" class="form-control shadow-none" required>
                    </div>
                    <div class= "d-flex align-items-center justify-content-between mb-2">
                    	<button type="submit" class="btn btn-dark shadow-none">LOGIN</button>
                    	<a href="http://localhost:8080/Jeffrey_provisio/registerUser.jsp" class="text-secondary text-decoration-none">New User? Register Here</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
 </div>

</body>
</html>