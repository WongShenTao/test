<%@ Page Language="C#" MasterPageFile="~/Laptop.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Assignment_test.Login" %>

<asp:Content ID="LaptopWare1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>



    <!--section start-->
    <section class="login-page section-b-space">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <h3>Login</h3>

                    <!--  login start -->



                    <div class="theme-card">
                        <form class="theme-form" runat="server" id="Loginform">


                            <div class="form-group">
                                <label for="email">Username</label>
                                <%--<input type="text" class="form-control" id="custUsername" name="custUsername" placeholder="Username" required/>--%>
                                <asp:TextBox ID="TxbcustUsername" runat="server" CssClass="form-control" Placeholder="Username" required="true"></asp:TextBox>

                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxbcustUsername" ErrorMessage="Username is required" ForeColor="Red" align="center" Font-Size="15px">* Please Enter Your Username</asp:RequiredFieldValidator>

                            </div>



                            <div class="form-group">
                                <label for="review">Password</label>
                                <%--<input type="password" class="form-control" id="custPWD" name="custPWD"  placeholder="Enter your password" required/>--%>
                                <asp:TextBox ID="TxBcustPWD" runat="server" CssClass="form-control" TextMode="Password" Placeholder="Enter your Password" required="true"></asp:TextBox>
                                <i class="fa fa-eye" id="togglePassword" style="position: relative; left: 550px; top: -65px; cursor: pointer;"></i>

                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxBcustPWD" ErrorMessage="Password is required" ForeColor="Red" align="center" Font-Size="15px">* Please Enter Your Password</asp:RequiredFieldValidator>



                            </div>
                            <script>
                                const togglePassword = document.querySelector('#togglePassword');
                                const password = document.querySelector('#<%= TxBcustPWD.ClientID %>');
                                togglePassword.addEventListener('click', function (e) {
                                    // toggle the type attribute
                                    const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
                                    password.setAttribute('type', type);
                                    // toggle the eye slash icon
                                    togglePassword.classList.toggle('fa-eye-slash');
                                });
                            </script>
                            <div class="forLogin" style="display: flex; flex-direction: row;">
                                <div style="margin-right: 40px">
                                    <input type="checkbox" id="rememberMe" name="rememberMe" value="rememberMe">
                                    <label for="vehicle1">Remember Me</label>
                                </div>
                                <div class="form-group1" style="margin-left: 350px">
                                    <%--        <a href="ForgotPassword.aspx">Forget Password</a>--%>
                                    <asp:HyperLink ID="forgotpassword" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forget Password</asp:HyperLink>
                                </div>
                            </div>


                            <!--                            <a href="index.html" class="btn btn-solid">Login</a>-->
                            <%--<button type="submit" onclick="submitLogin(event)" class="btn btn-solid">login</button>--%>
                            <asp:Button ID="BtnLogin" OnClick="BtnLogin_Click" runat="server" Text="Login" CssClass="btn btn-solid" />


                        </form>
                    </div>




                    <!--  login end -->
                </div>


                <div class="col-lg-6 right-login">

                    <h3>New Customer</h3>

                    <div class="theme-card authentication-right">
                        <h6 class="title-font">Annyeonghaseyo!
                                <br>
                            <br>
                            <p>
                                Sign up for a free account at our store. 
                                    Registration is quick and easy.
                                <br>
                                It allows you to be able to order from our shop. To start shopping click register.
                                <br>
                                <br>
                                <%--<a href="" class="btn btn-solid">Join the Innisfree family!</a>--%>
                                <asp:HyperLink ID="Register" runat="server" CssClass="btn btn-solid" NavigateUrl="~/Register.aspx">Register Now</asp:HyperLink>
                                <br>
                                <br>
                                <br>
                                <br>
                            </p>
                        </h6>

                    </div>


                </div>
            </div>
        </div>
    </section>
    <!--Section ends-->



    <script>
        function submitLogin(event) {
            event.preventDefault();

            Swal.fire({
                icon: 'success',
                title: '<h2 style="color: black">Successfully Logged In</h2>',
                text: 'Welcome back!',
                confirmButtonColor: 'red',
                confirmButtonText: 'Continue'
            });
        }
    </script>

</asp:Content>





