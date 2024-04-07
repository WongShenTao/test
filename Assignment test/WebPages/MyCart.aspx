<%@ Page Language="C#" MasterPageFile="~/Laptop.master" AutoEventWireup="true" CodeBehind="MyCart.aspx.cs" Inherits="webApplicationAssignment.MyCart" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <title>My Cart</title>
</asp:Content>


<asp:Content ID="myCartPage" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
<form id="MyCart" runat="server">
<div class="myCartPage">

<br/><br/><br/>

<div class="itemList">
        <h2 style="text-align:center;">My Cart</h2>
    <br/><br/>
    <%-- testdata --%>
    <asp:Button ID="btnTestData" runat="server" Text="Get Test Data" OnClick="btnTestData_Click" />
        
    <table class="breadcrumb-section innerTable" style="width: 70%; border-collapse: collapse;" id="innerTable">  <%-- title table --%>
        <tr>
            <th class="innerth checkBoxTD" style="border-left: 1px solid black;">
                <label class="container">
                    <input class="checkBox" type="checkbox" onclick="toggle(this)" name="sAll"/>
                    <span class="checkmark"></span>
                </label>
            </th>
            <th class="innerth productNameTD unselectable">Name</th>
            <th class="innerth componentTD unselectable">Component (click to edit)</th>
            <th class="innerth productPriceTD unselectable">Unit Price</th>
            <th class="innerth quantityTD unselectable">Quantity</th>
            <th class="innerth totalPriceTD unselectable" style="border-right: 1px solid black;">Total Price</th>
        </tr>
    </table>
    <br /><br />
    <%-- repeater  --%>
    <asp:Repeater ID="cartItem" runat="server" OnItemDataBound="outerRepeater_ItemDataBound">
        <ItemTemplate>
            <table class="breadcrumb-section innerTable" style="width: 70%; border-collapse: collapse;">   <%-- item list table --%>
            <tr>
                <td class="innerTD checkBoxTD" style="border-left: 1px solid black;">
                    <label class="container"> 
                        <input class="itemListCheckBox checkBox" type="checkbox" id='<%# Eval("id")%>'/>
                        <span class="checkmark"></span>
                    </label>
                </td>
                <td class="innerTD productNameTD">
                    <asp:Label Class="unselectable" ID="lblName" runat="server" Text='<%# Eval("Product.name")%>'></asp:Label>
                </td>
                <td class="innerTD componentTD">
                    <table class="componentTable" onclick="redirectComponent('<%# Eval("id")%>')">
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
                    <table class="quantityTable">
                        <tr>
                            <td class="buttonTD">
                                <asp:Button Class="btn-solid innerButton unselectable" ID="btnQuantityMinus" runat="server" Text="-" OnCommand="quantityMinus_Click" CommandArgument='<%# Eval("id")%>' />
                            </td>
                            <td>
                                <input class="form-control quantityInput unselectable" id="IPQuantity" type="text" value='<%# Eval("quantity")%>'/>
                            </td>
                            <td class="buttonTD">
                                <asp:Button Class="btn-solid innerButton unselectable" ID="btnQuantityPlus" runat="server" Text="+" OnCommand="quantityPlus_Click" CommandArgument='<%# Eval("id")%>' />
                            </td>
                        </tr>
                    </table>
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

<div class="footerTableDiv">
    <table class=" footerTable"><tr><td class="footerTableTD1">

        <table class="actionTable">
            <tr>
                <td>
                    <ul>
                    <li class="selectAllLi">
                        <label class="container" style="float:left">
                            <input class="checkBox" type="checkbox" onclick="toggle(this)" name="sAll"/>
                            <span class="checkmark" style="top: -5px;"></span>
                        </label>
                        <asp:Label class="lblSelectAll" ID="lblSelectAll" runat="server" Text=""></asp:Label>
                    </li>
                    <li>
                        <asp:Button CssClass="btn-solid deleteButton" ID="deleteChecked" runat="server" Text="Delete" OnClick="deleteChecked_Click" OnClientClick="getCheckedCheckBox()" />
                    </li>
                    </ul>
                </td>
            </tr>
        </table>

    </td><td class="footerTableTD2">

        <table class="totalPriceTable">
            <tr>
                <td>
                    <ul>
                        <li>
                            <asp:Button CssClass="btn-solid checkoutButton" ID="btnCheckOut" runat="server" Text="Check Out" OnClientClick="getCheckedCheckBox()" OnClick="btnCheckOut_Click" />
                        </li>
                        <li class="lblTotalLi">
                            <asp:Label ID="lblTotal1" runat="server" Text=""></asp:Label>
                            <asp:Label ID="lblTotal2" runat="server"></asp:Label>
                        </li>
                        <li>
                            <asp:Button CssClass="btn-solid getTotalButton" ID="getTotal" runat="server" Text="Culculate Total" OnClientClick="getCheckedCheckBox()" OnClick="getTotal_Click" />
                        </li>
                    </ul>
                </td>
            </tr>
        </table>
    </td></tr></table>
</div>


<asp:HiddenField ID="HFCheckedString" runat="server" />
</div>
</form>
</body>
<script>
    function toggle(source) {
        var checkboxes = document.querySelectorAll('.checkBox');
        for (var i = 0; i < checkboxes.length; i++) {
            checkboxes[i].checked = source.checked;
        }
    }

    function getCheckedCheckBox() {
        const checkedArray = [];
        const checkboxes = document.getElementsByClassName('itemListCheckBox');

        for (let i = 0; i < checkboxes.length; i++) {
            if (checkboxes[i].checked) {
                checkedArray.push(checkboxes[i].id);
            }
        }

        const hiddenField = document.getElementById('<%= HFCheckedString.ClientID %>');
        hiddenField.value = checkedArray.join(',');
        //alert(checkedArray.join(','));
    }
    function redirectComponent(itemId) {
       /* var location = 'idk.aspx?' + itemId;*/
        var location = '../EditCartProduct.aspx';
        window.location = location;
    }
</script>
</html>
    <style type="text/css">

    .myCartPage .unselectable {
        -webkit-touch-callout: none;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
    }
    /* Hide the browser's default checkbox */
    .myCartPage .container input {
        position: absolute;
        opacity: 0;
        cursor: pointer;
        height: 0;
        width: 0;
    }

    /* Create a custom checkbox */
    .myCartPage .checkmark {
        position: absolute;
        left: 0;
        height: 30px;
        width: 30px;
        background-color: rgb(80, 80, 80);
        top: -12.5px;
        border: 0.1px solid black;
    }

    /* On mouse-over, add a grey background color */
    .myCartPage .container:hover input ~ .checkmark {
        background-color: rgb(100, 100, 100);
    }

    /* When the checkbox is checked, add a blue background */
    .myCartPage .container input:checked ~ .checkmark {
        background-color: red;      /*check box color*/
    }

    /* Create the checkmark/indicator (hidden when not checked) */
    .myCartPage .checkmark:after {
        content: "";
        position: absolute;
        display: none;
    }

    /* Show the checkmark when checked */
    .myCartPage .container input:checked ~ .checkmark:after {
        display: block;
    }

    /* Style the checkmark/indicator */
    .myCartPage .container .checkmark:after {
        left: 9px;
        top: 4px;
        width: 9px;
        height: 15px;
        border: solid white;
        border-width: 0 3px 3px 0;
        -webkit-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        transform: rotate(45deg);
    }


    .myCartPage .container {
        font-size: 22px;
        display: block;
        position: relative;
        cursor: pointer;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
        width: 25px;
        margin-left: auto;
        margin-right: auto;
    }

    .myCartPage .innerTable {
        margin-left: auto;
        margin-right: auto;
        width: 100%; 
        border-collapse: collapse;
    }
    .myCartPage .innerth {
        border-top: 1px solid black;
        border-bottom: 1px solid black;
        height: 50px;
        text-align: left;
    }
    .myCartPage .innerth2 {
        height:35px;
    }
    .myCartPage .innerTD {
        border-top: 1px solid black;
        border-bottom: 1px solid black;
        text-align: left;
        height: 110px;
/*            border: 1px solid red;*/
    }
    .myCartPage .checkBoxTD {
        width: 8%;
    }
    .myCartPage .componentTD {
        width: 26%;
    }
    .myCartPage .productPriceTD {
        width: 12%;
    }
    .myCartPage .quantityTD {
        width: 18%;
        padding-right:12px;
        text-align: left;
    }
    .myCartPage .totalPriceTD {
        width: 14%;
    }
    .myCartPage .innerTD2 {
        height:10px;
    }
    .myCartPage .componentTable {
        border-collapse: collapse;
    }
/*    componentLink hover*/
    .myCartPage .componentTable:hover {
        border: 0.1px solid red;
    }
    .myCartPage .componentTable td {
        text-align:left;
        cursor: pointer;
    }
    .myCartPage .componentLabel {
        width: 100%;
    }
    .myCartPage .quantityInput {
        pointer-events:none;
        height: 100%;
        width: 50px;
        border: none;
        text-align: right;
        padding-right: 5px;
        background-color: rgb(80, 80, 80);
    }
    .myCartPage .quantityTable .buttonTD {
        height: 37px;
        width: 37px;
    }
/*    quantity button*/
    .myCartPage .innerButton {
        background-color: white;
        color: grey;
        border: none;
        cursor: pointer;
        height: 100%;
        width: 100%;
        padding: 0px;
    }
/*    quantityButton hover*/
    .myCartPage .innerButton:hover {
        background-color: whitesmoke;
    }
    /*    quantityButton clicked */
    .myCartPage .innerButton:focus {

    }
    .myCartPage .quantityTable {
        border-collapse:collapse;
    }
    .myCartPage .quantityTable td {
        border: none;
        height: 30px;
    }
    .myCartPage .footerTableDiv {
        position: sticky;
        bottom: 0px;
        width:100%;
        background-color: rgb(35, 35, 35);
        border: 1px solid black;
    }
    .myCartPage .footerTable {
        width: 100%; 
        border-collapse: collapse;
    }
    .myCartPage .footerTableTD1 {
        float:left;
        width: 49%;
    }
    .myCartPage .footerTableTD2 {
        float:right;
        width: 49%;
    }
    .myCartPage .actionTable {
        width: 100%; 
        border-collapse: collapse;
        border: none;
        height: 110px;
        text-align: left;
    }
    .myCartPage .actionTable td {
        padding-left: 20px;
    }
    .myCartPage .actionTable ul {
        list-style-type: none;
    }
    .myCartPage .actionTable li {
        float: left;
        margin-right: 20px;
        height: 40px;
    }
    .myCartPage .lblSelectAll {
        padding-left:30px;
        margin-top: auto;
    }
    .myCartPage .totalPriceTable {
        width: 100%; 
        border-collapse: collapse;
        border: none;
        height: 110px;
        text-align: right;
    }
    .myCartPage .totalPriceTable td {
        padding-right: 20px;
    }
    .myCartPage .totalPriceTable ul {
        list-style-type: none;
    }
    .myCartPage .totalPriceTable li {
        float: right;
        margin-right: 20px;
    }
/*    footer tabel leftside button*/
    .myCartPage .selectAllLi {
        padding-top: 8px;
    }
    .myCartPage .deleteButton {
        border: none;
        cursor: pointer;
        height: 35px;
        width: 100px;
        padding: 0px;
        border: 3px solid red;
        font-weight: bold;
    }
/*    footer tabel rightside button*/
    .myCartPage .lblTotalLi {
        padding-top: 8px;
    }
    .myCartPage .getTotalButton {
        border: none;
        cursor: pointer;
        height: 35px;
        width: 120px;
        padding: 0px;
        border: 3px solid red;
        font-weight: bold;
    }
    .myCartPage .checkoutButton {
        border: none;
        cursor: pointer;
        height: 35px;
        width: 100px;
        padding: 0px;
        border: 3px solid red;
        font-weight: bold;
    }
    .myCartPage td {
    }
</style>
</asp:Content>