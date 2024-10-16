<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&family=Poppins:wght@600&display=swap" rel="stylesheet">
    <title>Employee Management System</title>
    <style>
        body {
            background-color: #f4f7fc; /* Softer background */
            font-family: 'Roboto', sans-serif;
        }

        .navbar {
            margin-bottom: 40px;
        }

        .custom-navbar {
            background-color: #007bff;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .navbar-brand {
            font-family: 'Poppins', sans-serif;
            font-weight: 600;
            color: white;
        }

        .navbar-center-text {
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
            color: white;
            font-family: 'Poppins', sans-serif;
            font-weight: 600;
            font-size: 1.5rem;
        }

        .page-content {
            text-align: center;
            font-family: 'Poppins', sans-serif;
            font-size: 2.5rem;
            font-weight: 700;
            color: #343a40;
            margin-bottom: 40px;
        }

        .options-container {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            padding: 30px;
            margin-top: 40px;
        }

        .btn-login {
            margin-bottom: 15px;
        }

        @media (max-width: 768px) {
            .page-content {
                font-size: 2rem;
            }

            .options-container {
                margin-top: 20px;
            }
        }
    </style>
</head>

<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-light custom-navbar">
        <div class="container-fluid">
        	<a class="navbar-brand"><h1></h1></a>
            <span class="navbar-center-text">EMPLOYEE MANAGEMENT SYSTEM</span>
        </div>
    </nav>

    <!-- Page Content -->
    <div class="container">
        <div class="page-content">
            Welcome to the Employee Management System<br><br>
            <h5>Efficiently manage employee details and access admin functionalities through the portal.</h5>
        </div>

        <!-- Right Column: Login Options -->
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="options-container">
                    <h4 class="text-center mb-4">Login Options</h4>
                    <div class="d-grid gap-2">
                        <button class="btn btn-primary btn-login" data-bs-toggle="modal" data-bs-target="#adminLoginModal">Admin Login</button>
                        <button class="btn btn-secondary btn-login" data-bs-toggle="modal" data-bs-target="#userLoginModal">User Login</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Admin Login Modal -->
    <div class="modal fade" id="adminLoginModal" tabindex="-1" aria-labelledby="adminLoginModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="adminLoginModalLabel">Admin Login</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="${pageContext.request.contextPath}/admin-login" method="post">
                        <div class="mb-3">
                            <label for="adminUsername" class="form-label">Username</label>
                            <input type="text" class="form-control" id="adminUsername" name="username" required>
                        </div>
                        <div class="mb-3">
                            <label for="adminPassword" class="form-label">Password</label>
                            <input type="password" class="form-control" id="adminPassword" name="password" required>
                        </div>
                        <button type="submit" class="btn btn-primary w-100">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- User Login Modal -->
    <div class="modal fade" id="userLoginModal" tabindex="-1" aria-labelledby="userLoginModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="userLoginModalLabel">User Login</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="${pageContext.request.contextPath}/user-login" method="post">
                        <div class="mb-3">
                            <label for="userUsername" class="form-label">Username</label>
                            <input type="text" class="form-control" id="userUsername" name="username" required>
                        </div>
                        <div class="mb-3">
                            <label for="userPassword" class="form-label">Password</label>
                            <input type="password" class="form-control" id="userPassword" name="password" required>
                        </div>
                        <button type="submit" class="btn btn-secondary w-100">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
