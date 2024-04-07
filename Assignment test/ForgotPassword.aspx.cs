using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_test
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string script = @"<script>
                        Swal.fire({
                          

                            
 
                 icon: 'success',
                title: '<h2 style=""color: black"">Successfully Send To Your Email</h2>',
                text: 'Check Your Email!',
                confirmButtonColor: 'red',
                confirmButtonText: 'Continue'

                        }).then((result) => {
                            if (result.isConfirmed) {
                                window.location.href = 'ResetPassword.aspx';
                            }
                        });
                    </script>";
            ClientScript.RegisterStartupScript(this.GetType(), "Popup", script);
        }

    }

}