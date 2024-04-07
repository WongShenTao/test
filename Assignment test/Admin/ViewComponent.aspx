<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="ViewComponent.aspx.cs" Inherits="WebApplication1.Admin.ViewLaptopComponent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContent" runat="server">
    <div>
                        <h1 style="margin-bottom: 0px">View Laptop Component</h1>

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
        <a href="CreateComponent.aspx"><button id="Button1" class="btn btn-primary">Create Component</button></a>
                

    </div>

    <form id="viewComponent" runat="server">


        <div class="formdiv output-table">
            <%--<asp:Table ID="Table1" runat="server">

                </asp:Table>--%>
            <table style="width: 100%;">
                <tr>
                    <th>ID</th>
                    <th>Category</th>
                    <th>Name</th>
                    <th>Memory</th>
                    <th>Cores</th>
                    <th>Processor</th>
                    <th>Action</th>
                    
                </tr>
                <tr>
                    <td>Component#123</td>
                    <td>Ram</td>
                    <td>Super Ram</td>
                    <td>16GB</td>
                    <td></td>
                    <td></td>
                    <td>Edit</td>
                    


                </tr>
                <tr>
                    <td>Component#4423</td>
                    <td>CPU</td>
                    <td>Ryzen 100</td>
                    <td></td>
                    <td>6</td>
                    <td>12</td>
                    <td>Edit</td>
                    

                </tr>
                <tr>
                   <td>Component#123</td>
                    <td>GPU</td>
                    <td>RTX 9090</td>
                    <td>16GB</td>
                    <td></td>
                    <td></td>
                    <td>Edit</td>

                </tr>
            </table>
        </div>
    </form>
</asp:Content>
