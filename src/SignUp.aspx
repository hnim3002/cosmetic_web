<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="BTL.src.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="./CSS/SignUp.css"/>
    <title>Sign Up</title>
</head>
<body>
    <form id="form1" action="./SignUp.aspx" runat="server" method="POST" onsubmit="return validation()">
        <div class="container">
        <div class="login-section">
            <div class="login-form">
                <h2 class="slogan-login">Đăng kí</h2>
                <div class="input-form">
                    <input spellcheck="false" id="username" type="text" name="username"/>
                    <label for="username">Tên đăng nhập</label>
                </div>
                <p id="errorUsername" runat="server"></p>
                <div class="input-form">
                    <input id="email" type="text"  name="email"/>
                    <label for="email">Email</label>
                </div>
                <p id="errorEmail" runat="server"></p>
                <div class="input-form">
                    <input id="password" type="password" />
                    <label for="password">Mật khẩu</label>
                </div>
                <p id="errorPassword" runat="server"></p>

                <div class="input-form">
                    <input id="confirm-password" type="password"  name="password"/>
                    <label for="confirm-password">Nhập lại mật khẩu</label>
                </div>

                <p id="errorConfirmPassword"></p>
                <input class="btn-login" type="submit" value="Đăng kí" />

                <div class="action-account">
                    <a href="#">Quên mật khẩu?</a>
                    <a href="./SignIn.aspx">Đã có tài khoản? Đăng nhập ngay</a>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
<script src="./JS/SignUp.js">
    
</script>
</html>
