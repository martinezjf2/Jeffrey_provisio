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
    <title>Provisio Registration Modal Page </title>
    </head>
<body>
	<div class="modal fade" id="registerModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
            <div class="modal-content">
            <form action="register" method="POST">
            <div class="modal-header">
                <h5 class="modal-title d-flex align-items-center">
                <i class="bi bi-person-lines-fill fs-3 me-2"></i> User Registration
                </h5>
                <button type="reset" class="btn-close shadow-none" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <span class="badge rounded-pill bg-light text-dark mb-3 text-wrap lh-base">
                   Note: Details must match with your form of I.D.
                </span>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6 ps-0 mb-3">
                            <label class="form-label">First Name</label>
                            <input type="text" class="form-control shadow-none" name="firstName" required>
                        </div>
                        <div class="col-md-6 p-0 mb-3">
                            <label class="form-label">Last Name</label>
                            <input type="text" class="form-control shadow-none" name="lastName" required>
                        </div>
                        <div class="col-md-6 ps-0 mb-3">
                            <label class="form-label">Email</label>
                            <input type="email" class="form-control shadow-none" name="email" required>
                        </div>
                  
                        <div class="col-md-6 ps-0 mb-3">
                            <label class="form-label">Password</label>
                            <input type="password" class="form-control shadow-none" name="password" required>
                        </div>
                    </div>
                </div>
                <div class="text-center my-1">
                    <button type="submit" name="submit" class="btn btn-dark shadow-none">REGISTER</button>
                </div>
            </div>
            </form>
        </div>
    </div>
 </div>
</body>
</html>