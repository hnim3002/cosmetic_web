using BTL.src;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace BTL
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            Application["Users"] = new List<User>();
            List<User> Users = (List<User>)Application["Users"];
            Users.Add(new User("QuangAnh", "ngquanganh11a1@gmail.com", "181003"));
            Users.Add(new User("Trang", "trang@gmail.com", "1"));
            Users.Add(new User("Nam", "nam@gmail.com", "1"));

            Application["ProductList"] = new List<Product>();
            List<Product> ProductList = (List<Product>)Application["ProductList"];
            Application["ProductCart"] = new List<Product>();
            List<Product> ProductCart = (List<Product>)Application["ProductCart"];

            ProductList.Add(new Product(1,"Women Shirt", "This is a shirt for women","./Img/women/women-shirt-1.jpg", 100000,1));
            ProductList.Add(new Product(2, "Women Shirt", "This is a shirt for women", "./Img/women/women-shirt-2.jpg", 200000, 1));
            ProductList.Add(new Product(3, "Women Shirt", "This is a shirt for women", "./Img/women/women-shirt-3.jpg", 300000, 1));
            ProductList.Add(new Product(4, "Women Trouser", "This is a trouser for women", "./Img/women/women-pants-1.jpg", 100000, 1));
            ProductList.Add(new Product(5, "Women Trouser", "This is a trouser for women", "./Img/women/women-pants-2.jpg", 200000, 1));
            ProductList.Add(new Product(6, "Women Skirt", "This is a skirt for women", "./Img/women/women-pants-3.jpg", 300000, 1));

            ProductList.Add(new Product(7, "Men Shirt", "This is a shirt for men", "./Img/men/men-shirt-1.jpg", 100000, 1));
            ProductList.Add(new Product(8, "Men Shirt", "This is a shirt for men", "./Img/men/men-shirt-2.jpg", 200000, 1));
            ProductList.Add(new Product(9, "Men Shirt", "This is a shirt for men", "./Img/men/men-shirt-3.jpg", 300000, 1));
            ProductList.Add(new Product(10, "Men Pants", "This is a trouser for men", "./Img/men/men-trousers-1.jpg", 100000, 1));
            ProductList.Add(new Product(11, "Men Pants", "This is a trouser for men", "./Img/men/men-trousers-2.jpg", 200000, 1));
            ProductList.Add(new Product(12, "Men Pants", "This is a trouser for men", "./Img/men/men-trousers-3.jpg", 300000, 1));

            ProductList.Add(new Product(13, "Lipstick", "This is a lipstick", "./Img/cosmetics/lipstick-1.jpg", 100000, 1));
            ProductList.Add(new Product(14, "Lipstick", "This is a lipstick", "./Img/cosmetics/lipstick-2.jpg", 200000, 1));
            ProductList.Add(new Product(15, "Lipstick", "This is a lipstick", "./Img/cosmetics/lipstick-3.jpg", 300000, 1));
            ProductList.Add(new Product(16, "Perfume", "This is a perfume", "./Img/cosmetics/perfume-1.jpg", 100000, 1));
            ProductList.Add(new Product(17, "Perfume", "This is a perfume", "./Img/cosmetics/perfume-2.jpg", 200000, 1));
            ProductList.Add(new Product(18, "Perfume", "This is a perfume", "./Img/cosmetics/perfume-3.jpg", 300000, 1));
        }
        protected void Session_Start(object sender, EventArgs e)
        {
            Session["User"] = new User();
        }
    }
}