using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL.src
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User user = (User)Session["User"];
            if (user.Username != null && user.Email != null)
            {
                userInfo.InnerHtml = "<p class=\"top\">" + user.Username + "</p><p class=\"bottom\">" + user.Email + "</p><p class=\"bottom\"><a href=\"SignOut.aspx\">Đăng Xuất</a></p>";
            }
            if (user.Username != null )
            {
                List<User> Users = (List<User>)Application["Users"];
                int index = Users.FindIndex(u => u.Username == user.Username);

                int sum = 0;

                foreach (Product product in Users[index].userCart)
                {
                    product.Total = product.Price * product.Quantity;
                    sum += product.Total;
                }
                cartList.DataSource = Users[index].userCart;
                cartList.DataBind();

                TotalPrices.InnerHtml = $"{sum.ToString()}";
            }
            else
            {
                Response.Redirect("SignIn.aspx");
                return;
            }
        }
    }
}