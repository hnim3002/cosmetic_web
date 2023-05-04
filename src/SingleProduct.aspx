<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SingleProduct.aspx.cs" Inherits="BTL.src.SingleProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product Details</title>
    <link rel="stylesheet" href="CSS/Details.css" />
    <link rel="stylesheet" href="CSS/Header.css" />
    <link rel="stylesheet" href="CSS/Footer.css" />
</head>
<body>
    
    <form id="form1" runat="server">
        <div class="home" id="home">
        <!-- Header -->
            <header class="header">
                <nav class="navbar">
                    <div class="format-header">
                    <div class="nav-left">
                        <a href="#home" class="logo-layer"><img src="./Img/icon/logo.png" alt="Logo" class="logo" /></a>
                        <ul class="navigator">
                            <li class="nav-selector"><a style="text-decoration: none; color: black" href="./Home.aspx">Trang chủ</a></li>
                            <li class="nav-selector appear">
                                <!-- Pop Up Menu -->
                                <p class="clothes">Quần áo</p>
                                <div class="list-product-clothes">
                                    <div>
                                        <h3 class="title-category">Hàng đầu</h3>
                                        <p class="name-category">Tất cả</p>
                                        <p class="name-category">T-shirts</p>
                                        <p class="name-category">Âu phục</p>
                                        <p class="name-category">Cardigan</p>
                                        <p class="name-category">Sweater</p>
                                        <p class="name-category">Jeans</p>
                                        <p class="name-category">Jacket-blazor</p>
                                        <p class="name-category">Khác</p>
                                    </div>
                                    <div>
                                        <h3 class="title-category">Bán chạy</h3>
                                        <p class="name-category">Tất cả</p>
                                        <p class="name-category">Áo khoác gió</p>
                                        <p class="name-category">Cardigan</p>
                                        <p class="name-category">Sweater</p>
                                        <p class="name-category">Jeans</p>
                                        <p class="name-category">Váy</p>
                                        <p class="name-category">Khác</p>
                                    </div>
                                    <div>
                                        <h3 class="title-category">Hàng mới</h3>
                                        <p class="name-category">Tất cả</p>
                                        <p class="name-category">Áo lông</p>
                                        <p class="name-category">Áo Croptop</p>
                                        <p class="name-category">Áo khoác bò</p>
                                        <p class="name-category">Nước hoa</p>
                                        <p class="name-category">Đồ ngủ</p>
                                        <p class="name-category">Váy</p>
                                        <p class="name-category">Quần ngắn</p>
                                        <p class="name-category">Khác</p>
                                    </div>

                                    <div>
                                        <h3 class="title-category">Doanh thu cao</h3>
                                        <p class="name-category">Tất cả</p>
                                        <p class="name-category">Áo lông</p>
                                        <p class="name-category">Hoodie</p>
                                        <p class="name-category">Áo khoác gió</p>
                                        <p class="name-category">Âu phục</p>
                                        <p class="name-category">Đồ ngủ</p>
                                        <p class="name-category">Đầm</p>
                                        <p class="name-category">Quần bò ngắn</p>
                                        <p class="name-category">Khác</p>
                                    </div>
                                </div>
                            </li>
                            <li class="nav-selector">Đồ trang điểm</li>
                            <li class="nav-selector">Về chúng tôi</li>
                        </ul>
                    </div>
                        <!-- Icon bên phải -->
                    <div class="nav-right">
                        <!-- Thanh tìm kiếm -->
                        <div class="nav-search nav-btn">
                            <div class="searcher nav-btn">
                                <input type="text" name="" id="Searcher" class="search-input" placeholder="Search..." />
                                <div id="search-result"></div>
                            </div>
                        </div>
                        <!-- Đăng nhập, đăng ký -->
                        <div class="content-menu">
                            <div class="nav-btn account-user in-menu" id="account-icon">
                                <img src="./Img/icon/user.png" alt="Sign In" class="nav-button" />
                                <div class="popup-user" id="userInfo" runat="server">
                                    <p class="top"><a href="SignIn.aspx">Đăng nhập</a></p>
                                    <p class="bottom"><a href="SignUp.aspx">Đăng Ký</a></p>
                                </div>
                            </div>
                            <!-- Giỏ hàng -->
                            <div class="nav-btn in-menu" id="cart-icon">
                                <a href="Cart.aspx" style="text-decoration:none;">
                                    <img src="./Img/icon/shopping-cart.png" alt="Cart" class="nav-button" />
                                    <span id="CartCounter" class="cart-counter" runat="server">0</span>
                                </a>
                            </div>
                        </div>
                        <div class="nav-btn menu" onclick="toggleMenu()">
                            <img src="./Img/icon/menu-hamburger.jfif" alt="menu" class="nav-button" />
                        </div>
                    </div>
                    </div>
                </nav>
            </header>
        <!-- Body -->
        <main>
            <div class="content">
                <asp:ListView  id="productData" runat="server">
                    <ItemTemplate>
                        <div class="img-layer"><img src="<%# Eval("Image") %>" alt="Img" class="product-img"/></div>
                        <div class="details-layer">
                            <div class="details-title">
                                <h3 class="p-name"><%# Eval("Name") %></h3>
                                <div class="p-describe">
                                    <p><%# Eval("Description") %></p>
                                </div>
                            </div>
                            <div class="details-content">
                                <div class="p-price"><span style="font-size: 20px; text-transform: none; color: black">Giá sản phẩm: </span><%# Eval("Price") %> đ</div>
                                <div class="size quantities-layer">
                                    <span>Kích cỡ:</span> 
                                    <div class="picker">
                                        <div class="pick-box">S</div>
                                        <div class="pick-box">M</div>
                                        <div class="pick-box">L</div>
                                        <div class="pick-box">XL</div>
                                        <div class="pick-box">XXL</div>
                                    </div>
                                </div>
                                <div class="quantities-layer">
                                    <div class="quantities-title">Số lượng:</div>
                                    <div class="picker">
                                        <div class="pick-box" onclick="increase()">+</div>
                                        <div class="pick-box" id="quantities">1</div>
                                        <div class="pick-box" onclick="decrease()">-</div>
                                    </div>
                                </div>
                                <div class="purchase-layer">
                                    <a href="javascript:redirectToCart('back')" class="purchase">Add to Cart</a>
                                    <a href="javascript:redirectToCart('go')" class="purchase">Purchase Now</a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
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
                        <img src="./Img/icon/facebook.png" alt="Facebook" class="social-icon"/>
                        <img src="./Img/icon/instagram.png" alt="Instagram" class="social-icon"/>
                        <img src="./Img/icon/youtube.png" alt="Youtube" class="social-icon"/>
                        <img src="./Img/icon/tik-tok.png" alt="Tiktok" class="social-icon"/>
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
    <script src="JS/Details.js"></script>
    <script src="JS/BurgerMenu.js"></script>
</body>
</html>
