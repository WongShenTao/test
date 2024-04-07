<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="DiscountCode.aspx.cs" Inherits="WebApplication1.Admin.DiscountCode" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 16px;
        }

        .auto-style2 {
            width: 440px;
        }
    </style>
</asp:Content>
<asp:Content ID="Title" ContentPlaceHolderID="HeaderContent" runat="server">
    <div>
                        <h1 style="margin-bottom: 0px">Create Discount Code</h1>

    </div>

</asp:Content>
<asp:Content ID="DiscountCode" ContentPlaceHolderID="Main" runat="server">
     <div class="additional-formaction">
            <a href="ViewDiscountCode.aspx"><button id="Button1" class="btn btn-primary">Back</button></a>

        </div>
    <form id="form1" runat="server">
       
        <div class="formdiv">

            <table style="width: 100%;">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Discount Code ID"></asp:Label>
                    </td>
                    <td class="auto-style1">:</td>
                    <td>
                        <asp:TextBox ID="DiscountCodeID" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Discount Percentage"></asp:Label>
                    </td>
                    <td class="auto-style1">:</td>
                    <td>
                        <asp:TextBox ID="DiscountPercentage" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Quantity"></asp:Label>
                    </td>
                    <td class="auto-style1">:</td>
                    <td>
                        <asp:TextBox ID="DiscountCodeQuantity" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Discount Code Description"></asp:Label>
                    </td>
                    <td class="auto-style1">:</td>
                    <td>
                        <asp:TextBox ID="DiscountCodeDesc" runat="server"></asp:TextBox>
                    </td>
                </tr>

            </table>
            <div class="additional-formaction">
            <asp:Button ID="CreateDiscountCode" Style="padding:6px 12px"  runat="server" Text="Create" class="btn btn-primary" OnClick="Button1_Click" />

        </div>
        </div>
        

    </form>

</asp:Content>
