using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webApplicationAssignment
{
    public partial class PaymentSuccessful : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDone_Click(object sender, EventArgs e)
        {
            // Redirect to another page
            Response.Redirect("viewOrdersPage.aspx");
        }
    }
}