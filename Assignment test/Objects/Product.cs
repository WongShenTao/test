using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace webApplicationAssignment
{
    public class Product
    {
        private int id;
        private string name;
        private double price;
        
        public Product(string name, double price)
        {
            this.name = name;
            this.price = price;
        }
        public Product()
        {
        }

        public int Id { get => id; set => id = value; }
        public string Name { get => name; set => name = value; }
        public double Price { get => price; set => price = value; }
    }
}