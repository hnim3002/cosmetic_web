var username = document.getElementById("username");
var password = document.getElementById("password");
var errorUsername = document.getElementById("errorUsername");
var errorPassword = document.getElementById("errorPassword");

function validation() {

    const usernameValue = username.value.trim();
    const passwordValue = password.value.trim();

    errorUsername.innerText = "";
    errorPassword.innerText = "";

    if (usernameValue === "") {
        errorUsername.innerText = "Chưa nhập tài khoản";
        username.focus();
        return false;
    }
    if (passwordValue === "") {
        errorPassword.innerText = "Chưa nhập mật khẩu";
        password.focus();
        return false;
    }

    if (usernameValue !== "" && passwordValue !== "") {
        errorPassword.innerText = "";
        errorUsername.innerText = "";
        return true;
    }
}

function btnLogin_Click() {
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    console.log(password);

    // Your login logic here

    if (document.getElementById("checkbox").checked) {
        // Create a persistent cookie
        var cookie = "LoginCookie=";
        cookie += "Username=" + encodeURIComponent(username) + ";";
        cookie += "Password=" + encodeURIComponent(password) + ";";

        var expirationDate = new Date();
        expirationDate.setDate(expirationDate.getDate() + 30); // Cookie expires in 30 days
        cookie += "expires=" + expirationDate.toUTCString() + ";";

        document.cookie = cookie;
    }
}

function getCookie(cookieName) {
    var name = cookieName + "=";
    var decodedCookie = decodeURIComponent(document.cookie);
    var cookieArray = decodedCookie.split(';');
    for (var i = 0; i < cookieArray.length; i++) {
        var cookie = cookieArray[i].trim();
        if (cookie.indexOf(name) == 0) {
            return cookie.substring(name.length, cookie.length);
        }
    }
    return "";
}

function getCookie(name) {
    const cookies = document.cookie.split(';');
    for (let i = 0; i < cookies.length; i++) {
        const cookie = cookies[i].trim();
        // Check if this is the cookie we're looking for
        if (cookie.startsWith(name + '=')) {
            return decodeURIComponent(cookie.substring(name.length + 1));
        }
    }
    // Return null if the cookie is not found
    return null;
}

document.addEventListener("DOMContentLoaded", function () {
    var passwordInput = document.getElementById('password');
    var usernameInput = document.getElementById('username');
    var check = document.getElementById('checkbox');
    const loginCookieValue = getCookie('LoginCookie');
    let userName = '';
    let passWord = '';
    if (loginCookieValue !== null) {
        // Parse the cookie value to extract username and password
        const parts = loginCookieValue.split('&');
        
        for (let i = 0; i < parts.length; i++) {
            const keyValue = parts[i].split('=');
            if (keyValue.length === 2) {
                if (keyValue[0] === 'Username') {
                    userName = decodeURIComponent(keyValue[1]);
                } else if (keyValue[0] === 'Password') {
                    passWord = decodeURIComponent(keyValue[1]);
                }
            }
        }
        if (passWord == "") {
            checkbox.checked = false
        } else {
            checkbox.checked = true
        }

        passwordInput.value = passWord;
        usernameInput.value = userName;

    } else {
        console.log('LoginCookie not found.');
    }

    

});

