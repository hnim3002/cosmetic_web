<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BTL.src.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link rel="stylesheet" href="CSS/Home.css" />
    <link rel="stylesheet" href="CSS/Header.css" />
    <link rel="stylesheet" href="CSS/Footer.css" />
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://fonts.googleapis.com/css2?family=Urbanist&display=swap" rel="stylesheet" />
   
</head>
<body>
    <form id="form1" runat="server">
        <div class="home" id="home">
            <!-- Header -->
            <header class="header">
                <nav class="navbar">
                    <div class="format-header">
                        <div class="nav-left">
                            <%--<a href="#home" class="logo-layer">
                                <img src="./Img/icon/logo.jpg" alt="Logo" class="logo" />
                            </a>--%>
                            <div class="nav-search ">
                                <div class="searcher nav-btn">
                                    <input type="text" name="" id="Searcher" class="search-input" placeholder="Search..." />
                                    <div id="search-result"></div>
                                </div>
                            </div>

                        </div>

                        <div class="nav-mid">
                            <ul class="navigator">
                                <li class="nav-selector"><a style="text-decoration: none; color: black" href="./Home.aspx">HOME</a></li>
                                <li class="nav-selector appear">
                                    <!-- Pop Up Menu -->
                                    <p class="clothes">SHOP</p>
                                    <div class="list-product-clothes">
                                        <div>
                                            <h3 class="title-category">Shop Pages</h3>
                                            <p class="name-category">Product Detail </p>
                                            <p class="name-category">Product Detail </p>
                                            <p class="name-category">Product Detail </p>
                                            <p class="name-category">Product Detail </p>
                                            <p class="name-category">Product Detail </p>
                                            
                                        </div>
                                        <div>
                                            <h3 class="title-category">Product Pages</h3>
                                            <p class="name-category">Product Detail</p>
                                            <p class="name-category">Product Detail</p>
                                            <p class="name-category">Product Detail</p>
                                            <p class="name-category">Product Detail</p>
                                            <p class="name-category">Product Detail</p>
                                            <p class="name-category">Product Detail</p>
                                            <p class="name-category">Product Detail</p>
                                        </div>
                                        <div>
                                            <h3 class="title-category">Product Types</h3>
                                            <p class="name-category">Product Detail</p>
                                            <p class="name-category">Product Detail</p>
                                            <p class="name-category">Product Detail</p>
                                            <p class="name-category">Product Detail</p>
                                            <p class="name-category">Product Detail</p>
                                            <p class="name-category">Product Detail</p>
                                            <p class="name-category">Product Detail</p>
                                            <p class="name-category">Product Detail</p>
                                            <p class="name-category">Product Detail</p>
                                        </div>

                                        <div>
                                            <h3 class="title-category">Group</h3>
                                            <p class="name-category">Product Detail</p>
                                            <p class="name-category">Product Detail</p>
                                            <p class="name-category">Product Detail</p>
                                            <p class="name-category">Product Detail</p>
                                            <p class="name-category">Product Detail</p>
                                            <p class="name-category">Product Detail</p>
                                            <p class="name-category">Product Detail</p>
                                            <p class="name-category">Product Detail</p>
                                            <p class="name-category">Product Detail</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="nav-selector logo-li"><a href="#home" class="logo-layer">
                                    <img src="./Img/icon/logo.jpg" alt="Logo" class="logo" />
                                </a></li>
                                <li class="nav-selector">BLOCKS</li>
                                <li class="nav-selector">ABOUT</li>
                            </ul>
                        </div>
                        <!-- Icon bên phải -->
                        <div class="nav-right">
                            <!-- Thanh tìm kiếm -->
                            <%--<div class="nav-search nav-btn">
                                <div class="searcher nav-btn">
                                    <input type="text" name="" id="Searcher" class="search-input" placeholder="Search..." />
                                    <div id="search-result"></div>
                                </div>
                            </div>--%>
                            <!-- Đăng nhập, đăng ký -->
                            <div class="content-menu">
                                <div class="nav-btn account-user in-menu" id="account-icon">
                                    <img src="./Img/icon/user.png" alt="Sign In" class="nav-button" />
                                    <div class="popup-user" id="userInfo" runat="server">
                                        <p class="top"><a href="SignIn.aspx">Sign In</a></p>
                                        <p class="bottom"><a href="SignUp.aspx">Sign up</a></p>
                                    </div>
                                </div>
                                <!-- Giỏ hàng -->
                                <div class="nav-btn in-menu" id="cart-icon">
                                    <%-- <a href="Cart.aspx" style="text-decoration:none;">--%>
                                    <div onclick="cartOnClick()">
                                        <img src="./Img/icon/shopping-cart.png" alt="Cart" class="nav-button" />
                                        <span id="CartCounter" class="cart-counter" runat="server">0</span>
                                    </div>
                                </div>
                            </div>
                            <div class="nav-btn menu" onclick="toggleMenu()">
                                <img src="./Img/icon/menu-hamburger.jfif" alt="menu" class="nav-button" />
                            </div>
                        </div>
                    </div>
                    <ul class="sub-navigator disable" id="navBar">
                        <li class="sub-nav-selector"><a style="text-decoration: none; color: black" href="./Home.aspx">HOME</a></li>
                        <li class="sub-nav-selector appear">SHOP

                            
                        </li>
                        <li class="sub-nav-selector">BLOCKS</li>
                        <li class="sub-nav-selector">ABOUT</li>
                    </ul>
                </nav>

            </header>
            <!-- Body -->
            <main>
                <div class="poster">
                    <div class="container">
                        <img src="./Img/slider.png" alt="Poster" class="poster-img" />
                    </div>
                </div>
                <div class="content">

                    <!--Women Field-->
                    <div class="content-part">
                        <div class="content-top">
                            <div class="content-title">
                                <h1 class="content-tag">Our Bestsellers</h1>
                                <p class="sub-content-tag">Looking for something specific? Shop by category to find your perfect piece of jewellery!</p>
                            </div>
                            <div class="content-list">
                                <!--Women Shirts-->
                                <div class="product-row">
                                    <asp:ListView ID="WomenShirts" runat="server">
                                        <ItemTemplate>
                                            <div class="product-item">
                                                <div class="product">
                                                    <a href="SingleProduct.aspx?id=<%#Eval("Id") %>">
                                                        <div class="product-top">
                                                            <img src="<%# Eval("Image")%>" alt="" class="product-image">
                                                        </div>
                                                    </a>
                                                    <div class="product-info">
                                                        <div class="product-left">
                                                            <h3 class="product-name" id="pName"><%# Eval("Name") %></h3>
                                                            <h4 class="product-price" id="pPrice"><%# Eval("Price") %></h4>
                                                        </div>
                                                        <div class="product-right">
                                                            <%--<a href="AddToCart.aspx?id=<%#Eval("Id") %>">--%>
                                                            <div onclick="addToCart('<%#Eval("Id") %>', 1)">
                                                                <img src="./Img/icon/shopping-cart.png" alt="" class="add-to-cart" style="width: 50%" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </ItemTemplate>
                                    </asp:ListView>
                                </div>


                            </div>
                        </div>

                    </div>

                    <div class="banner-section">
                        <div class="banner-img">

                            <img src="./Img/promotional_banner2.jpg" alt="Poster" class="zoom-img" />


                            <div class="banner-content">
                                <h6 class="banner-name">NEW COLLECTION</h6>
                                <h3 class="banner-header">Intensive Glow C+ Serum</h3>
                                <div class="banner-btn">Explore More</div>
                            </div>
                        </div>
                        <div class="banner-img">
                            <img src="./Img/promotional_banner1.jpg" alt="Poster" class="zoom-img" />
                            <div class="banner-content">
                                <h6 class="banner-name">NEW COLLECTION</h6>
                                <h3 class="banner-header">Intensive Glow C+ Serum</h3>
                                <div class="banner-btn">Explore More</div>
                            </div>
                        </div>
                    </div>

                    <div class="sub-banner-section">
                        <div class="sub-banner-content">
                            <img class="sub-banner-img" src="./Img/icon/icon1.png" width="70" height="70" alt="Alternate Text" />
                            <h3 class="sub-banner-header">Free Shipping</h3>
                            <p class="sub-banner-text">Free Shipping for orders over $130</p>
                        </div>
                        <div class="sub-banner-content">
                            <img class="sub-banner-img" src="./Img/icon/icon2.png" width="70" height="70" alt="Alternate Text" />
                            <h3 class="sub-banner-header">Returns</h3>
                            <p class="sub-banner-text">Within 30 days for an exchange.</p>
                        </div>
                        <div class="sub-banner-content">
                            <img class="sub-banner-img" src="./Img/icon/icon3.png" width="70" height="70" alt="Alternate Text" />
                            <h3 class="sub-banner-header">Online Support</h3>
                            <p class="sub-banner-text">24 hours a day, 7 days a week</p>
                        </div>
                        <div class="sub-banner-content">
                            <img class="sub-banner-img" src="./Img/icon/icon4.png" width="70" height="70" alt="Alternate Text" />
                            <h3 class="sub-banner-header">Flexible Payment</h3>
                            <p class="sub-banner-text">Pay with Multiple Credit Cards</p>
                        </div>
                    </div>
                    <div class="product-poster">
                        <img src="Img/hero_slider.jpg" class="f-poster" />
                    </div>
                    <!--Men Field-->
                    <div class="content-part">
                        <div class="content-top reverse-row">
                            <div class="content-title">
                                <h1 class="content-tag">Customer Favorite Beauty Essentials</h1>
                                <p class="sub-content-tag">Made using clean, non-toxic ingredients, our products are designed for everyone.</p>
                            </div>
                            <div class="content-list-column">
                                <div class="content-list-banner">
                                    <img src="./Img/banner-33.jpg" alt="Poster" class="zoom-img" />
                                    <div class="banner-content-column">
                                        <h3 class="banner-header-column">NEW COLLECTION</h3>
                                        <p class="banner-name-column">Intensive Glow C+ Serum</p>
                                        <div class="banner-btn">Explore More</div>
                                    </div>
                                </div>

                                <div class="product-column">
                                    <asp:ListView ID="MenShirts" runat="server">
                                        <ItemTemplate>
                                            <div class="product-item-column">
                                                <div class="product">
                                                    <a href="SingleProduct.aspx?id=<%#Eval("Id") %>">
                                                        <div class="product-top">
                                                            <img src="<%# Eval("Image")%>" alt="" class="product-image">
                                                        </div>
                                                    </a>
                                                    <div class="product-info">
                                                        <div class="product-left">
                                                            <h3 class="product-name" id="pName"><%# Eval("Name") %></h3>
                                                            <h4 class="product-price" id="pPrice"><%# Eval("Price") %></h4>
                                                        </div>
                                                        <div class="product-right">
                                                            <%--<a href="AddToCart.aspx?id=<%#Eval("Id") %>">--%>
                                                            <div onclick="addToCart('<%#Eval("Id") %>', 1)">
                                                                <img src="./Img/icon/shopping-cart.png" alt="" class="add-to-cart" style="width: 50%" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </ItemTemplate>
                                    </asp:ListView>
                                </div>
                                <!-- Men Trousers -->

                            </div>
                        </div>

                    </div>
                    <!--Cosmetics Field-->
                    <div class="content-bottom">
                        <div class="content-title">
                            <h1 class="content-tag">More to Discover</h1>
                            <p class="sub-content-tag">Our bundles were designed to conveniently package your tanning essentials while saving you money.</p>
                        </div>
                    </div>


                    <div class="banner-section">
                        <div class="banner-img">
                            <img src="./Img/footer_banner1.jpg" alt="Poster" class="zoom-img" />
                        </div>
                        <div class="banner-img">
                            <img src="./Img/footer_banner2.jpg" alt="Poster" class="zoom-img" />
                        </div>
                    </div>
                </div>
            </main>
            <!-- Footer -->
            <footer class="footer">
                <div class="footer-top">
                    <div class="footer-body">
                        <h4 class="font-larger">About Us</h4>
                        <div class="footer-body hover-red">Infomation</div>
                        <div class="footer-body hover-red">Store Location</div>
                    </div>
                    <div class="footer-body">
                        <h4 class="font-larger">Help</h4>
                        <div class="footer-body hover-red">FAQ</div>
                        <div class="footer-body hover-red">Return Policy</div>
                        <div class="footer-body hover-red">Privacy Policy</div>
                        <div class="footer-body hover-red">Accessibility</div>
                    </div>
                    <div class="footer-body">
                        <h4 class="font-larger">Account</h4>
                        <div class="footer-body hover-red">Membership</div>
                        <div class="footer-body hover-red">Profile</div>
                        <div class="footer-body hover-red">Coupons</div>
                    </div>
                    <div class="footer-body">
                        <h4 class="font-larger">Social Account</h4>
                        <div class="social-img">
                            <img src="./Img/icon/facebook.png" alt="Facebook" class="social-icon" />
                            <img src="./Img/icon/instagram.png" alt="Instagram" class="social-icon" />
                            <img src="./Img/icon/youtube.png" alt="Youtube" class="social-icon" />
                            <img src="./Img/icon/tik-tok.png" alt="Tiktok" class="social-icon" />
                        </div>
                    </div>
                </div>
                <div class="footer">
                    <div class="footer-bot">
                        <div class="fbot-head">
                            <h3 class="blur-text">Copyright @ Khong ai biet gi ca</h3>
                            <div class="fbot-head-right">
                                <h3 class="blur-text highlight hover-red">Terms of Use</h3>
                                <h3 class="blur-text highlight hover-red">Privacy Policy</h3>
                            </div>
                        </div>
                        <div class="fbot-title">Company Name: NameOfCompany</div>
                        <div class="fbot-title">Enterprise Code: 0123456798</div>
                        <div class="fbot-title">Address: 96 Dinh Cong</div>
                        <div class="fbot-title">For any inquiry, please visit our FAQ page</div>
                        <div class="fbot-title">Working Hours: 6h-22h</div>
                    </div>
                </div>
            </footer>
        </div>
    </form>

    <script src="JS/Home.js"></script>
    <script src="JS/BurgerMenu.js"></script>
</body>
</html>
