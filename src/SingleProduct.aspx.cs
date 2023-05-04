using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL.src
{
    public partial class SingleProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User user = (User)Session["User"];
            List<User> Users = (List<User>)Application["Users"];
            int index = -1;
            if (user.Username != null && user.Email != null)
            {
                index = Users.FindIndex(u => u.Username == user.Username);
                userInfo.InnerHtml = "<p class=\"top\">" + user.Username + "</p><p class=\"bottom\">" + user.Email + "</p><p class=\"bottom\"><a href=\"SignOut.aspx\">Đăng Xuất</a></p>";
            }
            List<Product> ProductList = (List<Product>)Application["ProductList"];

            string id = Request.QueryString.Get("id");

            foreach (Product product in ProductList)
            {
                if (product.Id == int.Parse(id)) 
                {
                    List<Product> Details = new List<Product>();
                    Details.Add(product);
                    productData.DataSource = Details;
                    productData.DataBind();
                    break;
                }
            }

            if (user.Username == null)
            {
                CartCounter.InnerHtml = $"{0}";
            }
            else
            {
                int countProduct = Users[index].userCart.Count;

                CartCounter.InnerHtml = $"{countProduct}";
            }
        }
    }
}