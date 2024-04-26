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
            Users.Add(new User("Minh", "a@gmail.com", "1"));

            Application["ProductList"] = new List<Product>();
            List<Product> ProductList = (List<Product>)Application["ProductList"];
            Application["ProductCart"] = new List<Product>();
            List<Product> ProductCart = (List<Product>)Application["ProductCart"];

            ProductList.Add(new Product(1,"Product 1", "This is a Product 1 for women", "./Img/product/sanpham1.jpg", 100000,1));
            ProductList.Add(new Product(2, "Product 2", "This is a Product 2 for women", "./Img/product/sanpham2.jpg", 200000, 1));
            ProductList.Add(new Product(3, "Product 3", "This is a Product 3 for women", "./Img/product/sanpham3.jpg", 300000, 1));
            ProductList.Add(new Product(4, "Product 4", "This is a Product 4 for women", "./Img/product/sanpham4.jpg", 100000, 1));
            ProductList.Add(new Product(5, "Product 5", "This is a Product 5 for women", "./Img/product/sanpham5.jpg", 200000, 1));
            ProductList.Add(new Product(6, "Product 6", "This is a Product 6 for women", "./Img/product/sanpham6.jpg", 300000, 1));

            ProductList.Add(new Product(7, "Product 7", "This is a Product 7 for men", "./Img/product/sanpham7.jpg", 100000, 1));
            ProductList.Add(new Product(8, "Product 8", "This is a Product 8 for men", "./Img/product/sanpham8.jpg", 200000, 1));
            ProductList.Add(new Product(9, "Product 9", "This is a Product 9 for men", "./Img/product/sanpham9.jpg", 300000, 1));
            ProductList.Add(new Product(10, "Product 10", "This is a Product 10 for men", "./Img/product/sanpham10.jpg", 100000, 1));
           
        }
        protected void Session_Start(object sender, EventArgs e)
        {
            Session["User"] = new User();
           
        }
    }
}