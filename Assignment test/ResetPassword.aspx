<%@ Page Title="" Language="C#" MasterPageFile="~/Laptop.Master" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="Assignment_test.WebForm5" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">






    <div>
        <!-- Container containing all contents -->
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-md-9 col-lg-7 col-xl-6 mt-5">
                    <!-- White Container -->
                    <div class="container bg-white rounded mt-2 mb-2 px-0">
                        <!-- Main Heading -->
                        <div class="row justify-content-center align-items-center pt-3">
                            <h1>
                                <strong>Reset Password</strong>
                            </h1>
                        </div>
                        <div class="pt-3 pb-3">
                            <form class="form-horizontal" runat="server">
                                <!-- User Name Input -->
                                <div class="form-group row justify-content-center px-3">
                                    <div class="col-9 px-0">
                                        <div class="input-group">
                                            <%--   <input type="text" name="password" placeholder="&#xf084; &nbsp; New Password" id="empPwd" class="form-control border-info placeicon" style="margin-left: 20%;">--%>
                                            <asp:TextBox ID="Txbpassword1" runat="server" CssClass="form-control border-info placeicon" TextMode="Password" Placeholder="&#xf084; &nbsp; New Password" required="true" Style="margin-left: 20%;"></asp:TextBox>

                                            <div class="input-group-append">
                                                <button class="btn btn-outline-secondary" type="button" id="togglePassword1"><i class="fa fa-eye"></i></button>
                                            </div>

                                        </div>
                                    </div>
                                    <span for="validationCustom3" class="col-xl-3 col-md-4"></span>
                                    <div class="col-xl-8 col-md-7">
                                        <asp:RequiredFieldValidator CssClass="custom-validator" ID="RequiredFieldValidator5" runat="server" ControlToValidate="Txbpassword1" ErrorMessage="Password is required" ForeColor="Red" align="center" Font-Size="15px">* Please Enter Your New Password</asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator CssClass="custom-validator" ID="PasswordValidator" runat="server" ControlToValidate="Txbpassword1"
                                            ErrorMessage="Password must be at least 8 characters long and contain at least one special character (e.g. @, #, $, %)"
                                            ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@#$%^])[A-Za-z\d@#$%^]{8,}$"
                                            ForeColor="Red" align="center" Font-Size="15px"></asp:RegularExpressionValidator>
                                        <%-- <ul id="password-criteria">
                                            <li>At least 8 characters long</li>
                                            <br>
                                            <li>At least one uppercase letter</li>
                                            <br>
                                            <li>At least one lowercase letter</li>
                                            <br>
                                            <li>At least one number</li>
                                            <br>
                                            <li>At least one special character (e.g. @, #, $, %)</li>
                                        </ul>--%>
                                    </div>
                                </div>

                                <!-- Password Input -->
                                <div class="form-group row justify-content-center px-3">
                                    <div class="col-9 px-0">
                                        <div class="input-group">
                                            <%--input type="password" name="confPassword" id="empPwd2" placeholder="&#xf084; &nbsp; Confirm New Password" class="form-control border-info placeicon" style="margin-left: 20%;">--%>
                                            <asp:TextBox ID="Txbpassword2" runat="server" TextMode="Password" placeholder="&#xf084; &nbsp; Confirm New Password" CssClass="form-control border-info placeicon" Style="margin-left: 20%;" Required="true"></asp:TextBox>
                                            <div class="input-group-append">

                                                <button class="btn btn-outline-secondary" type="button" id="togglePassword2"><i class="fa fa-eye"></i></button>
                                                <%--     <asp:Button ID="togglePassword"  CssClass="btn btn-outline-secondary"  runat="server"  />--%>
                                            </div>
                                        </div>
                                    </div>
                                    <span for="validationCustom3" class="col-xl-3 col-md-4"></span>
                                    <div class="col-xl-8 col-md-7">
                                        <asp:RequiredFieldValidator CssClass="custom-validator" ID="RequiredFieldValidator6" runat="server" ControlToValidate="Txbpassword2" ErrorMessage="Password is required" ForeColor="Red" align="center" Font-Size="15px">* Please Enter Your New Confirm Password</asp:RequiredFieldValidator>
                                        <%--         <asp:RegularExpressionValidator CssClass="custom-validator" ID="RegularExpressionValidator1" runat="server"  ControlToValidate="Txbpassword2"
                                        ErrorMessage="Password must be at least 8 characters long and contain at least one special character (e.g. @, #, $, %)"
                                        ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@#$%^])[A-Za-z\d@#$%^]{8,}$"
                                        ForeColor="Red" align="center" Font-Size="15px"></asp:RegularExpressionValidator>--%>
                                        <asp:CompareValidator CssClass="custom-validator" Display="Dynamic" ID="PasswordCompare" runat="server" ControlToCompare="Txbpassword1" ControlToValidate="Txbpassword2" ErrorMessage="New Password and New Confirmation Password must match." EnableClientScript="true" ForeColor="Red" align="center" Font-Size="15px"></asp:CompareValidator>

                                    </div>
                                </div>


                                <!-- RESET  Button -->
                                <div class="form-group row justify-content-center">
                                    <div class="col-3 px-3 mt-3">
                                        <%-- <input type="submit" value="Reset" id="submit-button"
                                                   class="btn btn-block btn-info">--%>
                                        <asp:Button ID="Btnsubmit" OnClick="Btnsubmit_Click" CssClass="btn btn-block btn-info" runat="server" Text="Reset" />
                                    </div>
                                </div>
                            </form>
                        </div>



                    </div>
                </div>
            </div>
        </div>
    </div>

    <script type='text/javascript'
        src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>


    <script src="/assets/js/jquery-3.3.1.min.js"></script>

    <script>
        var togglePassword = $("#togglePassword2");
        var passwordInput = $("#<%= Txbpassword2.ClientID %>");

        togglePassword.on("click", function (event) {
            event.preventDefault();
            if (passwordInput.attr("type") === "password") {
                passwordInput.attr("type", "text");
                togglePassword.html('<i class="fa fa-eye-slash"></i>');
            } else {
                passwordInput.attr("type", "password");
                togglePassword.html('<i class="fa fa-eye"></i>');
            }
        });

        var togglePassword2 = $("#togglePassword1");
        var passwordInput2 = $("#<%= Txbpassword1.ClientID %>");

        togglePassword2.on("click", function (event) {
            event.preventDefault();
            if (passwordInput2.attr("type") === "password") {
                passwordInput2.attr("type", "text");
                togglePassword1.html('<i class="fa fa-eye-slash"></i>');
            } else {
                passwordInput2.attr("type", "password");
                togglePassword2.html('<i class="fa fa-eye"></i>');
            }
        });
    </script>

    <%--                        <script>
                            const togglePassword = document.querySelector('#togglePassword1');
                            const password = document.querySelector('#<%= Txbpassword1.ClientID %>');
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
           const password2 = document.querySelector('#<%= Txbpassword2.ClientID %>');
           togglePassword2.addEventListener('click', function (e) {
               // toggle the type attribute
               const type = password2.getAttribute('type') === 'password' ? 'text' : 'password';
               password2.setAttribute('type', type);
               // toggle the eye slash icon
               togglePassword2.classList.toggle('fa-eye-slash');
           });
       </script>--%>

    <%--<script>
        $(document).ready(function () {
            const passwordField = document.getElementById('<%= Txbpassword1.ClientID %>');
            const confirmPasswordField = document.getElementById('<%= Txbpassword2.ClientID %>');
            const passwordCriteria = document.getElementById('password-criteria');
            const passwordCriteriaItems = passwordCriteria.getElementsByTagName('li');
            const passwordRegexes = [
                /^.{8,}$/,
                /[A-Z]/,
                /[a-z]/,
                /[0-9]/,
                /[!@#$%^&*()_+\-=[\]{};':"\\|,.<>/?]/
            ]; // Change these regexes to match your desired password criteria
            const passwordMismatchMessage = document.getElementById('password-mismatch-message');

            function validatePassword() {
                const password = passwordField.value;
                const confirmPassword = confirmPasswordField.value;
                let passwordsMatch = true;
                let passwordformat = true;

                for (let i = 0; i < passwordCriteriaItems.length; i++) {
                    if (passwordRegexes[i].test(password)) {
                        passwordCriteriaItems[i].classList.remove('invalid');
                        passwordCriteriaItems[i].classList.add('valid');
                        passwordformat = false;
                        $('#<%= Btnsubmit.ClientID %>').prop('disabled', false); // disable submit button
                } else {
                    passwordCriteriaItems[i].classList.remove('valid');
                    passwordCriteriaItems[i].classList.add('invalid');
                    passwordsMatch = false;
                    passwordformat = true;
                    $('#<%= Btnsubmit.ClientID %>').prop('disabled', true); // disable submit button
                }
            }

            if (password === confirmPassword) {
                confirmPasswordField.classList.remove('invalid');
                confirmPasswordField.classList.add('valid');
                passwordMismatchMessage.style.display = 'none';
                $('#<%= Btnsubmit.ClientID %>').prop('disabled', false); // disable submit button
            } else {
                confirmPasswordField.classList.remove('valid');
                confirmPasswordField.classList.add('invalid');
                passwordsMatch = false;
                passwordMismatchMessage.style.display = 'block';
                $('#<%= Btnsubmit.ClientID %>').prop('disabled', true); // disable submit button
            }

            if (passwordsMatch) {
                $('#<%= Btnsubmit.ClientID %>').prop('disabled', false);
            } else {
                $('#<%= Btnsubmit.ClientID %>').prop('disabled', true);
                }

                return passwordsMatch;
            }

            passwordField.addEventListener('input', validatePassword);
            confirmPasswordField.addEventListener('input', validatePassword);
        });
    </script>--%>
</asp:Content>
