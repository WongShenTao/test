using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_test
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Btnsubmit_Click(object sender, EventArgs e)
        {
            string script = @"<script>
                              Swal.fire({
                          
  icon: 'success',
            /*title: 'Updated to Cart',*/
            title: '<h2 style=""color: black"">Updated Successfully to Cart</h2>',
            text: 'The product has been updated to your cart.',
            confirmButtonColor: 'red',
            confirmButtonText: 'Continue To Cart'
                            
                        }).then((result) => {
                            if (result.isConfirmed) {
                                window.location.href = 'WebPages/MyCart.aspx';
                            }
                        });
                    </script>";
            ClientScript.RegisterStartupScript(this.GetType(), "Popup", script);
        }

    }
}