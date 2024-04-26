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
                string siName = Request.Form["username"];
                string siPassword = Request.Form["password"];

         

                // Your login logic here

                //if (checkbox.Checked)
                //{
                //    // Create a persistent cookie
                //    HttpCookie cookie = new HttpCookie("LoginCookie");


                //    string encodedUsername = HttpUtility.UrlEncode(siName);
                //    string encodedPassword = HttpUtility.UrlEncode(siName);

                //    cookie["Username"] = encodedUsername;
                //    cookie["Password"] = encodedPassword;
                //    cookie.Expires = DateTime.Now.AddDays(30);
                //    Response.Cookies.Add(cookie);                 
                //}
                //else
                //{
                //    HttpCookie myCookie = new HttpCookie("LoginCookie");
                //    myCookie.Expires = DateTime.MinValue;
                //    Response.Cookies.Add(myCookie);
                //}

                List<User> Users = (List<User>)Application["Users"];
                
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