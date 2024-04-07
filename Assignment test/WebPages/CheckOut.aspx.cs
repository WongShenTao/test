using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Runtime;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static webApplicationAssignment.Item;

namespace webApplicationAssignment
{
    public partial class CheckOut : System.Web.UI.Page
    {
        static Product[] product;
        static Component[] component1;
        static Component[] component2;
        static Component[] component3;
        static Item[] itemList;
        static Cart cart = new Cart(itemList);
        static Cart selectedCart = new Cart();

        public static int itemQuantity = 0;


        protected void Page_Load(object sender, EventArgs e)
        {
            //get Item object from database (TODO)

            //temp hard coded
            product = new Product[6];
            product[0] = new Product("Laptop1", 1000);
            product[1] = new Product("Laptop2", 2000);
            product[2] = new Product("Laptop3", 3000);
            product[3] = new Product("Laptop4", 4000);
            product[4] = new Product("Laptop5", 5000);
            product[5] = new Product("Laptop6", 6000);

            component1 = new Component[4];
            component1[0] = new Component("Memory", "8GB", 200);
            component1[1] = new Component("Processor", "Intel i5", 500);
            component1[2] = new Component("Core", "Hexa Core", 300);
            component1[3] = new Component("GPU", "Integrated Graphics", 0);
            component2 = new Component[4];
            component2[0] = new Component("Memory", "16GB", 150);
            component2[1] = new Component("Processor", "Intel i7", 750);
            component2[2] = new Component("Core", "Bnanana Core", 500);
            component2[3] = new Component("GPU", "NVIDIA GeForce GTX 3060", 1000);

            itemList = new Item[6];
            itemList[0] = new Item(0, product[0], 1, component1);
            itemList[1] = new Item(1, product[1], 1, component2);
            itemList[2] = new Item(2, product[2], 1, component1);
            itemList[3] = new Item(3, product[3], 1, component2);
            itemList[4] = new Item(4, product[4], 1, component1);
            itemList[5] = new Item(5, product[5], 1, component2);

            cart = new Cart(itemList);
            //temp.end

            if (!this.IsPostBack) Databind();

            GetTotal();


        }

        protected void btnPlaceOrder_Click(object sender, EventArgs e)
        {
            placeOrder();
        }

        public void GetTotal()
        {
            int[] selectedIDArray = null;  //TODO

            int quantity = 0;
            double total = 0;

            if (selectedIDArray != null)
            {
                for (int i = 0; i < cart.ItemList.Length; i++)
                {
                    Boolean selected = false;
                    for (int j = 0; j < selectedIDArray.Length; j++)
                    {
                        if (cart.ItemList[i].Id == selectedIDArray[j]) selected = true;
                    }
                    if (selected)
                    {
                        quantity += cart.ItemList[i].Quantity;
                        total += cart.ItemList[i].Total_price;
                    }
                }

            }
        }

        public void placeOrder()
        {
            //Response.Redirect("PaymentPage.aspx?itemListID=" + HFItemListID.Value);
            Response.Redirect("PaymentPage.aspx?total=" + HFTotalPrice.Value);

        }
        public Boolean Databind()
        {
            //refresh database
            String itemListID = "";
            if (Request.QueryString["itemListID"] != null && Request.QueryString["itemListID"] != string.Empty) itemListID = Request.QueryString["itemListID"];

            //new cart.ItemList
            if (itemListID != "")
            {
                int[] selectedIDArray = getSelectedIDArray(itemListID);

                //new itemlist
                Item[] newItemList = new Item[selectedIDArray.Length];
                int a = 0;
                for (int i = 0; i < cart.ItemList.Length; i++)
                {
                    for (int j = 0; j < selectedIDArray.Length; j++)
                    {
                        if (cart.ItemList[i].Id == selectedIDArray[j]) newItemList[a++] = cart.ItemList[i];
                    }
                }

                cart.ItemList = newItemList;
                cart.refresh();
            }

            //repeater dataSource
            ArrayList stringItemList = new ArrayList();     // item[] to arrayList
            if (cart.ItemList == null) return false;
            foreach (Item item in cart.ItemList)
            {
                ReadOnlyItem rOI = item.getReadOnly();
                stringItemList.Add(rOI);
            }

            lblTotal1.Text = "Total (" + cart.TotalQuantity + " item): ";
            lblTotal2.Text = "RM " + cart.TotalPrice;

            HFItemListID.Value = itemListID;
            HFTotalPrice.Value = cart.TotalPrice.ToString();

            orderItem.DataSource = stringItemList;
            orderItem.DataBind();

            return true;
        }

        protected void outerRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                // Find the inner Repeater within the outer Repeater's ItemTemplate
                Repeater innerRepeater = (Repeater)e.Item.FindControl("innerRepeater");

                // Retrieve the data item bound to the outer Repeater's current item
                ReadOnlyItem rOI = (ReadOnlyItem)e.Item.DataItem;

                // Bind the inner Repeater to the InnerItems collection of the current OuterItem
                innerRepeater.DataSource = rOI.Components;
                innerRepeater.DataBind();
            }
        }

        //test data
        protected void btnTestData_Click(object sender, EventArgs e)
        {
            Databind();
        }

        public int[] getSelectedIDArray(String selectedID)
        {
            int[] selectedIDArray;
            try
            {
                selectedIDArray = Array.ConvertAll(selectedID.Split(','), int.Parse); //hiddenField to int array
            }
            catch (Exception ex)
            {
                selectedIDArray = null;
            };
            return selectedIDArray;
        }
    }
}