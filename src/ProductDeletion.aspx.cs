using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL.src
{
    public partial class ProductDeletion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User user = (User)Session["User"];
            List<User> Users = (List<User>)Application["Users"];
            int index = Users.FindIndex(u => u.Username == user.Username);

            string id = Request.QueryString.Get("id");

            foreach (Product product in Users[index].userCart)
            {
                if (product.Id == int.Parse(id))
                {
                    Users[index].userCart.Remove(product);
                    Response.Redirect("Cart.aspx");
                    break;
                }
            }
        }
    }
}