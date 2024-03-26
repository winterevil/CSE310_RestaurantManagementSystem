<%-- Document : login Created on : Jan 19, 2024, 3:48:31?PM Author : buitu --%>

    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
            <title>Login Application</title>
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="styles/login.css">
            <link rel="icon" href="assets/logos/logo-ft.png" />
        </head>

        <body>
            <!-- <video autoplay muted loop id="myVideo">
                <source src="assets/videos/b-roll.mp4" type="video/mp4">
            </video> -->
            <audio id="myAudio" style="display: none;">
                <source src="assets/audios/Welcome.mp3" type="audio/mp3">
            </audio>
            <div class="magic">
                <script type="x-shader/x-vertex" id="vertexshader">

                    attribute float size;
                    attribute vec3 customColor;
                    varying vec3 vColor;
                  
                    void main() {
                  
                      vColor = customColor;
                      vec4 mvPosition = modelViewMatrix * vec4( position, 1.0 );
                      gl_PointSize = size * ( 300.0 / -mvPosition.z );
                      gl_Position = projectionMatrix * mvPosition;
                  
                    }
                  
                  </script>
                <script type="x-shader/x-fragment" id="fragmentshader">

                   uniform vec3 color;
                   uniform sampler2D pointTexture;
                  
                   varying vec3 vColor;
                  
                   void main() {
                  
                     gl_FragColor = vec4( color * vColor, 1.0 );
                     gl_FragColor = gl_FragColor * texture2D( pointTexture, gl_PointCoord );
                  
                   }
                  </script>

                <div id="magic"></div>
                <div class="playground">
                    <div class="bottomPosition">
                        <svg class="logo" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 278.8 278.8">
                            <circle fill="#000205" cx="139.4" cy="139.4" r="139.4" />
                            <g fill="none" stroke="#FFF" stroke-width="6.062" stroke-miterlimit="10">
                                <path d="M214 183.4l-74.6 43.1-75.5-43.6V95.8l75.5-43.5 75.4 43.5v59.8l-11.3 6.5z" />
                                <path
                                    d="M139.4 226.5l-18.8-38.2 18.8 10.8 75.4-43.5M63.9 95.8l75.3 43.6 75.6-43.6M139.2 139.4v59.7" />
                            </g>
                        </svg>
                    </div>
                </div>
            </div>
            <div style="display: block; position: absolute; width: 100vw; height: 100vh;">
                <div id="particles-js"></div>
            </div>
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
                            <div name="notice">
                                <p1 style="color: rgb(255, 137, 137); font-weight: bold;">${status_signup}</p1>
                            </div>
                        </div>
                        <button type="submit">Sign Up</button>
                    </form>
                </div>
                <div class="form-container sign-in-container">
                    <form id="myForm" action="Login" method="post">
                        <h1>Sign in</h1>
                        <span>use your account</span>
                        <input id="email" type="email" placeholder="Email" name="emailId" required />
                        <input id="password" type="password" placeholder="Password" name="password" required />
                        <div name="notice" style="color: rgb(255, 137, 137); font-weight: bold;">${status}</div>
                        <a href="#">Forgot your password?</a>
                        <button type="submit" onclick="playAudio(event)">Sign In</button>
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
                        <input type="password" name="recoverpassword" id="recover-password"
                            placeholder="Enter your new password" required>
                        <input type="password" name="confirmpassword" id="confirm-password"
                            placeholder="Confirm your new password" required>
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
            <script>
                function playAudio(event) {
                    var email = document.getElementById('email').value;
                    var password = document.getElementById('password').value;

                    if (email && password) {
                        event.preventDefault();
                        document.getElementById('myAudio').play();
                    }
                }

                document.getElementById('myAudio').onended = function () {
                    document.getElementById('myForm').submit();
                };
            </script>
            <script src="https://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script>
            <script type="text/javascript">
                particlesJS("particles-js", { "particles": { "number": { "value": 60, "density": { "enable": true, "value_area": 800 } }, "color": { "value": "#ffffff" }, "shape": { "type": "circle", "stroke": { "width": 0, "color": "#000000" }, "polygon": { "nb_sides": 5 }, "image": { "src": "img/github.svg", "width": 100, "height": 100 } }, "opacity": { "value": 0.25, "random": false, "anim": { "enable": false, "speed": 1, "opacity_min": 0.1, "sync": false } }, "size": { "value": 3, "random": true, "anim": { "enable": false, "speed": 40, "size_min": 0.1, "sync": false } }, "line_linked": { "enable": true, "distance": 150, "color": "#ffffff", "opacity": 0.3, "width": 1 }, "move": { "enable": true, "speed": 3, "direction": "none", "random": false, "straight": false, "out_mode": "out", "bounce": false, "attract": { "enable": false, "rotateX": 600, "rotateY": 1200 } } }, "interactivity": { "detect_on": "canvas", "events": { "onhover": { "enable": true, "mode": "repulse" }, "onclick": { "enable": true, "mode": "push" }, "resize": true }, "modes": { "grab": { "distance": 400, "line_linked": { "opacity": 1 } }, "bubble": { "distance": 400, "size": 40, "duration": 2, "opacity": 8, "speed": 3 }, "repulse": { "distance": 200, "duration": 0.4 }, "push": { "particles_nb": 4 }, "remove": { "particles_nb": 2 } } }, "retina_detect": true }); var count_particles, stats, update; stats = new Stats; stats.setMode(0); stats.domElement.style.position = 'absolute'; stats.domElement.style.left = '0px'; stats.domElement.style.top = '0px'; document.body.appendChild(stats.domElement); count_particles = document.querySelector('.js-count-particles'); update = function () { stats.begin(); stats.end(); if (window.pJSDom[0].pJS.particles && window.pJSDom[0].pJS.particles.array) { count_particles.innerText = window.pJSDom[0].pJS.particles.array.length; } requestAnimationFrame(update); }; requestAnimationFrame(update);;
            </script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r128/three.min.js"></script>
        </body>

        </html>