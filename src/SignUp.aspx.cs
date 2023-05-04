using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL.src
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<User> Users = (List<User>)Application["Users"];

            if (IsPostBack)
            {
                string suName = Request.Form["username"];
                string suEmail = Request.Form["email"];
                string suPassword = Request.Form["password"];
                bool userExist = false;

                User newUser = new User(suName,suEmail,suPassword);

                foreach (User user in Users)
                {
                    if (newUser.Username == user.Username && newUser.Email == user.Email) 
                    { 
                        userExist = true;
                        errorUsername.InnerText = "Đã có tài khoản";
                        break;
                    }
                }
                if (!userExist) 
                {
                    Users.Add(newUser);
                    Response.Redirect("SignIn.aspx");
                }
            }

        }
    }
}