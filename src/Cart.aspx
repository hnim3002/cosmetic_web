<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="BTL.src.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cart</title>
    <link rel="stylesheet" href="CSS/Cart.css" />
    <link rel="stylesheet" href="CSS/Header.css" />
    <link rel="stylesheet" href="CSS/Footer.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="cart">
        <!-- Header -->
            <header class="header">
                <nav class="navbar">
                    <div class="format-header">
                    <div class="nav-left">
                        <a href="Home.aspx" class="logo-layer"><img src="./Img/icon/logo.png" alt="Logo" class="logo" /></a>
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
                    <div class="table-hnf">
                        <div class="layer-name">Sản phẩm</div>
                        <div class="layer-price">Giá</div>
                        <div class="layer-quantities">Số lượng</div>
                        <div class="layer-money">Tổng tiền</div>
                    </div>
                    <div class="table-body">
                        <asp:ListView ID="cartList" runat="server">
                            <ItemTemplate>
                                <div class="border-outside info-product-cart">
                                    <a class="layer-name" href="SingleProduct.aspx?id=<%# Eval("Id") %>">
                                        <div class="i-layer">
                                            <img src="<%# Eval("Image")%>" class="c-img"/>
                                            <div class="resize name-product"><%# Eval("Name") %></div>
                                        </div>
                                    </a>
                                    <div class="layer-price resize w-100"><%# Eval("Price") %> đ</div>
                                    <div class="layer-quantities resize dis-flex amount">
                                        <a href="ProductIncrease.aspx?id=<%#Eval("Id") %>" class="quantity-width"><div class="btn-change-amount">+</div></a>
                                        <div class="quantity-width amount-value"><%# Eval("Quantity") %></div>
                                        <a href="ProductDecrease.aspx?id=<%#Eval("Id") %>" class="quantity-width"><div class="btn-change-amount">-</div></a>
                                    </div>
                                    <div class="layer-money resize total-price-product"><%# Eval("Total") %> Đ</div>
                                    <a href="ProductDeletion.aspx?id=<%#Eval("Id") %>"><div class="delete">x</div></a>
                                    
                                </div>
                            </ItemTemplate>
                         </asp:ListView>
                    </div>
                    <div class="d-total">
                        <div class="total">Tổng thanh toán</div>
                        <div class="total-price" id="TotalPrices" runat="server">0</div>
                        <div class="payment">Thanh toán</div>
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
    <script src="JS/BurgerMenu.js"></script>
</body>
</html>
