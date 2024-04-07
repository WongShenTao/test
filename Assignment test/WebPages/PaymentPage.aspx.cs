using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webApplicationAssignment
{
    public partial class PaymentPage : System.Web.UI.Page
    {
        static String totalPrice;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["total"] != null && Request.QueryString["total"] != string.Empty) totalPrice = Request.QueryString["total"];
            lblTotalPayment2.Text = totalPrice;

        }

        public void toPaymentSuccessful()
        {
            Response.Redirect("PaymentSuccessful.aspx");

        }

        protected void btnPay_Click(object sender, EventArgs e)
        {
            toPaymentSuccessful();
        }
    }
}