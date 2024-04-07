using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using static webApplicationAssignment.Item;

namespace webApplicationAssignment
{
    public class Order
    {
        private int id;
        private Item[] itemList;
        private String address;

        private int totalQuantity;
        private double totalPrice;
        private String status;

        public Order(Item[] itemList, String address)
        {
            this.ItemList = itemList;
            this.Address = address;
            if (itemList != null)
            {
                int quantity = 0;
                double totalPrice = 0;

                foreach (Item item in itemList)
                {
                    quantity += item.Quantity;
                    totalPrice += item.Total_price;
                }

                this.TotalQuantity = quantity;
                this.TotalPrice = totalPrice;
            }

            toShip();
        }

        public Boolean toShip()
        {
            this.status = "To Ship";
            return true;
        }
        public Boolean toReceive()
        {
            this.status = "To Receive";
            return true;
        }

        public Boolean completed()
        {
            this.status = "Completed";
            return true;
        }

        public Boolean cancelled()
        {
            this.status = "Cancelled";
            return true;
        }

        public ReadOnlyOrder getReadOnly()
        {
            ReadOnlyOrder rOO = new ReadOnlyOrder(this.id, getItemList(), this.address, this.totalQuantity, this.totalPrice, this.status);
            return rOO;
        }
        public ArrayList getItemList()
        {
            ArrayList stringItemList = new ArrayList();     // item[] to arrayList
            int itemNum = 0;

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
        public int TotalQuantity { get => totalQuantity; set => totalQuantity = value; }
        public double TotalPrice { get => totalPrice; set => totalPrice = value; }
        public string Status { get => status; set => status = value; }
        public string Address { get => address; set => address = value; }
    }

    public class ReadOnlyOrder
    {
        private ArrayList itemList;
        private int id;
        private String address;

        private int totalQuantity;
        private double totalPrice;
        private String status;

        public ArrayList ItemList { get => itemList; set => itemList = value; }
        public int Id { get => id; set => id = value; }
        public string Address { get => address; set => address = value; }
        public int TotalQuantity { get => totalQuantity; set => totalQuantity = value; }
        public double TotalPrice { get => totalPrice; set => totalPrice = value; }
        public string Status { get => status; set => status = value; }

        public ReadOnlyOrder(int id, ArrayList itemList, string address, int totalQuantity, double totalPrice, string status)
        {
            this.ItemList = itemList;
            this.Id = id;
            this.Address = address;
            this.TotalQuantity = totalQuantity;
            this.TotalPrice = totalPrice;
            this.Status = status;
        }
    }
}