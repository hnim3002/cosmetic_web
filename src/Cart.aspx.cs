using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
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

            if(user.Username == null ) 
           
                {
                    Response.Redirect("SignIn.aspx");
                    return;
                }
            
            
            

            if (!string.IsNullOrEmpty(Request.QueryString["dataList"]))
            {
               
                string jsonData = Request.QueryString["dataList"];

                JavaScriptSerializer serializer = new JavaScriptSerializer();
                List<Dictionary<string, object>> dataList = serializer.Deserialize<List<Dictionary<string, object>>>(jsonData);

            
                foreach (var item in dataList)
                {
                    List<Product> ProductList = (List<Product>)Application["ProductList"];
                    List<User> Users = (List<User>)Application["Users"];
                    int index = Users.FindIndex(u => u.Username == user.Username);

                    string id = item["id"].ToString();
                    bool checkInCart = false;

                    foreach (Product product in Users[index].userCart)
                    {
                        if (product.Id == int.Parse(id))
                        {
                            product.Quantity++;
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
                                Users[index].userCart.Add(product);
                                break;
                            }
                        }
                    }
                }
            
            }

            if (user.Username != null)
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

        }
    }
}