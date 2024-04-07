<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="CreateComponent.aspx.cs" Inherits="WebApplication1.Admin.CreateComponent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContent" runat="server">
     <div>
       <h1 style="margin-bottom: 0px">Create Component</h1>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Main" runat="server">
    <form id="form1" runat="server">
        <div class="additional-formaction">
            <a href="ViewComponent.aspx"> <button id="Button1" class="btn btn-primary">Back</button></a>
           

        </div>
        <div class="formdiv">

            <table style="width: 100%;">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style1">:</td>
                    <td>
                        <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="Category"></asp:Label>
                    </td>
                    <td class="auto-style1">:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" >
                            <asp:ListItem>CPU</asp:ListItem>
                            <asp:ListItem>RAM</asp:ListItem>
                            <asp:ListItem>GPU</asp:ListItem>
                            <asp:ListItem>Storage</asp:ListItem>

                        </asp:DropDownList>
                            
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Memory"></asp:Label>
                    </td>
                    <td class="auto-style1">:</td>
                    <td>
                        <asp:TextBox ID="Memory" runat="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="Cores"></asp:Label>
                    </td>
                    <td class="auto-style1">:</td>
                    <td>
                        <asp:TextBox ID="Cores" runat="server" ></asp:TextBox>
                    </td>
                </tr>
               
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Processor"></asp:Label>
                    </td>
                    <td class="auto-style1">:</td>
                    <td>
                        <asp:TextBox ID="Processor" runat="server"></asp:TextBox>
                    </td>
                </tr>
                
                
            </table>
            <div class="additional-formaction">
            <asp:Button ID="CreateComponentBtn" Style="padding:6px 12px"  runat="server" Text="Create" class="btn btn-primary"  />

        </div>
        </div>
        

    </form>
</asp:Content>

