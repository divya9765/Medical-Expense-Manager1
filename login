<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login & Sign Up</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f4f4f4;
        }
        .container {
            width: 300px;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            width: 100%;
            padding: 10px;
            background: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background: #218838;
        }
        .switch {
            margin-top: 10px;
            color: blue;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container" id="login-container">
        <h2>Login</h2>
        <input type="email" placeholder="Email" id="login-email" required>
        <input type="password" placeholder="Password" id="login-password" required>
        <button onclick="login()">Login</button>
        <p class="switch" onclick="toggleForm()">Don't have an account? Sign up</p>
    </div>

    <div class="container" id="signup-container" style="display: none;">
        <h2>Sign Up</h2>
        <input type="text" placeholder="Name" id="signup-name" required>
        <input type="email" placeholder="Email" id="signup-email" required>
        <input type="password" placeholder="Password" id="signup-password" required>
        <button onclick="signup()">Sign Up</button>
        <p class="switch" onclick="toggleForm()">Already have an account? Login</p>
    </div>

    <script>
        function toggleForm() {
            let loginForm = document.getElementById("login-container");
            let signupForm = document.getElementById("signup-container");
            if (loginForm.style.display === "none") {
                loginForm.style.display = "block";
                signupForm.style.display = "none";
            } else {
                loginForm.style.display = "none";
                signupForm.style.display = "block";
            }
        }

        function login() {
            let email = document.getElementById("login-email").value;
            let password = document.getElementById("login-password").value;
            alert("Login clicked for: " + email);
        }

        function signup() {
            let name = document.getElementById("signup-name").value;
            let email = document.getElementById("signup-email").value;
            let password = document.getElementById("signup-password").value;
            alert("Sign Up clicked for: " + name);
        }
    </script>
</body>
</html>
