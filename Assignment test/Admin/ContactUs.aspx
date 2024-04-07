<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="WebApplication1.Admin.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Title" ContentPlaceHolderID="HeaderContent" runat="server">
    <div>
                        <h1 style="margin-bottom: 0px">Contact Us</h1>

    </div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <div class="additional-formaction">
        <!-- Topbar Search -->

        <form
            class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
                <input type="text" class="form-control  border-0 small" placeholder="Search for..."
                    aria-label="Search" aria-describedby="basic-addon2">
                <div class="input-group-append">
                    <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                    </button>
                </div>
            </div>
        </form>

    </div>

    <form id="ContactUs" runat="server">


        <div class="formdiv output-table">
            <%--<asp:Table ID="Table1" runat="server">

                </asp:Table>--%>
            <table style="width: 100%;">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Message</th>
                    <th>Date</th>

                </tr>
                <tr>
                    <td>Contact1</td>
                    <td>Jayson</td>
                    <td>jayson@amail.com</td>
                    <td>Hi there</td>
                    <td>12/7/18</td>

                </tr>
                <tr>
                   <td>Contact1</td>
                    <td>Jayson</td>
                    <td>jayson@amail.com</td>
                    <td>Hi there</td>
                    <td>12/7/18</td>
                </tr>
                <tr>
                   <td>Contact1</td>
                    <td>Jayson</td>
                    <td>jayson@amail.com</td>
                    <td>Hi there</td>
                    <td>12/7/18</td>
                </tr>
            </table>
        </div>
    </form>


</asp:Content>
