<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <title>PRIMELANKA_STOCK_MANAGMENT home </title>
        <!--set an icon to browser-->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" type="x-icon" href="img/logo icon 123.png">
        <script src="https://kit.fontawesome.com/1165876da6.js"></script>
        <link rel="stylesheet" href="styles/header.css">
        <link rel="stylesheet" href="styles/footer.css">
        <link rel="stylesheet" href="styles/categories.css">
       
    </head>
    <body>
        <!------------------------------Navigation Bar-------------------------------->
        <div class="hero">
             <nav>
                <!--logo_txt-->
                <a href="index.html"><img class="logo" src="img/logo.png" alt="logo"></a>
                <ul class="nav_links">
                    <li><a href="home.jsp">Home</a></li>
                    <li><a href="GetCategories">Categories</a></li>
                    <li><a href="contact.html">Contact</a></li>
                    <li><a href="about_us.html">About us</a></li>
                    <li><a href="my_orders.html">Orders details</a></li>
                </ul>
            <!--user image-->
                <img class="user_pic" src="img/user profile icons/user.png" onclick="toggleMenu()">
                <!--User Profile-->
                <div class="sub-menu-wrap" id="subMenu">
                    <div class="sub-menu">
                        <div class="user-info">
                            <img src="img/user profile icons/user.png">
                            <h3>Chamara Nuwan</h3>
                        </div>
                        <hr>
                        <a href="edit_profile.php" class="sub-menu-link">
                            <img src="img/user profile icons/profile.png">
                            <p>Edit Profile</p>
                            <span>></span>
                        </a>
                        <a href="setting_privacy.php" class="sub-menu-link">
                            <img src="img/user profile icons/setting.png">
                            <p>Setting & Privacy</p>
                            <span>></span>
                        </a>
                        <a href="https://www.who.int/campaigns/world-blood-donor-day/2018/who-can-give-blood" target="_blank" class="sub-menu-link">
                            <img src="img/user profile icons/help.png">
                            <p>Help & Support</p>
                            <span>></span>
                        </a>
                        <a href="login.html" class="sub-menu-link">
                            <img src="img/user profile icons/logout.png">
                            <p>Logout</p>
                        </a>
                    </div>
                </div>
                <!--Login Button-->
                <a href="login.html"><button class="login_b">LOGIN</button> </a>
            </nav>
            
    <!--js link-->        
        <script src="js/myscript.js"></script>   
        <script>
        let subMenu = document.getElementById("subMenu");
                function toggleMenu(){
                    subMenu.classList.toggle("open-menu");
                }  
        </script>
  <!------------------------------Navigation Bar end-------------------------------->
<br><br><br><br>

<h2>Category List</h2>
<br><br>
<div style="padding-left:50px">
    <table style="border:1px solid; border-collapse: collapse;">
        <thead>
            <tr>
                <th style="border:1px solid;padding:8px">ID</th>
                <th style="border:1px solid;padding:8px">Name</th>
                <th style="border:1px solid;padding:8px">Price</th>
                <th style="border:1px solid;padding:8px">Quantity</th>
                <th style="border:1px solid;padding:8px">Actions</th>
            </tr>
        </thead>
        <tbody>
        <c:choose>
  		 <c:when test="${not empty categories}">
       		 <c:forEach var="category" items="${categories}">
			    <tr>
			        <td style="border:1px solid;padding:8px"><c:out value="${category.categoryID}"/></td>
			        <td style="border:1px solid;padding:8px"><c:out value="${category.name}"/></td>
			        <td style="border:1px solid;padding:8px"><c:out value="${category.price}"/></td>
			        <td style="border:1px solid;padding:8px"><c:out value="${category.qty}"/></td>
			        <td style="border:1px solid;padding:8px">
			            <a href="UpdateCategory?categoryId=${category.categoryID}" style="padding-right:20px">Edit</a>
			            <a href="DeleteCategory?categoryId=${category.categoryID}" onclick="return confirm('Are you sure you want to delete this category?');">Delete</a>
			        </td>
			    </tr>
			</c:forEach>

    		</c:when>
   			 <c:otherwise>
        		<tr><td colspan="5">No categories available.</td></tr>
   			 </c:otherwise>
			</c:choose>
        </tbody>
    </table>
</div>

<br><br><br><br>

<h2>Add Category</h2>

<form method="post" action="AddCategoryServlet">
    
    <div>
        <label for="name">Category Name:</label>
        <input type="text" id="categoryName" name="Name" placeholder="Enter Category Name" required>
    </div>
    <div>
        <label for="price">Price</label>
        <input type="text" id="categoryId" name="Price" placeholder="Enter Category Price" required>
    </div>
    <div>
        <label for="qty">Quantity:</label>
        <input type="number" id="quantity" name="Qty" placeholder="Enter Quantity" required>
    </div>
    <div>
        <button type="submit" value="Add Category">Add</button>
    </div>
</form>














</div>
    </body>
     <!------------------------------Footer-------------------------------->
    <footer>
        <div class="container">
            <div class="footer-content">
                <h3>Contact Us</h3>
                <p>Email:primelanka@gmail.com</p>
                <p>Phone:+94 11556 5655</p>
                <p>Address:No 85,Street 2,Colombo 5</p>
            </div>
            <div class="footer-content">
                <h3>Quick Links</h3>
                 <ul class="list">
                    <li><a style="color:white;" href="">Home</a></li>
                    <li><a style="color:white;"href="">Categories</a></li>
                    <li><a style="color:white;"href="">Contact</a></li>
                    <li><a style="color:white;"href="">About Us</a></li>
                 </ul>
            </div>
            <div class="footer-content">
                <h3>Follow Us</h3>
                <ul class="social-icons">
                 <li><a  href=""><i class="fab fa-facebook"></i></a></li>
                 <li><a href=""><i class="fab fa-twitter"></i></a></li>
                 <li><a href=""><i class="fab fa-instagram"></i></a></li>
                 <li><a href=""><i class="fab fa-linkedin"></i></a></li>
                </ul>
                </div>
        </div>
        <div class="bottom-bar">
            <p>&copy; PRIMELANKA_STOCK_MANAGMENT . All rights reserved</p>
        </div>
    </footer>
    <!------------------------------Footer end-------------------------------->
</html>