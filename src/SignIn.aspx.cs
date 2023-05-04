using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL.src
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                List<User> Users = (List<User>)Application["Users"];
                string siName = Request.Form["username"];
                string siPassword = Request.Form["password"];
                bool accExist = false;
                errorUsername.InnerText = "";
                errorPassword.InnerText = "";

                foreach (User u in Users)
                {
                    if (u.Username == siName && u.Password == siPassword)
                    {
                        accExist = true;
                        User user = (User)Session["User"];
                        user.Username = u.Username;
                        user.Password = u.Password;
                        user.Email = u.Email;
                        Response.Redirect("Home.aspx");
                        break;
                    }
                    if (u.Username == siName && u.Password != siPassword)
                    {
                        errorPassword.InnerText = "Sai mật khẩu";
                        return;
                    }
                }

                if (!accExist)
                {
                    errorUsername.InnerText = "Tài khoản ko tồn tại";
                }
            }
        }
    }
}