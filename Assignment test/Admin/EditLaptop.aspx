<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="EditLaptop.aspx.cs" Inherits="WebApplication1.Admin.EditLaptop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContent" runat="server">
     <div>
        <h1 style="margin-bottom: 0px">Edit Laptop</h1>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Main" runat="server">
     <form id="form1" runat="server">
        <div class="additional-formaction">
            <button id="Button1" class="btn btn-primary">Back</button>

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
                        <asp:Label ID="Label7" runat="server" Text="Brand"></asp:Label>
                    </td>
                    <td class="auto-style1">:</td>
                    <td>
                        <asp:TextBox ID="Brand" runat="server"></asp:TextBox>


                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
                    </td>
                    <td class="auto-style1">:</td>
                    <td>
                        <asp:TextBox ID="Description" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="Price"></asp:Label>
                    </td>
                    <td class="auto-style1">:</td>
                    <td>
                        <asp:TextBox ID="Price" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <!-- Divider -->
                <tr>
                    <td colspan="3">
                        <hr class="sidebar-divider">

                        <!-- Heading -->
                        <div class="sidebar-heading">
                            <h2>Component</h2>
                        </div>
                    </td>

                </tr>

                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="CPU"></asp:Label>
                    </td>
                    <td class="auto-style1">:</td>
                    <td>
                        <div>
                          <asp:Label ID="Label3" runat="server" Text="Default CPU"></asp:Label>

                            <asp:DropDownList ID="DefaultCPU" runat="server">
                                <asp:ListItem>Ryzen 5</asp:ListItem>
                                <asp:ListItem>Ryzen 7</asp:ListItem>
                                <asp:ListItem>Intel I5</asp:ListItem>

                            </asp:DropDownList>
                        </div>
                      
                        <table style="width: 100%">
                            <tr>
                                <td>

                                    <input type="checkbox" id="option1" name="option1" value="Ryzen 5">
                                    <label for="option1">Ryzen 5</label>
                                    <input type="text" id="price1" name="price1" placeholder="Price">
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" id="option3" name="option3" value="Intel I5">
                                    <label for="option3">Intel I5</label>
                                    <input type="text" id="price3" name="price3" placeholder="Price">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" id="option2" name="option2" value="Ryzen 7">
                                    <label for="option2">Ryzen 7</label>
                                    <input type="text" id="price2" name="price2" placeholder="Price">
                                </td>
                            </tr>
                        </table>


                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Text="RAM"></asp:Label>
                    </td>
                    <td class="auto-style1">:</td>
                    <td>
                        <div>
                          <asp:Label ID="Label8" runat="server" Text="Default RAM"></asp:Label>

                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>4GB</asp:ListItem>
                                <asp:ListItem>8GB</asp:ListItem>
                                <asp:ListItem>16GB</asp:ListItem>

                            </asp:DropDownList>
                        </div>
                      
                        <table style="width: 100%">
                            <tr>
                                <td>

                                    <input type="checkbox" id="ramOption1" name="option1" value="4GB">
                                    <label for="option1">4GB</label>
                                    <input type="text" id="ramPrice1" name="price1" placeholder="Price">
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" id="ramOption2" name="option3" value="8GB">
                                    <label for="option3">8GB</label>
                                    <input type="text" id="ramPrice2" name="price3" placeholder="Price">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" id="ramOption3" name="option2" value="16GB">
                                    <label for="option2">16GB</label>
                                    <input type="text" id="ramPrice3" name="price2" placeholder="Price">
                                </td>
                            </tr>
                        </table>


                    </td>
                </tr>
                 <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label9" runat="server" Text="GPU"></asp:Label>
                    </td>
                    <td class="auto-style1">:</td>
                    <td>
                        <div>
                          <asp:Label ID="Label10" runat="server" Text="Default GPU"></asp:Label>

                            <asp:DropDownList ID="DropDownList2" runat="server">
                                <asp:ListItem>RTX1010</asp:ListItem>
                                <asp:ListItem>RTX2020</asp:ListItem>
                                <asp:ListItem>RTX3030</asp:ListItem>

                            </asp:DropDownList>
                        </div>
                      
                        <table style="width: 100%">
                            <tr>
                                <td>

                                    <input type="checkbox" id="GPUOption1" name="option1" value="RTX1010">
                                    <label for="option1">RTX1010</label>
                                    <input type="text" id="GPUPrice1" name="price1" placeholder="Price">
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" id="GPUOption2" name="option3" value="RTX2020">
                                    <label for="option3">RTX2020</label>
                                    <input type="text" id="GPUPrice2" name="price3" placeholder="Price">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" id="GPUOption3" name="option2" value="RTX3030">
                                    <label for="option2">RTX3030</label>
                                    <input type="text" id="GPUPrice3" name="price2" placeholder="Price">
                                </td>
                            </tr>
                        </table>


                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label11" runat="server" Text="Storage"></asp:Label>
                    </td>
                    <td class="auto-style1">:</td>
                    <td>
                        <div>
                          <asp:Label ID="Label12" runat="server" Text="Default Storage"></asp:Label>

                            <asp:DropDownList ID="DropDownList3" runat="server">
                                <asp:ListItem>512GB</asp:ListItem>
                                <asp:ListItem>1TB</asp:ListItem>
                                <asp:ListItem>2TB</asp:ListItem>

                            </asp:DropDownList>
                        </div>
                      
                        <table style="width: 100%">
                            <tr>
                                <td>

                                    <input type="checkbox" id="storageOption1" name="option1" value="512GB">
                                    <label for="option1">512GB</label>
                                    <input type="text" id="storagePrice1" name="price1" placeholder="Price">
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" id="storageOption2" name="option3" value="1TB">
                                    <label for="option3">1TB</label>
                                    <input type="text" id="storagePrice2" name="price3" placeholder="Price">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" id="storageOption3" name="option2" value="2TB">
                                    <label for="option2">2TB</label>
                                    <input type="text" id="storagePrice3" name="price2" placeholder="Price">
                                </td>
                            </tr>
                        </table>


                    </td>
                </tr>
            </table>
            <div class="additional-formaction">
                <asp:Button ID="CreateComponentBtn" Style="padding: 6px 12px" runat="server" Text="Save" class="btn btn-primary" />

            </div>
        </div>


    </form>
</asp:Content>
