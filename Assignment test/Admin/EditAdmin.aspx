<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="EditAdmin.aspx.cs" Inherits="WebApplication1.Admin.EditAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContent" runat="server">
     <div>
                        <h1 style="margin-bottom: 0px">Edit Admin</h1>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Main" runat="server">
    <form id="form1" runat="server">
        <div class="additional-formaction">
            <a href="ViewAdmin.aspx"><button id="Button1" class="btn btn-primary">Back</button></a>
            

        </div>
        <div class="formdiv">

            <table style="width: 100%;">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td class="auto-style1">:</td>
                    <td>
                        <asp:TextBox ID="Email" runat="server" Enabled="false"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style1">:</td>
                    <td>
                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td class="auto-style1">:</td>
                    <td>
                        <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style1">:</td>
                    <td>
                        <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td class="auto-style1">:</td>
                    <td>
                        <asp:TextBox ID="Address" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Text="Contact"></asp:Label>
                    </td>
                    <td class="auto-style1">:</td>
                    <td>
                        <asp:TextBox ID="Contact" runat="server" ></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="Roles"></asp:Label>
                    </td>
                    <td class="auto-style1">:</td>
                    <td>
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server"  Width="100%">
                            <asp:ListItem Selected="true" Enabled="false">User</asp:ListItem>
                            <asp:ListItem Selected="true" Enabled="false">Admin</asp:ListItem>
                            <asp:ListItem>Product Manager</asp:ListItem>
                        </asp:CheckBoxList>
                            
                    </td>
                </tr>
            </table>
            <div class="additional-formaction">
            <asp:Button ID="CreateAdminBtn" Style="padding:6px 12px"  runat="server" Text="Save" class="btn btn-primary"  />

        </div>
        </div>
        

    </form>
</asp:Content>
