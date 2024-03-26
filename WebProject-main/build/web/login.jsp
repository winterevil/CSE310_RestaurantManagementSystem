<%-- Document : login Created on : Jan 19, 2024, 3:48:31?PM Author : buitu --%>

    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
            <title>Login Application</title>
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="styles/login.css">

        </head>

        <body>
            <div class="container" id="container">
                <div class="form-container sign-up-container">
                    <form action="SignUp" method="post">
                        <h1>Create Account</h1>
                        <span>use your email for registration</span>
                        <input type="text" placeholder="Name" name="name" required />
                        <input type="email" placeholder="Email" name="emailId" required />
                        <input type="password" placeholder="Password" name="password" required />
                        <input type="text" placeholder="Address" name="address" required>
                        <div class="role-container">
                            <div class="role-question">Are you sign up as a?</div>
                            <div class="radio-cointainer">
                                <div class="radio-option">
                                    <input type="radio" id="manager" name="role" value="isManager" required>
                                    <label for="manager">Manager</label>
                                </div>
                                <div class="radio-option">
                                    <input type="radio" id="staff" name="role" value="isStaff" required>
                                    <label for="staff">Staff</label>
                                </div>
                                <div class="radio-option">
                                    <input type="radio" id="user" name="role" value="isUser" required>
                                    <label for="user">User</label>
                                </div>
                            </div>
                            <div class="notice">
                                *Any account created by an authorized representative or designated agent of the
                                organization will be classed as a baseline access tier until the system administrator
                                evaluates it and assigns appropriate access privileges.
                            </div>
                            <div name = "notice">
                                <p1 style="color: rgb(255, 137, 137); font-weight: bold;">${status_signup}</p1>
                            </div>
                        </div>
                        <button type="submit">Sign Up</button>
                    </form>
                </div>
                <div class="form-container sign-in-container">
                    <form action="Login" method="post">
                        <h1>Sign in</h1>
                        <span>use your account</span>
                        <input type="email" placeholder="Email" name="emailId" required/>
                        <input type="password" placeholder="Password" name="password" required/>
                        <div name="notice"  style="color: rgb(255, 137, 137); font-weight: bold;">${status}</div>
                        <a href="#">Forgot your password?</a>
                        <button type="submit">Sign In</button>
                    </form>
                </div>
                <div class="form-container forgot-password-container" style="display: none;">
                    <form action="ForgotPassword" method="post">
                        <h1>Forgot Password</h1>
                        <span>Enter your email to reset your password</span>
                        <input type="email" placeholder="Email" name="emailId" required />
                        <div name="status">${status}</div>
                        <div class="send_code_container">
                            <input type="number" name="code" id="code" placeholder="Enter verification code">
                            <button class="send_code">Send code</button>
                        </div>
                        <input type="password" name="recoverpassword" id="recover-password" placeholder="Enter your new password" required>
                        <input type="password" name="confirmpassword" id="confirm-password" placeholder="Confirm your new password" required>
                        <button type="submit">Reset Password</button>
                        <button class="back-button" id="backButton">Back</button>
                    </form>
                </div>
                <div class="overlay-container">
                    <div class="overlay">
                        <div class="overlay-panel overlay-left">
                            <h1>Welcome Back, Foodie!</h1>
                            <p>To proceed with delving into our appetizing menu, or to reserve a table, kindly
                                authenticate using your individual details.</p>
                            <button class="ghost" id="signIn">Sign In</button>
                        </div>
                        <div class="overlay-panel overlay-right">
                            <h1>Hello, Culinary Adventurer!</h1>
                            <p>Input your individual information and commence your culinary adventure with us.</p>
                            <button class="ghost" id="signUp">Sign Up</button>
                        </div>
                    </div>
                </div>
            </div>
            <script src="scripts/login.js"></script>
        </body>

        </html>