<%@ Page Language="C#" MasterPageFile="~/Laptop.master" AutoEventWireup="true" CodeBehind="PaymentPage.aspx.cs" Inherits="webApplicationAssignment.PaymentPage" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <title>Payment</title>
</asp:Content>


<asp:Content ID="paymentPage" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
<form id="paymentPageForm" runat="server">
<div class="paymentPageDiv">




    <br />
    <table class="breadcrumb-section outterTable"><tr><td>

        <table class="innerTable">
            <tr class="dataTR">
                <td class="leftTD">
                    <asp:Label ID="lblTotalPayment1" runat="server" Text="Total Payment"></asp:Label>
                </td>
                <td class="rightTD">
                    <asp:Label ID="lblTotalPayment2" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr class="dataTR">
                <td class="leftTD">
                    <asp:Label ID="lblPaymentMethod" runat="server" Text="Payment Method"></asp:Label>
                </td>
                <td class="rightTD">
                    <asp:DropDownList ID="ddPaymentMethod" runat="server" AutoPostBack="True" CssClass="paymentMethodDD" Height="75%" >
                        <asp:ListItem>Online Banking - Public Bank</asp:ListItem>
                        <asp:ListItem>Online Banking - CIMB Bank</asp:ListItem>
                        <asp:ListItem>Online Banking - MayBank</asp:ListItem>
                        <asp:ListItem>Online Banking - RHB Bank</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr class="payButtonTR">
                <td colspan="2">
                    <asp:Button CssClass="btn-solid payButton" ID="btnPay" runat="server" Text="Pay" OnClick="btnPay_Click" />
                </td>
            </tr>
        </table>

    </td></tr></table>


    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />



</div>
</form>
</body>
</html>
<style>
    .paymentPageDiv .outterTable {
        width: 70%;
        border: 1px solid black;
        margin: auto;
        border-collapse: collapse;
        box-shadow: rgb(0, 0, 0, 0.85) 0px 5px 15px;
    }
    .paymentPageDiv .innerTable {
        width: 35%;
        margin: auto;
        margin-top: 10vh;
        margin-bottom: 10vh;
        border-collapse: collapse;
    }
    .paymentPageDiv .innerTable td {
        height: 58px;
    }
    .paymentPageDiv .innerTable .dataTR {
        height: 30px;
        border-bottom: 0.1px solid lightgrey;
    }
    .paymentPageDiv .innerTable .payButtonTR {
        height: 100px;
        text-align: center;
        width: 100%;
/*        border: 1px solid red;*/
    }
    .paymentPageDiv .innerTable .payButton {
        height: 40px;
        width: 55%;
        border: none;
        cursor: pointer;
        padding: 0px;
    }
    .paymentPageDiv .innerTable .leftTD {
        text-align:left;
    }
    .paymentPageDiv .innerTable .rightTD {
        text-align:right;
    }
    .paymentPageDiv .innerTable .paymentMethodDD {
        text-align: left;
        padding: 10px;
        background-color: rgb(50, 50, 50);
        color: whitesmoke;
    }
    .paymentPageDiv .innerTable .paymentMethodDD * {
        color: white;
    }
</style>
</asp:Content>