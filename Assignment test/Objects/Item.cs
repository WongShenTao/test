using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace webApplicationAssignment
{
    public class Item
    {
        private int id;
        private int quantity;
        private Product product;
        private Component[] components;

        private double total_componentPrice;
        private double unit_price;
        private double total_price;
        public Item(Product product, int quantity, Component[] component)
        {
            this.product = product;
            this.quantity = quantity;
            this.Component = component;
            double tempComponentPrice = 0;
            foreach (Component c in component)
            {
                tempComponentPrice += c.Price;
            }
            this.total_componentPrice = tempComponentPrice;
            this.unit_price = product.Price + total_componentPrice;
            this.total_price = (product.Price + total_componentPrice) * quantity;
        }

        public Item(int id, Product product, int quantity, Component[] component)
        {
            this.id = id;
            this.product = product;
            this.quantity = quantity;
            this.Component = component;
            double tempComponentPrice = 0;
            foreach (Component c in component)
            {
                tempComponentPrice += c.Price;
            }
            this.total_componentPrice = tempComponentPrice;
            this.unit_price = product.Price + total_componentPrice;
            this.total_price = (product.Price + total_componentPrice) * quantity;
        }

        public void refresh()
        {
            double tempPrice = 0;
            foreach (Component c in components)
            {
                tempPrice += c.Price;
            }
            this.total_componentPrice = tempPrice;
            this.total_price = (this.product.Price + this.total_componentPrice) * this.quantity;
        }

        public ReadOnlyItem getReadOnly()
        {
            ReadOnlyItem rOI = new ReadOnlyItem(this.id, this.quantity, this.product, getComponentList(), this.total_componentPrice, this.unit_price, this.total_price);
            return rOI;
        }

        public ArrayList getComponentList()
        {
            ArrayList stringComponentList = new ArrayList();     // item[] to arrayList
            int itemNum = 0;

            if (this.components == null) return null;
            foreach (Component component in this.components)
            {
                Dictionary<String, String> itemAttribute = new Dictionary<String, String>();
                itemAttribute.Add("component1", component.Type);
                itemAttribute.Add("component2", ": ");
                itemAttribute.Add("component3", component.Name);

                stringComponentList.Add(itemAttribute);
            }

            return stringComponentList;
        }

        public int Id { get => id; set => id = value; }
        public Product Product { get => product; set => product = value; }
        public int Quantity { get => quantity; set => quantity = value; }
        public double Total_price { get => total_price; set => total_price = value; }
        public Component[] Component { get => components; set => components = value; }
        public double Unit_price { get => unit_price; set => unit_price = value; }

        public class ReadOnlyItem
        {
            private int id;
            private int quantity;
            private Product product;
            private ArrayList componentList;

            private double total_componentPrice;
            private double unit_price;
            private double total_price;

            public ReadOnlyItem(int id, int quantity, Product product, ArrayList components, double total_componentPrice, double unit_price, double total_price)
            {
                this.id = id;
                this.product = product;
                this.quantity = quantity;
                this.componentList = components;
                this.total_componentPrice = total_componentPrice;
                this.unit_price = unit_price;
                this.total_price = total_price;
            }

            public int Id { get => id; set => id = value; }
            public int Quantity { get => quantity; set => quantity = value; }
            public Product Product { get => product; set => product = value; }
            public ArrayList Components { get => componentList; set => componentList = value; }
            public double Total_componentPrice { get => total_componentPrice; set => total_componentPrice = value; }
            public double Unit_price { get => unit_price; set => unit_price = value; }
            public double Total_price { get => total_price; set => total_price = value; }
        }
    }
}