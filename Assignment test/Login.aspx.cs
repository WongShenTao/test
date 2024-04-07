using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_test
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string script = @"<script>
                        Swal.fire({
                          

                            
 
                 icon: 'success',
                 title: '<h2 style=""color: black"">Successfully Logged In</h2>',
                 text: 'Welcome back!',
                 confirmButtonColor: 'red',
                 confirmButtonText: 'Continue'             


                        }).then((result) => {
                            if (result.isConfirmed) {
                                window.location.href = 'HomePage.aspx';
                            }
                        });
                    </script>";
            ClientScript.RegisterStartupScript(this.GetType(), "Popup", script);
        }
    
    }
}