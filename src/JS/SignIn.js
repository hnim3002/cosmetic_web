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