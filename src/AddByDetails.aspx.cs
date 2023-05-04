using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL.src
{
    public partial class AddByDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User user = (User)Session["User"];
            if (user.Username != null)
            {
                List<User> Users = (List<User>)Application["Users"];
                int index = Users.FindIndex(u => u.Username == user.Username);
                List<Product> ProductList = (List<Product>)Application["ProductList"];

                string id = Request.QueryString.Get("id");
                string quantities = Request.QueryString.Get("quantities");
                string type = Request.QueryString.Get("type");

                bool checkInCart = false;

                foreach (Product product in Users[index].userCart)
                {
                    if (product.Id == int.Parse(id))
                    {
                        product.Quantity += int.Parse(quantities);
                        checkInCart = true;
                        break;
                    }
                }
                if (!checkInCart)
                {
                    foreach (Product product in ProductList)
                    {
                        if (product.Id == int.Parse(id))
                        {
                            Product p = new Product();
                            p = product;
                            p.Quantity = int.Parse(quantities);
                            Users[index].userCart.Add(p);
                            break;
                        }
                    }
                }
                if (type == "back")
                {
                    Response.Redirect("SingleProduct.aspx?id=" + id);
                }
                else
                {
                    Response.Redirect("Cart.aspx");
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