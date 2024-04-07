<%@ Page Title="" Language="C#" MasterPageFile="~/Laptop.Master" AutoEventWireup="true" CodeBehind="GetOtp.aspx.cs" Inherits="Assignment_test.WebForm4" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">


    <!-- breadcrumb start -->
    <div class="breadcrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="page-title">
                        <h2>Get Otp</h2>
                    </div>
                </div>
                <div class="col-sm-6">
                    <nav aria-label="breadcrumb" class="theme-breadcrumb">
                        <ol class="breadcrumb">

                            <li class="breadcrumb-item">
                                <asp:HyperLink ID="home" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink></li>
                            <li class="breadcrumb-item active" aria-current="page">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password</asp:HyperLink></li>
                            <li class="breadcrumb-item active" aria-current="page">Get Otp</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb End -->


    <div class="form-gap"></div>
    <div class="container">
        <div class="row">

            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="text-center">
                        <h3>
                            <i class="fa fa-lock fa-4x"></i>
                        </h3>
                        <h2 class="text-center">Enter OTP</h2>


                        <div class="panel-body">

                            <form id="registerform" runat="server" role="form" class="form">

                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i
                                            class="glyphicon glyphicon-envelope color-blue"></i></span>
                                        <%--       <input
                                                    id="opt" name="otp" placeholder="Enter OTP"
                                                    class="form-control" type="text" required="required">--%>
                                        <asp:TextBox ID="Txbopt" runat="server" CssClass="form-control" required="true" placeholder="Enter OTP"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <%-- <input name="recover-submit"
                                                   class="btn btn-lg btn-primary btn-block"
                                                   value="Reset Password" type="submit">--%>
                                    <asp:Button ID="btnresetpassword" runat="server" Text="Reset Password" OnClick="btnresetpassword_Click" CssClass="btn btn-solid" />
                                </div>

                                <input type="hidden" class="hide" name="token" id="token"
                                    value="">
                            </form>

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
