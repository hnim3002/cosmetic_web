using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL.src
{
    public class Product
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string Image { get; set; }
        public int Price { get; set; }
        public int Quantity { get; set; }

        public int Total { get; set; }
        public Product() { }
        public Product(int id, string name, string description, string img, int price, int quantity)
        {
            Id = id;
            Name = name;
            Description = description;
            Image = img;
            Price = price;
            Quantity = quantity;
            Total = price * quantity;
        }
    }
}