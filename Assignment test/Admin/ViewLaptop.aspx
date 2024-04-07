<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="ViewLaptop.aspx.cs" Inherits="WebApplication1.Admin.ViewLaptop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContent" runat="server">
    <div>
        <h1 style="margin-bottom: 0px">View Laptop</h1>

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
                <a href="CreateLaptop.aspx"><button id="Button1" class="btn btn-primary">Create Laptop</button></a>

    </div>

    <form id="viewLaptop" runat="server">


        <div class="formdiv output-table">
            <%--<asp:Table ID="Table1" runat="server">

                </asp:Table>--%>
            <table style="width: 100%;">
                <tr>
                    <th>ID</th>
                    <th>Brand</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>CPU</th>
                    <th>RAM</th>
                    <th>GPU</th>
                    <th>Storage</th>
                    <th>Visible</th>
                    <th>Action</th>

                </tr>
                <tr>
                    <td>Laptop#123</td>
                    <td>Acer</td>
                    <td>Nitro 44</td>
                    <td>A Gaming Laptop</td>
                    <td>RM4000</td>
                    <td>Intel I5</td>
                    <td>16GB</td>
                    <td>RTX 5050</td>
                    <td>512GB</td>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" />

                    </td>
                    <td>Edit/Delete</td>


                </tr>
                <tr>
                    <td>Laptop#123</td>
                    <td>Acer</td>
                    <td>Nitro 44</td>
                    <td>A Gaming Laptop</td>
                    <td>RM4000</td>
                    <td>Intel I5</td>
                    <td>16GB</td>
                    <td>RTX 5050</td>
                    <td>512GB</td>
                    <td>
                        <asp:CheckBox ID="CheckBox2" runat="server" />

                    </td>
                    <td>Edit/Delete</td>

                </tr>
                <tr>
                    <td>Laptop#123</td>
                    <td>Acer</td>
                    <td>Nitro 44</td>
                    <td>A Gaming Laptop</td>
                    <td>RM4000</td>
                    <td>Intel I5</td>
                    <td>16GB</td>
                    <td>RTX 5050</td>
                    <td>512GB</td>
                    <td>
                        <asp:CheckBox ID="CheckBox3" runat="server" />
                    </td>
                    <td>Edit/Delete</td>

                </tr>
            </table>
        </div>
    </form>
</asp:Content>
