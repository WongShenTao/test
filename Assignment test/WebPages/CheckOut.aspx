<%@ Page Language="C#" MasterPageFile="~/Laptop.master" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="webApplicationAssignment.CheckOut" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <title>Check Out</title>
</asp:Content>


<asp:Content ID="checkOut" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
<form id="CheckOutForm" runat="server">
<div class="checkOutPage">

<br/><br/><br/>
        <h2 style="text-align:center;">Check Out</h2>
    <br/><br/>
<div class="itemList">
     
    <%-- testdata --%>
    <table class="breadcrumb-section innerTable" style="width: 70%; border-collapse: collapse;" id="innerTable">  <%-- title table --%>
        <tr>
            <th class="innerth productNameTD unselectable" style="border-left: 1px solid black;">Name</th>
            <th class="innerth componentTD unselectable">Component</th>
            <th class="innerth productPriceTD unselectable">Unit Price</th>
            <th class="innerth quantityTD unselectable">Quantity</th>
            <th class="innerth totalPriceTD unselectable" style="border-right: 1px solid black;">Total Price</th>
        </tr>
    </table>
    <br /><br />
    <%-- repeater  --%>
    <asp:Repeater ID="orderItem" runat="server" OnItemDataBound="outerRepeater_ItemDataBound">
        <ItemTemplate>
            <table class="breadcrumb-section innerTable" style="width: 70%; border-collapse: collapse;">   <%-- item list table --%>
            <tr>
                <td class="innerTD productNameTD" style="border-left: 1px solid black;">
                    <asp:Label Class="unselectable" ID="lblName" runat="server" Text='<%# Eval("Product.name")%>'></asp:Label>
                </td>
                <td class="innerTD componentTD">
                    <table>
                        <asp:Repeater ID="innerRepeater" runat="server">
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
                    </table>
                </td>
                <td class="innerTD productPriceTD">
                    <asp:Label Class="unselectable" ID="lblProductPrice" runat="server" Text='<%# Eval("unit_price")%>'></asp:Label>
                </td>
                <td class="innerTD quantityTD">
                    <asp:Label class="innerQuantity unselectable" ID="IPQuantity" runat="server" Text='<%# Eval("quantity")%>'></asp:Label>
                </td>
                <td class="innerTD totalPriceTD" style="border-right: 1px solid black;">
                    <asp:Label Class="unselectable" ID="lblTotalPrice" runat="server" Text='<%# Eval("total_price")%>'></asp:Label>
                </td>
            </tr>
            </table>
        </ItemTemplate>
        <SeparatorTemplate>
            <br />
        </SeparatorTemplate>
    </asp:Repeater>
    <br /><br />
</div>
<div class="breadcrumb-section footerTableDiv">
    <table class="footerTable"><tr><td class="footerTableTD1">

        <table class="addressTable">
            <tr>
                <td>
                    <asp:Label ID="lblRecipient" runat="server" Text="Recipient : *"></asp:Label><br />
                    <asp:TextBox CssClass="txtBox" ID="txtRecipient" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRecipient" ErrorMessage="Username is required" ForeColor="Red" align="center" Font-Size="15px">* Please Enter Your Recipient Name</asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:Label ID="lblPhoneNum" runat="server" Text="Phone Number : *"></asp:Label><br />
                    <asp:TextBox CssClass="txtBox" ID="txtPhoneNum" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPhoneNum" ErrorMessage="Username is required" ForeColor="Red" align="center" Font-Size="15px">* Please Enter Your Phone Number</asp:RequiredFieldValidator>
               
                 </td>
                <td class="">
                    <asp:Label ID="lblAddress" runat="server" Text="Address: *"></asp:Label><br />
                    <asp:TextBox CssClass="txtBox" ID="txtAddress" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAddress" ErrorMessage="Username is required" ForeColor="Red" align="center" Font-Size="15px">* Please Enter Your Address</asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:Label ID="lblDiscountCode" runat="server" Text="Discount Code: "></asp:Label><br />
                    <asp:TextBox CssClass="txtBox" ID="txtDiscountCode" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>

    </td><td class="footerTableTD2">

        <table class="totalPriceTable">
            <tr>
                <td>
                    <ul>
                        <li>
                            <asp:Button CssClass="btn-solid placeOrderButton" ID="btnPlaceOrder" runat="server" Text="Place Order" OnClick="btnPlaceOrder_Click" />
                        </li>
                        <li class="lblTotalLi">
                            <asp:Label ID="lblTotal1" runat="server" Text=""></asp:Label>
                            <asp:Label ID="lblTotal2" runat="server" Text=""></asp:Label>
                        </li>
                    </ul>
                </td>
            </tr>
        </table>
    </td></tr></table>
</div>

    <asp:HiddenField ID="HFItemListID" runat="server" />
    <asp:HiddenField ID="HFTotalPrice" runat="server" />
</div>
</form>
</body>
<script>
    
</script>
</html>
        <style type="text/css">

        .checkOutPage .unselectable {
            -webkit-touch-callout: none;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }
        .checkOutPage .innerTable {
            margin-left: auto;
            margin-right: auto;
            width: 100%; 
            border-collapse: collapse;
        }
        .checkOutPage .innerth {
            border-top: 1px solid black;
            border-bottom: 1px solid black;
            height: 50px;
            text-align: left;
        }
        .checkOutPage .innerth2 {
            height:35px;
        }
        .checkOutPage .innerTD {
            border-top: 1px solid black;
            border-bottom: 1px solid black;
            text-align: left;
            height: 110px;
        }
        .checkOutPage .productNameTD {
            padding-left: 30px;
        }
        .checkOutPage .componentTD {
            width: 26%;
        }
        .checkOutPage .componentTD ul {
            list-style-type: none;
            display: inline-block;
        }
        .checkOutPage .productPriceTD {
            width: 12%;
        }
        .checkOutPage .quantityTD {
            width: 18%;
            padding-right:12px;
        }
        .checkOutPage .totalPriceTD {
            width: 14%;
        }
        .checkOutPage .innerTD2 {
            height:10px;
        }
        .checkOutPage .innerQuantity {
            pointer-events:none;
            height: 26px;
            width: 50px;
            border: none;
            text-align: right;
            padding-right: 5px;
        }
        .checkOutPage .footerTableDiv {
            position: sticky;
            bottom: 0px;
            width:100%;
            border: 1px solid black;
            padding: 0px;
        }
        .checkOutPage .footerTable {
            width: 100%; 
            border-collapse: collapse;
            border: none;
        }
        .checkOutPage .footerTableTD1 {
            float:left;
            width: 49%;
        }
        .checkOutPage .footerTableTD2 {
            float:right;
            width: 49%;
        }
        .checkOutPage .addressTable {
            width: 100%; 
            border-collapse: collapse;
            border: none;
            height: 110px;
            text-align: left;
        }
        .checkOutPage .addressTable td {
            padding-left: 20px;
        }
        .checkOutPage .addressTable ul {
            list-style-type: none;
        }
        .checkOutPage .addressTable li {
            float: left;
            margin-right: 20px;
        }
        .checkOutPage .lblSelectAll {
            padding-left:30px;
        }
        .checkOutPage .totalPriceTable {
            width: 100%; 
            border-collapse: collapse;
            border: none;
            height: 110px;
            text-align: right;
        }
        .checkOutPage .totalPriceTable td {
            padding-right: 20px;
        }
        .checkOutPage .totalPriceTable ul {
            list-style-type: none;
        }
        .checkOutPage .totalPriceTable li {
            float: right;
            margin-right: 20px;
            height: 40px
        }
        .checkOutPage .totalPriceTable .lblTotalLi {
            padding-top: 8px;
        }
        .checkOutPage .placeOrderButton {
            border: none;
            cursor: pointer;
            height: 35px;
            width: 110px;
            padding: 0px;
            font-weight: bold;
        }
        .checkOutPage .txtBox {
            background-color: rgb(70, 70, 70);
            color: white;
        }
    </style>
    </asp:Content>