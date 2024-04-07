<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="ViewAdmin.aspx.cs" Inherits="WebApplication1.Admin.ViewAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Title" ContentPlaceHolderID="HeaderContent" runat="server">
    <div>
                        <h1 style="margin-bottom: 0px">View Admin</h1>

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
        <a href="CreateAdmin.aspx"><button id="Button1" class="btn btn-primary">Create Admin</button></a>
        

    </div>

    <form id="viewAdmin" runat="server">


        <div class="formdiv output-table">
            <%--<asp:Table ID="Table1" runat="server">

                </asp:Table>--%>
            <table style="width: 100%;">
                <tr>
                    <th>ID</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Contact</th>
                    <th>Roles</th>
                    <th>Date Created</th>
                    <th>Action</th>


                </tr>
                <tr>
                    <td>Admin1</td>
                    <td>admin1@gmail.com</td>
                    <td>Jalan ikan , Kaula Lumpur</td>
                    <td>0125897531</td>
                    <td>Admin, User</td>
                    <td>16/8/2019</td>
                    <td>Edit/Delete</td>

                </tr>
                <tr>
                    <td>Admin1</td>
                    <td>admin1@gmail.com</td>
                    <td>Jalan ikan , Kaula Lumpur</td>
                    <td>0125897531</td>
                    <td>Admin, User</td>
                    <td>16/8/2019</td>
                    <td>Edit/Delete</td>

                </tr>
                <tr>
                    <td>Admin1</td>
                    <td>admin1@gmail.com</td>
                    <td>Jalan ikan , Kaula Lumpur</td>
                    <td>0125897531</td>
                    <td>Admin, User</td>
                    <td>16/8/2019</td>
                    <td>Edit/Delete</td>

                </tr>
            </table>
        </div>
    </form>
</asp:Content>
