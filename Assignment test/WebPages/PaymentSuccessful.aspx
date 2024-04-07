<%@ Page Language="C#" MasterPageFile="~/Laptop.master" AutoEventWireup="true" CodeBehind="PaymentSuccessful.aspx.cs" Inherits="webApplicationAssignment.PaymentSuccessful" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <title>Success</title>
</asp:Content>


<asp:Content ID="paymentSuccessful" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <form id="paymentSuccessFulForm" runat="server">
        <div class="paymentPageDiv">




    <br />
    <table class="breadcrumb-section outterTable"><tr><td>

        <table class="labelTable"><tr><td>
            <asp:Label ID="lblPaySucc" CssClass="paySuccLabel" runat="server" Text="PAYMENT SUCCESSFUL" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large"></asp:Label>
        </td></tr></table>

    </td></tr><tr><td>

        <table class="innerTable">
            <tr class="dataTR">
                <td>
                    The order have been successfully made!
                </td>
            </tr>
            <tr class="doneButtonTR">
                <td colspan="2">
                    <asp:Button CssClass="btn-solid doneButton" ID="btnDone" OnClick="btnDone_Click" runat="server" Text="Check My Order" />
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
    .paymentPageDiv * {
        text-align:center;
    }
    .paymentPageDiv .outterTable {
        width: 70%;
        border: 1px solid black;
        margin: auto;
        border-collapse: collapse;
        box-shadow: rgb(0, 0, 0, 0.85) 0px 5px 15px;
    }
    .paymentPageDiv .outterTable td {
        width: 100%;
/*        border: 1px solid red;*/
    }
    .paymentPageDiv .labelTable {
        border-collapse: collapse;
        text-align:center;
        margin: auto;
        margin-top: 50px;
/*        border: 1px solid red;*/
    }
    .paymentPageDiv .paySuccLabel {
        margin: auto;
        color: red;
        font-weight: bold;
    }
    .paymentPageDiv .innerTable {
        width: 35%;
        margin: auto;
        margin-top: 40px;
        margin-bottom: 40px;
        border-collapse: collapse;
    }
    .paymentPageDiv .innerTable td {
/*        border: 1px solid red;*/
        height: 58px;
    }
    .paymentPageDiv .innerTable .dataTR {
        height: 30px;
        border-bottom: 0.1px solid red;
    }
    .paymentPageDiv .innerTable .dataTR td * {
        font-size: large;
    }
    .paymentPageDiv .innerTable .doneButtonTR {
        height: 120px;
        text-align: center;
        width: 100%;
    }
    .paymentPageDiv .innerTable .doneButton {
        margin-top: 40px;
        height: 40px;
        width: 55%;
        border: none;
        cursor: pointer;
        padding: 0px;
    }
</style>
</asp:Content>