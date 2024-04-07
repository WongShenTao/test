<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="Roles.aspx.cs" Inherits="WebApplication1.Admin.Roles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Title" ContentPlaceHolderID="HeaderContent" runat="server">
    <div>
                        <h1 style="margin-bottom: 0px">View Roles</h1>

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

    <form id="Roles" runat="server">


        <div class="formdiv output-table">
            <%--<asp:Table ID="Table1" runat="server">

                </asp:Table>--%>
            <table style="width: 100%;">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Description</th>
                   

                </tr>
                <tr>
                    <td>Admin</td>
                    <td>normal admin</td>
                    <td>manage maintainance</td>
                    

                </tr>
                <tr>
                   <td>Super Admin</td>
                    <td>Root Account</td>
                    <td>Master Admin</td>
                    
                </tr>
                <tr>
                   <td>User</td>
                    <td>normal user</td>
                    <td>application user</td>
                    
                </tr>
            </table>
        </div>
    </form>
</asp:Content>
