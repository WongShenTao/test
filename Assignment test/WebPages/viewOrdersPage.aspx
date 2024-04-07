<%@ Page Language="C#" MasterPageFile="~/Laptop.master" AutoEventWireup="true" CodeBehind="viewOrdersPage.aspx.cs" Inherits="webApplicationAssignment.viewOrdersPage" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <title>View Orders</title>
</asp:Content>


<asp:Content ID="viewOrdersPage" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
<form id="viewOrdersPageForm" runat="server">
<div class="viewOrdersPage">


<br/><br/>
    <h2 style="text-align:center;">My Order History</h2>
    <br/><br/>
<%-- outer repeater --%>
    <asp:Repeater ID="outerRepeater" runat="server" OnItemDataBound="outerRepeater_ItemDataBound">
        <ItemTemplate>
            <table class="breadcrumb-section outerTable">
                <tr><td colspan="2"  class="itemListTD">


                    <table class="innerTable" id="innerTable">

                        <%-- inner repeater --%>
                        <asp:Repeater ID="innerRepeater" runat="server" OnItemDataBound="innerRepeater_ItemDataBound">
                        <HeaderTemplate>
                            <%-- title tr --%>
                            <tr>
                                <th class="innerth productNameTD unselectable">Name</th>
                                <th class="innerth componentTD unselectable">Component</th>
                                <th class="innerth productPriceTD unselectable">Unit Price</th>
                                <th class="innerth quantityTD unselectable">Quantity</th>
                                <th class="innerth totalPriceTD unselectable">Total Price</th>
                            </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td class="innerTD productNameTD">
                                    <asp:Label Class="unselectable" ID="lblName" runat="server" Text='<%# Eval("Product.name")%>'></asp:Label>
                                </td>
                                <td class="innerTD componentTD">
                                    <table>
                                        <asp:Repeater ID="componentRepeater" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td>
                                                    <asp:Label Height="100%" Width="100%" Class="unselectable componentLabel" ID="lblComponent1" runat="server" Text='<%# Eval("[component1]")%>'></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label Height="100%" Width="100%" Class="unselectable componentLabel" ID="lblComponent2" runat="server" Text='<%# Eval("[component2]")%>'></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label Height="100%" Width="100%" Class="unselectable componentLabel" ID="lblComponent3" runat="server" Text='<%# Eval("[component3]")%>'></asp:Label>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                        </asp:Repeater>
                                        </tr>
                                    </table>
                                </td>
                                <td class="innerTD productPriceTD">
                                    <asp:Label Class="unselectable" ID="lblProductPrice" runat="server" Text='<%# Eval("unit_price")%>'></asp:Label>
                                </td>
                                <td class="innerTD quantityTD">
                                    <asp:Label class="innerQuantity unselectable" ID="IPQuantity" runat="server" Text='<%# Eval("quantity")%>'></asp:Label>
                                </td>
                                <td class="innerTD totalPriceTD">
                                    <asp:Label Class="unselectable" ID="lblTotalPrice" runat="server" Text='<%# Eval("total_price")%>'></asp:Label>
                                </td>
                            </tr>
                        </ItemTemplate>
                        </asp:Repeater> 

                        </table>
                </td></tr>
                <tr>
                    <td class="orderFooterTD1">
                        <asp:Label CssClass="label" ID="lblOrderTotal1" runat="server" Text="Order Total:&nbsp"></asp:Label>
                        <asp:Label ID="Label1" runat="server" Text="RM"></asp:Label>
                        <asp:Label ID="lblOrderTotal2" runat="server" Text='<%# Eval("totalPrice")%>'></asp:Label>
                    </td>
                    <td class="orderFooterTD2">
                        <asp:Label CssClass="label" ID="lblStatus" runat="server" Text='Status:&nbsp&nbsp'></asp:Label>
                        <asp:Label ID="lblOrderStatus" runat="server" Text='<%# Eval("status")%>'></asp:Label>
                    </td>
                </tr>
            </table>

        </ItemTemplate>
        <SeparatorTemplate>
            <br />
            <br />
        </SeparatorTemplate>
    </asp:Repeater>

        <%-- item repeater  --%>
    
    <br /><br />











</div>
</form>
</body>
</html>
        <style type="text/css">
        .viewOrdersPage .outerTable {
            margin-left: auto;
            margin-right: auto;
            width: 70%; 
            border-collapse: collapse;
            border: 0.1px solid black;
            box-shadow: rgb(0, 0, 0, 0.85) 0px 5px 15px;
        }
        .viewOrdersPage .orderFooterTD1, .orderFooterTD2 {
            height: 50px;
        }
        .viewOrdersPage .orderFooterTD1 {
            padding-left: 10px;
        }
        .viewOrdersPage .orderFooterTD2 {
            padding-right: 10px;
            text-align: right;
        }
        .viewOrdersPage .innerTable {
            margin-left: auto;
            margin-right: auto;
            width: 100%; 
            border-collapse: collapse;
        }
        .viewOrdersPage .innerth {
            border-top: 0.1px solid rgb(210, 0, 0);
            border-bottom: 0.1px solid rgb(210, 0, 0);
            height: 20px;
            text-align: left;
            color: white;
            background-color: rgb(210, 0, 0);
        }
        .viewOrdersPage .innerTD {
            border-top: 0.1px solid rgb(80, 80, 80);
            border-bottom: 0.1px solid rgb(80, 80, 80);
            text-align: left;
            height: 80px;
        }
        .viewOrdersPage .checkBoxTD {
            width: 8%;
        }
        .viewOrdersPage .componentTD {
            width: 26%;
        }
        .viewOrdersPage .componentTD ul {
            list-style-type: none;
            display: inline-block;
        }
        .viewOrdersPage .productPriceTD {
            width: 12%;
        }
        .viewOrdersPage .quantityTD {
            width: 18%;
            padding-right:12px;
        }
        .viewOrdersPage .totalPriceTD {
            width: 14%;
        }
        .viewOrdersPage .innerTD2 {
            height:10px;
        }
        .viewOrdersPage .innerQuantity {
            pointer-events:none;
            height: 26px;
            width: 50px;
            border: none;
            text-align: left;
            padding-right: 5px;
            display: inline-block;
        }
        .viewOrdersPage .innerButton {
            background-color: white;
            color: grey;
            border: none;
            cursor: pointer;
            height: 30px;
            width: 30px;
        }
        .viewOrdersPage .footerTableDiv {
            position: sticky;
            bottom: 0px;
            width:100%;
            border: 1px solid black;
        }
        .viewOrdersPage .footerTable {
            width: 100%; 
            border-collapse: collapse;
            border: none;
            background-color: white;
        }
        .viewOrdersPage .footerTableTD1 {
            float:left;
            width: 49%;
        }
        .viewOrdersPage .footerTableTD2 {
            float:right;
            width: 49%;
        }


        .viewOrdersPage .unselectable {
    -webkit-touch-callout: none;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}
        .viewOrdersPage .label {
            color: red;
        }
    </style>
</asp:Content>