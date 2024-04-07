<%@ Page Title="" Language="C#" MasterPageFile="~/Laptop.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Assignment_test.WebForm3" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <!-- breadcrumb start -->
    <div class="breadcrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="page-title">
                        <h2>Forgot Password</h2>
                    </div>
                </div>
                <div class="col-sm-6">
                    <nav aria-label="breadcrumb" class="theme-breadcrumb">
                        <ol class="breadcrumb">

                          
                            <li class="breadcrumb-item">
                                  <asp:SiteMapPath ID="SiteMapPath1" runat="server">
                                 </asp:SiteMapPath></li>
                            <%--<li class="breadcrumb-item active" aria-current="page">Forgot Password</li>--%>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb End -->

    <section class="pwd-page section-b-space">
        <div class="container padding-bottom-3x mb-2">
            <div class="row justify-content-center">
                <div class="forgot col-lg-6 m-auto">
                    <h2>Forgot your password?</h2>
                    <p>Change your password in three easy steps. This will help you to secure your password!</p>
                    <div style="display: inline-block; text-align: left;">
                        <ol class="list-unstyled">
                            <li><span class="text-primary text-medium">1.&nbsp;&nbsp;</span>Enter your email address below.</li>
                            <br>
                            <li><span class="text-primary text-medium">2.&nbsp;&nbsp;</span>Our system will send you an ResetPassword link to your email.</li>
                            <br>
                            <li><span class="text-primary text-medium">3.&nbsp;&nbsp;</span>Click the link to Reset your password.</li>
                        </ol>
                    </div>
                </div>
                <form runat="server" class="card mt-4 theme-form col-lg-8" style="border: 1px solid grey;">
                    <div class="card-body form-row row">
                        <div class="form-group">
                            <h5>
                                <asp:Label ID="Label1" runat="server" CssClass="" Text="Enter your email address: "></asp:Label>
                            </h5>
                            <%--<label for="email-for-pass">Enter your email address:</label>--%>
                            <%--<input type="text" class="form-control" name="email" id="email-for-pass" required="" placeholder="my@email.com">--%>
                            <asp:TextBox ID="Txbemail" runat="server" CssClass="form-control" required="true" placeholder="my@email.com"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="custom-validator" ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxbEmail" ErrorMessage="Email is required" ForeColor="Red" align="center" Font-Size="15px">* Please Enter Your Email</asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator CssClass="custom-validator" ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxbEmail" ErrorMessage="Invalid email format" ValidationExpression="\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b" ForeColor="Red" align="center" Font-Size="15px">* Please Enter a Valid Email Address. e.g: my@gmail.com</asp:RegularExpressionValidator>
                            <small class="form-text text-muted">Enter the registered email address. Then we'll email an link ResetPassword to this address.</small>
                        </div>
                    </div>
                    <div class="card-footer" style="padding: 15px;">
                        <%--<button class="btn btn-success" type="submit" style="border-radius: 5px;">Get New Password</button>&emsp;--%>
                        <asp:Button ID="btnSubmit" OnClick="btnSubmit_Click" runat="server" Text="Get New Password" CssClass="btn btn-solid" Style="border-radius: 5px;" />
                        <%--PostBackUrl="~/ResetPassword.aspx"--%>
                        <%--<asp:Button ID="btnBack" runat="server" Text="Back to Login" CssClass="btn btn-danger" style="border-radius: 5px;"  PostBackUrl="~/Login.aspx"/>  --%>
                        <asp:HyperLink ID="HyperLink1" CssClass="btn btn-solid" runat="server" NavigateUrl="~/Login.aspx">Back to Login</asp:HyperLink>

                        <%--<button class="btn btn-danger" type="button" style="border-radius: 5px;" onclick="window.location.replace('login.jsp')">Back to Login</button>--%>
                    </div>
                </form>
            </div>
        </div>
        <%--  <asp:Button ID="Button1"  OnClientClick="submit(event)" runat="server" Text="Get New Password" CssClass="btn btn-solid" style="border-radius: 5px;"    /> --%>
    </section>

    <script>
        function submit(event) {
            event.preventDefault();

            Swal.fire({
                icon: 'success',
                title: '<h2 style="color: black">Successfully Send To Your Email</h2>',
                text: 'Rechange Password!',
                confirmButtonColor: 'red',
                confirmButtonText: 'Continue'
            });
        }
  </script>

</asp:Content>
