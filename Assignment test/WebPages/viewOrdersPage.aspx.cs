using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static webApplicationAssignment.Item;

namespace webApplicationAssignment
{
    public partial class viewOrdersPage : System.Web.UI.Page
    {
        static Product[] product;
        static Component[] component1;
        static Component[] component2;
        static Component[] component3;
        static Item[] itemList1;
        static Item[] itemList2;
        static Item[] itemList3;
        static Order[] orders;

        public static int itemQuantity = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            //get Item object from database (TODO)

            TestData();
            if (!this.IsPostBack) Databind();

        }

        public Boolean Databind()
        {
            ArrayList stringOrderList = new ArrayList();     // item[] to arrayList

            if (orders == null) return false;
            foreach (Order order in orders)
            {
                ReadOnlyOrder rOO = order.getReadOnly();
                stringOrderList.Add(rOO);
            }

            outerRepeater.DataSource = stringOrderList;
            outerRepeater.DataBind();

            return true;
        }

        protected void outerRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                // Find the inner Repeater within the outer Repeater's ItemTemplate
                Repeater innerRepeater = (Repeater)e.Item.FindControl("innerRepeater");

                // Retrieve the data item bound to the outer Repeater's current item
                ReadOnlyOrder rOO = (ReadOnlyOrder)e.Item.DataItem;

                // Bind the inner Repeater to the InnerItems collection of the current OuterItem
                innerRepeater.DataSource = rOO.ItemList;
                innerRepeater.DataBind();
            }
        }

        protected void innerRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                // Find the inner Repeater within the outer Repeater's ItemTemplate
                Repeater componentRepeater = (Repeater)e.Item.FindControl("componentRepeater");

                // Retrieve the data item bound to the outer Repeater's current item
                ReadOnlyItem rOI = (ReadOnlyItem)e.Item.DataItem;
                // Bind the inner Repeater to the InnerItems collection of the current OuterItem
                componentRepeater.DataSource = rOI.Components;
                componentRepeater.DataBind();
            }
        }

        public void TestData()
        {
            //temp hard coded

            //product
            product = new Product[6];
            product[0] = new Product("Laptop1", 1000);
            product[1] = new Product("Laptop2", 2000);
            product[2] = new Product("Laptop3", 3000);
            product[3] = new Product("Laptop4", 4000);
            product[4] = new Product("Laptop5", 5000);
            product[5] = new Product("Laptop6", 6000);

            //component
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

            orders = new Order[3];

            orders[0] = new Order(new Item[]{
                new Item(0, product[0], 1, component1), 
                new Item(1, product[1], 2, component2)}, 
                "address1");
            orders[1] = new Order(new Item[]{
                new Item(2, product[2], 3, component1),
                new Item(3, product[3], 2, component2)}, 
                "address2");
            orders[2] = new Order(new Item[]{
                new Item(4, product[4], 5, component1),
                new Item(5, product[5], 7, component2)}, 
                "address3");
        }
    }
}