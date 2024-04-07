using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_test
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnsubmit_Click(object sender, EventArgs e)
        {

            string script = @"<script>
                        Swal.fire({
                          

                               icon: 'success',
                               title: '<h2 style=""color: black"">Succssfully Reset Passowrd</h2>',
                                text: 'Go Login Now!!!',
                                confirmButtonColor: 'red',
                                confirmButtonText: 'Continue',
                        }).then((result) => {
                            if (result.isConfirmed) {
                                window.location.href = 'Login.aspx';
                            }
                        });
                    </script>";
            ClientScript.RegisterStartupScript(this.GetType(), "Popup", script);
        }
    }
    
}