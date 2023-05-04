using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL.src
{
    public partial class AddToCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User user = (User)Session["User"];
            if (user.Username != null)
            {
                List<Product> ProductList = (List<Product>)Application["ProductList"];
                List<User> Users = (List<User>)Application["Users"];
                int index = Users.FindIndex(u => u.Username == user.Username);

                string id = Request.QueryString.Get("id");
                bool checkInCart = false;

                foreach (Product product in Users[index].userCart)
                {
                    if (product.Id == int.Parse(id))
                    {
                        product.Quantity++;
                        checkInCart = true;
                        Response.Redirect("Home.aspx");
                        break;
                    }
                }
                if (!checkInCart)
                {
                    foreach (Product product in ProductList)
                    {
                        if (product.Id == int.Parse(id))
                        {
                            Users[index].userCart.Add(product);
                            break;
                        }
                    }
                    Response.Redirect("Home.aspx");
                }
            }
            else
            {
                Response.Redirect("SignIn.aspx");
                return;
            }
        }
    }
}