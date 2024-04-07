using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using static webApplicationAssignment.Item;

namespace webApplicationAssignment
{
    public class Cart
    {
        private int id;
        private Item[] itemList;
        private int totalQuantity;
        private double totalPrice;

        public Cart()
        {

        }

        public Cart(Item[] itemList)
        {
            this.ItemList = itemList;
            if (itemList != null)
            {
                int quantity = 0;
                double totalPrice = 0;

                foreach (Item item in itemList) {
                    quantity += item.Quantity;
                    totalPrice += item.Total_price;
                }

                this.totalQuantity = quantity;
                this.TotalPrice = totalPrice;
            }
        }

        public void refresh()
        {
            int quantity = 0;
            double totalPrice = 0;
            foreach (Item item in itemList)
            {
                item.refresh();
                quantity += item.Quantity;
                totalPrice += item.Total_price;
            }

            this.totalQuantity = quantity;
            this.TotalPrice = totalPrice;
        }

        public ReadOnlyCart getReadOnly()
        {
            ReadOnlyCart rOC = new ReadOnlyCart(getItemList(), this.totalQuantity,this.totalPrice);
            return rOC;
        }
        public ArrayList getItemList()
        {
            ArrayList stringItemList = new ArrayList();     // item[] to arrayList

            if (this.ItemList == null) return null;
            foreach (Item item in this.ItemList)
            {
                ReadOnlyItem rOI = item.getReadOnly();
                stringItemList.Add(rOI);
            }

            return stringItemList;
        }

        public int Id { get => id; set => id = value; }
        public Item[] ItemList { get => itemList; set => itemList = value; }
        public double TotalPrice { get => totalPrice; set => totalPrice = value; }
        public int TotalQuantity { get => totalQuantity; set => totalQuantity = value; }
    }

    public class ReadOnlyCart
    {
        private int id;
        private ArrayList itemList;
        private int totalQuantity;
        private double totalPrice;

        public int Id { get => id; set => id = value; }
        public ArrayList ItemList { get => itemList; set => itemList = value; }
        public int TotalQuantity { get => totalQuantity; set => totalQuantity = value; }
        public double TotalPrice { get => totalPrice; set => totalPrice = value; }

        public ReadOnlyCart(ArrayList itemList, int totalQuantity, double totalPrice)
        {
            this.ItemList = itemList;
            this.TotalQuantity = totalQuantity;
            this.TotalPrice = totalPrice;
        }
    }
}