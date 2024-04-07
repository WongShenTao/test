using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_test
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

 
        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            //Response.Redirect("testing.aspx");

            //// Display JavaScript alert
            //string script = "swal({ icon: 'success', title: 'Successfully Registered', text: 'Account Created!!!' }).then((result) => { if (result.isConfirmed) { window.location.href = 'testing.aspx'; } });";
            //ScriptManager.RegisterStartupScript(this, GetType(), "Popup", script, true);


            string script = @"<script>
                        Swal.fire({
                          

                               icon: 'success',
                               title: '<h2 style=""color: black"">Succssfully Register</h2>',
                                text: 'Account Created!!!',
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