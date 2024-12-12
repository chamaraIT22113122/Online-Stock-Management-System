<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>PRIMELANKA_STOCK_MANAGMENT Index</title>
        <!-- Set an icon for the browser -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" type="x-icon" href="img/logo%20icon%20123.png">
        <script src="https://kit.fontawesome.com/1165876da6.js"></script>
        <link rel="stylesheet" href="styles/header.css">
        <link rel="stylesheet" href="styles/footer.css">
    </head>
    <body>
        <!-- Navigation Bar -->
        <div class="hero">
            <nav>
                <!-- Logo -->
                <a href="index.html"><img class="logo" src="img/logo.png" alt="logo"></a>
                <ul class="nav_links">
                    <li><a href="home.jsp">Home</a></li>
                	<li><a href="GetCategories">Categories</a></li>
                    <li><a href="contact.html">Contact</a></li>
                    <li><a href="about_us.html">About Us</a></li>
                    <li><a href="my_orders.html">Orders Details</a></li>
                </ul>
                <!-- User Profile Image -->
                <img class="user_pic" src="img/user%20profile%20icons/user.png" onclick="toggleMenu()" alt="User profile">
                <!-- User Profile Dropdown Menu -->
                <div class="sub-menu-wrap" id="subMenu">
                    <div class="sub-menu">
                        <div class="user-info">
                            <img src="img/user%20profile%20icons/user.png" alt="User profile image">
                            <h3>Chamara Nuwan</h3>
                        </div>
                        <hr>
                        <a href="edit_profile.html" class="sub-menu-link">
                            <img src="img/user%20profile%20icons/profile.png" alt="Profile Icon">
                            <p>Edit Profile</p>
                            <span>&gt;</span>
                        </a>
                        <a href="setting_privacy.html" class="sub-menu-link">
                            <img src="img/user%20profile%20icons/setting.png" alt="Settings Icon">
                            <p>Setting & Privacy</p>
                            <span>&gt;</span>
                        </a>
                        <a href="" target="_blank" class="sub-menu-link">
                            <img src="img/user%20profile%20icons/help.png" alt="Help Icon">
                            <p>Help & Support</p>
                            <span>&gt;</span>
                        </a>
                        <a href="login.html" class="sub-menu-link">
                            <img src="img/user%20profile%20icons/logout.png" alt="Logout Icon">
                            <p>Logout</p>
                        </a>
                    </div>
                </div>
                <!-- Login Button -->
                <a href="login.html"><button class="login_b">LOGIN</button></a>
            </nav>


        <!-- JavaScript -->
        <script src="js/myscript.js"></script>
        <script>
            let subMenu = document.getElementById("subMenu");
            function toggleMenu() {
                subMenu.classList.toggle("open-menu");
            }
        </script>

        <!-- Index Page Content -->
        <br><br><br><br><br><br><br>
        <h1>Index page</h1>
        <br><br><br><br><br><br><br>
        <h1></h1>
        </div>
        <!-- Footer -->
        <footer>
            <div class="container">
                <div class="footer-content">
                    <h3>Contact Us</h3>
                    <p>Email: primelanka@gmail.com</p>
                    <p>Phone: +94 11556 5655</p>
                    <p>Address: No 85, Street 2, Colombo 5</p>
                </div>
                <div class="footer-content">
                    <h3>Quick Links</h3>
                    <ul class="list">
                        <li><a style="color:white;" href="home.html">Home</a></li>
                        <li><a style="color:white;" href="categories.html">Categories</a></li>
                        <li><a style="color:white;" href="contact.html">Contact</a></li>
                        <li><a style="color:white;" href="about_us.html">About Us</a></li>
                    </ul>
                </div>
                <div class="footer-content">
                    <h3>Follow Us</h3>
                    <ul class="social-icons">
                        <li><a href="https://www.facebook.com"><i class="fab fa-facebook"></i></a></li>
                        <li><a href="https://www.twitter.com"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="https://www.instagram.com"><i class="fab fa-instagram"></i></a></li>
                        <li><a href="https://www.linkedin.com"><i class="fab fa-linkedin"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="bottom-bar">
                <p>&copy; PRIMELANKA_STOCK_MANAGMENT. All rights reserved</p>
            </div>
        </footer>
    </body>
</html>