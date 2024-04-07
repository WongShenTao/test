<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="ViewUser.aspx.cs" Inherits="WebApplication1.Admin.ViewUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContent" runat="server">
    <div>
                        <h1 style="margin-bottom: 0px">View User</h1>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Main" runat="server">
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

    <form id="viewUser" runat="server">


        <div class="formdiv output-table">
            <%--<asp:Table ID="Table1" runat="server">

                </asp:Table>--%>
            <table style="width: 100%;">
                <tr>
                    <th>ID</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Contact</th>
                    <th>Date Created</th>
                    <th>Action</th>


                </tr>
                <tr>
                    <td>Admin1</td>
                    <td>admin1@gmail.com</td>
                    <td>Jalan ikan , Kaula Lumpur</td>
                    <td>0125897531</td>
                    <td>16/8/2019</td>
                    <td>Disable</td>

                </tr>
                <tr>
                   <td>Admin1</td>
                    <td>admin1@gmail.com</td>
                    <td>Jalan ikan , Kaula Lumpur</td>
                    <td>0125897531</td>
                    <td>16/8/2019</td>
                    <td>Disable</td>

                </tr>
                <tr>
                   <td>Admin1</td>
                    <td>admin1@gmail.com</td>
                    <td>Jalan ikan , Kaula Lumpur</td>
                    <td>0125897531</td>
                    <td>16/8/2019</td>
                    <td>Disable</td>

                </tr>
            </table>
        </div>
    </form>
</asp:Content>
