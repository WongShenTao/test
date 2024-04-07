using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_test
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

 

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string script = @"<script>
                        Swal.fire({
                          

                            
 
                 icon: 'success',
                 title: '<h2 style=""color: black"">Successfully to Update !!!</h2>',
                 text: 'Updated your profile Successfully !',
                 confirmButtonColor: 'red',
                 confirmButtonText: 'Continue'             


                        }).then((result) => {
                            if (result.isConfirmed) {
                                window.location.href = 'CustomerProfile.aspx';
                            }
                        });
                    </script>";
            ClientScript.RegisterStartupScript(this.GetType(), "Popup", script);
        }
    }
}