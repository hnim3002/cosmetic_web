using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL.src
{
    public class User
    {
        public string Username { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public List<Product> userCart = new List<Product>();
        public User() { }
        public User(string username, string email, string password) 
        {
            Username = username;
            Email = email;
            Password = password;
        }
    }
}