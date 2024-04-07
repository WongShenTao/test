<%@ Page Title="" Language="C#" MasterPageFile="~/Laptop.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Assignment_test.WebForm2" %>





<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

  


    <!--section start-->
    <section class="register-page section-b-space">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h3>create account</h3>
                    <div class="theme-card">
                        <form class="theme-form" runat="server">
                            <div class="form-row row">
                                <div class="col-md-6">
                                    <%--<label for="email">Email</label>--%>
                                    <asp:Label ID="Label1" runat="server" CssClass="labelCustom" Text="Email"></asp:Label>
                                    <asp:TextBox ID="TxbEmail" runat="server" CssClass="form-control" Placeholder="Email" required="true"></asp:TextBox>
                                    <asp:RequiredFieldValidator CssClass="custom-validator" ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxbEmail" ErrorMessage="Email is required" ForeColor="Red" align="center" Font-Size="15px">* Please Enter Your Email</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator CssClass="custom-validator" ID="EmailValidator" runat="server" ControlToValidate="TxbEmail"
                                        ErrorMessage="Invalid email address. (e.g: my@gmail.com)" ValidationExpression="\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b"
                                        ForeColor="Red" align="center" Font-Size="15px"></asp:RegularExpressionValidator>
                                </div>
                                <div class="col-md-6">
                                    <%--<label for="name">Name</label>--%>
                                    <asp:Label ID="Label2" CssClass="labelCustom" runat="server" Text="Name"></asp:Label>
                                    <asp:TextBox ID="TxbName" runat="server" CssClass="form-control" Placeholder="Name" required="true"></asp:TextBox>
                                    <asp:RequiredFieldValidator CssClass="custom-validator" ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxbName" ErrorMessage="Name is required" ForeColor="Red" align="center" Font-Size="15px">* Please Enter Your Name</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator CssClass="custom-validator" ID="NameValidator" runat="server" ControlToValidate="TxbName"
                                        ErrorMessage="Name can only contain letters" ValidationExpression="^[a-zA-Z\s]+$"
                                        ForeColor="Red" align="center" Font-Size="15px"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="form-row row">
                                <div class="col-md-6">
                                    <%--<label for="password">Password</label>--%>
                                    <asp:Label ID="Label3" runat="server" CssClass="labelCustom" Text="Password"></asp:Label>
                                    <asp:TextBox ID="TxbPassword1" runat="server" CssClass="form-control" TextMode="Password" Placeholder="Create Password" required="true"></asp:TextBox>
                                    <i class="fa fa-eye" id="togglePassword1" style="position: relative; left: 550px; top: -65px; cursor: pointer;"></i>

                                    <asp:RequiredFieldValidator CssClass="custom-validator" ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxbPassword1" ErrorMessage="Password is required" ForeColor="Red" align="center" Font-Size="15px">* Please Enter Your Create Password</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator CssClass="custom-validator" ID="PasswordValidator" runat="server" ControlToValidate="TxbPassword1"
                                        ErrorMessage="Password must be at least 8 characters long and contain at least one special character (e.g. @, #, $, %)"
                                        ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@#$%^])[A-Za-z\d@#$%^]{8,}$"
                                        ForeColor="Red" align="center" Font-Size="15px"></asp:RegularExpressionValidator>
                                </div>
                                <div class="col-md-6">

                                    <asp:Label ID="Label4" runat="server" CssClass="labelCustom" Text="Confirmation Password"></asp:Label>
                                    <asp:TextBox ID="TxbPassword2" CssClass="form-control" runat="server" TextMode="Password" placeholder="Confirm password" Required="true"></asp:TextBox>
                                    <i class="fa fa-eye" id="togglePassword2" style="position: relative; left: 550px; top: -65px; cursor: pointer;"></i>
                                    <asp:RequiredFieldValidator CssClass="custom-validator" ID="RequiredFieldValidator6" runat="server" ControlToValidate="TxbPassword2" ErrorMessage="Password is required" ForeColor="Red" align="center" Font-Size="15px">* Please Enter Your Confirm Password</asp:RequiredFieldValidator>
                                    <%-- <asp:RegularExpressionValidator CssClass="custom-validator" ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxbPassword2"
                                        ErrorMessage="Password must be at least 8 characters long and contain at least one special character (e.g. @, #, $, %)"
                                        ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@#$%^])[A-Za-z\d@#$%^]{8,}$"
                                        ForeColor="Red" align="center" Font-Size="15px"></asp:RegularExpressionValidator>--%>
                                    <asp:CompareValidator CssClass="custom-validator" Display="Dynamic" ID="PasswordCompare" runat="server" ControlToCompare="TxbPassword1" ControlToValidate="TxbPassword2" EnableClientScript="true" ErrorMessage="The Password and Confirmation Password must match." ForeColor="Red" align="center" Font-Size="15px"></asp:CompareValidator>
                                </div>
                                <%--<a href="#" class="btn btn-solid w-auto">create Account</a>--%>
                            </div>
                            <div class="form-row row">
                                <div class="col-md-6">
                                    <%--  <label for="address">Address :</label>--%>
                                    <asp:Label ID="Label5" runat="server" CssClass="labelCustom" Text="Address ："></asp:Label>
                                    <asp:TextBox ID="TxbAddress" runat="server" CssClass="form-control" Placeholder="Address" required="true"></asp:TextBox>
                                    <asp:RequiredFieldValidator CssClass="custom-validator" ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxbAddress" ErrorMessage="Address is required" ForeColor="Red" align="center" Font-Size="15px">* Please Enter Your Address</asp:RequiredFieldValidator>

                                </div>
                                <div class="col-md-6">
                                    <%--  <label for="Contact No">Contact No :</label>--%>
                                    <asp:Label ID="Label6" runat="server" CssClass="labelCustom" Text="Contact No ："></asp:Label>
                                    <asp:TextBox ID="TxbContactNo" runat="server" CssClass="form-control" Placeholder="Contact Number" required="true"></asp:TextBox>
                                    <asp:RequiredFieldValidator CssClass="custom-validator" ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxbContactNo" ErrorMessage="Contact No is required" ForeColor="Red" align="center" Font-Size="15px">* Please Enter Your Contact Number</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator CssClass="custom-validator" ID="ContactNumberValidator" runat="server" ControlToValidate="TxbContactNo"
                                        ErrorMessage="Invalid contact number. (e.g: 0123456789/01234567890)" ValidationExpression="^01[0-9]{8,9}$"
                                        ForeColor="Red" align="center" Font-Size="15px"></asp:RegularExpressionValidator>
                                </div>
                            </div>

 
                            <asp:Button ID="BtnRegister" OnClick="BtnRegister_Click" CssClass="btn btn-solid w-auto center-btn" runat="server" Text="create Account" />


                            <%--        OnClientClick="submitForm(event)"--%>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Section ends-->





    <script>
        const togglePassword = document.querySelector('#togglePassword1');
        const password = document.querySelector('#<%= TxbPassword1.ClientID %>');
        togglePassword.addEventListener('click', function (e) {
            // toggle the type attribute
            const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
            password.setAttribute('type', type);
            // toggle the eye slash icon
            togglePassword.classList.toggle('fa-eye-slash');
        });
    </script>

    <script>
        const togglePassword2 = document.querySelector('#togglePassword2');
        const password2 = document.querySelector('#<%= TxbPassword2.ClientID %>');
        togglePassword2.addEventListener('click', function (e) {
            // toggle the type attribute
            const type = password2.getAttribute('type') === 'password' ? 'text' : 'password';
            password2.setAttribute('type', type);
            // toggle the eye slash icon
            togglePassword2.classList.toggle('fa-eye-slash');
        });
    </script>


    <script>

        function submitForm(event) {
            event.preventDefault();

            Swal.fire({
                icon: 'success',
                title: '<h2 style="color: black">Succssfully Register</h2>',
                text: 'Account Created!!!',
                confirmButtonColor: 'red',
                confirmButtonText: 'Continue',
            });
        }
    </script>
</asp:Content>
