var username = document.getElementById("username");
var password = document.getElementById("password");
var email = document.getElementById("email");
var confirmPassword = document.getElementById("confirm-password");
var errorUsername = document.getElementById("errorUsername");
var errorEmail = document.getElementById("errorEmail");
var errorPassword = document.getElementById("errorPassword");
var errorConfirmPassword = document.getElementById("errorConfirmPassword");
''
function validation() {
    const usernameValue = username.value.trim();
    const emailValue = email.value.trim();
    const passwordValue = password.value.trim();
    const confirmPasswordValue = confirmPassword.value.trim();
    const regex = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

    errorEmail.innerText = "";
    errorPassword.innerText = "";
    errorUsername.innerText = "";
    errorConfirmPassword.innerText = "";

    if (usernameValue === "") {
        errorUsername.innerText = "Chưa nhập tài khoản!";
        username.focus();
        return false;
    }

    if (emailValue === "") {
        errorEmail.innerText = "Chưa nhập Email!";
        email.focus();
        return false;
    }

    if (!regex.test(emailValue)) {
        errorEmail.innerText = "Email không hợp lệ!"
        email.focus();
        return false;
    }

    if (passwordValue === "") {
        errorPassword.innerText = "Chưa nhập mật khẩu";
        password.focus();
        return false;
    }

    if (confirmPasswordValue !== passwordValue) {
        errorConfirmPassword.innerText = "Mật khẩu nhập lại chưa đúng!";
        confirmPassword.focus();
        return false;
    }

    if (passwordValue === confirmPasswordValue) {
        errorPassword.innerText = "";
        errorUsername.innerText = "";
        errorEmail.innerText = "";
        errorConfirmPassword.innerText = "";
        return true;
    }
}