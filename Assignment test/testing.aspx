<%@ Page Title="" Language="C#" MasterPageFile="~/Laptop.Master" AutoEventWireup="true" CodeBehind="testing.aspx.cs" Inherits="Assignment_test.WebForm1" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
    <!-- Start Home Section-->
    <section class="home">
        <!-- About Us Link Section-->
        <div class="content">
            <h3>New Collections</h3>
            <p>
                With nine brands — Acer, Asus, Alienware, HP, Huawei, Honor, MSI, ROG and Razor  
          in each store, Laptop.Haven offers an average of 1,000 variety of products at 'Always Low Prices'.
            </p>
            <%--<asp:Button ID="btnToAbout1" runat="server" Text="Discover More" class="btn" PostBackUrl="ViewAbout.aspx" />--%>
        </div>
        <!-- About Us Link Section-->
    </section>

    <section class="home-contact">
        <!-- Contact Us Link Section-->
        <div class="content">
            <h3>have any questions?</h3>
            <p>The aim of Laptop.Ware is to be the largest laptop retailer in Malaysia and Brunei.</p>
         <%--   <asp:Button ID="btnToContact1" runat="server" Text="Contact Us" class="btn" PostBackUrl="../Login.aspx" />--%>
        </div>
        <!-- About Us Link Section-->
    </section>
    <!-- End Home Section-->
</asp:Content>