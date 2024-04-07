using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace webApplicationAssignment
{
    public class Component
    {
        private int id;
        private String type;
        private String name;
        private double price;

        public Component(int id, string type, string name, double price)
        {
            this.id = id;
            this.type = type;
            this.name = name;
            this.price = price;
        }
        public Component(string type, string name, double price)
        {
            this.type = type;
            this.name = name;
            this.price = price;
        }
        public Component()
        {

        }

        public int Id { get => id; set => id = value; }
        public string Type { get => type; set => type = value; }
        public string Name { get => name; set => name = value; }
        public double Price { get => price; set => price = value; }
    }
}