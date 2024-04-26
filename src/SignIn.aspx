<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="BTL.src.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
    <link rel="stylesheet" href="./CSS/SignIn.css" />
</head>
<body>
    <form id="form1" runat="server" action="./SignIn.aspx" method="POST" onsubmit="return validation()">
       <div class="container">
        <div class="login-section">
            <div class="login-form">
                <h2 class="slogan-login">Đăng nhập</h2>
                <div class="input-form">
                    <input spellcheck="false" runat="server" id="username" type="text"  name="username"/>
                    <label for="username">Tên đăng nhập</label>
                </div>
                <p id="errorUsername" runat="server"></p>
              
                <div class="input-form">
                    <input id="password" runat="server" type="password" name="password"/>
                    <label for="password">Mật khẩu</label>
                </div>              
                <p id="errorPassword" runat="server"></p>

                <%--<label for="checkbox">Remember password</label>
                <input type="checkbox" runat="server" id="checkbox" name="checkbox"/>--%>

                <input class="btn-login"  type="submit"  value="Đăng nhập" />

                <div class="action-account">
                    <a href="#">Quên mật khẩu?</a>
                    <a href="./SignUp.aspx">Tạo tài khoản mới</a>
                </div>
            </div>
        </div>
    </div>
    </form>
    <script src="JS/SignIn.js"></script>
</body>
</html>
