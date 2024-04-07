<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="ViewOrder.aspx.cs" Inherits="WebApplication1.Admin.ViewOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContent" runat="server">
    <div>
                        <h1 style="margin-bottom: 0px">View Order</h1>

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

    <form id="viewOrder" runat="server">


        <div class="formdiv output-table">
            <%--<asp:Table ID="Table1" runat="server">

                </asp:Table>--%>
            <table style="width: 100%;">
                <tr>
                    <th>ID</th>
                    <th>User ID</th>
                    <th>Cart ID</th>
                    <th>Payment ID</th>
                    <th>Order Status</th>
                    <th>Delivery Address</th>
                    <th>Date</th>
                    <th>Total Amount</th>
                    <th>Action</th>
                </tr>
                <tr>
                    <td>Order#123</td>
                    <td>User123</td>
                    <td>Cart#145</td>
                    <td>Payment#5332</td>
                    <td>Dispatched</td>
                    <td>jalan eko, selangor</td>
                    <td>7/8/2019</td>
                    <td>RM5000</td>
                    <th>Modify</th>


                </tr>
                <tr>
                    <td>Order#123</td>
                    <td>User123</td>
                    <td>Cart#145</td>
                    <td>Payment#5332</td>
                    <td>Dispatched</td>
                    <td>jalan eko, selangor</td>
                    <td>7/8/2019</td>
                    <td>RM5000</td>
                    <th>Modify</th>

                </tr>
                <tr>
                   <td>Order#123</td>
                    <td>User123</td>
                    <td>Cart#145</td>
                    <td>Payment#5332</td>
                    <td>Dispatched</td>
                    <td>jalan eko, selangor</td>
                    <td>7/8/2019</td>
                    <td>RM5000</td>
                    <th>Modify</th>

                </tr>
            </table>
        </div>
    </form>
</asp:Content>
