<%@ Page Title="" Language="C#" MasterPageFile="~/Laptop.Master" AutoEventWireup="true" CodeBehind="UpdateCustomerProfile.aspx.cs" Inherits="Assignment_test.WebForm11" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

       <div class="container mt-4 mb-4">
        
        <div class="row justify-content-center">
            <h2 class="text-center">Update Profile</h2>
            <div class="col-md-6">
                <!-- Form for updating profile -->
                <form id="updateProfileForm" runat="server" class="border p-3">
                    <div class="form-group">
                        <asp:Label ID="lblName" runat="server" AssociatedControlID="txtName" Text="Name"></asp:Label>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control mb-3" placeholder="Name"></asp:TextBox>
                         <asp:RequiredFieldValidator CssClass="custom-validator" ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" ForeColor="Red" align="center" Font-Size="15px">* Please Enter Your Name</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator CssClass="custom-validator" ID="NameValidator" runat="server" ControlToValidate="txtName"
                                        ErrorMessage="Name can only contain letters" ValidationExpression="^[a-zA-Z\s]+$"
                                        ForeColor="Red" align="center" Font-Size="15px"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail" Text="Email"></asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control mb-3" placeholder="Email"></asp:TextBox>

                         <asp:RequiredFieldValidator CssClass="custom-validator" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" ForeColor="Red" align="center" Font-Size="15px">* Please Enter Your Email</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator CssClass="custom-validator" ID="EmailValidator" runat="server" ControlToValidate="txtEmail"
                                        ErrorMessage="Invalid email address. (e.g: my@gmail.com)" ValidationExpression="\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b"
                                        ForeColor="Red" align="center" Font-Size="15px"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblPhone" runat="server" AssociatedControlID="txtPhone" Text="Phone"></asp:Label>
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control mb-3" placeholder="Phone"></asp:TextBox>
                          <asp:RequiredFieldValidator CssClass="custom-validator" ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone Number is required" ForeColor="Red" align="center" Font-Size="15px">* Please Enter Your Phone Number</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator CssClass="custom-validator" ID="ContactNumberValidator" runat="server" ControlToValidate="txtPhone"
                                        ErrorMessage="Invalid contact number. (e.g: 0123456789/01234567890)" ValidationExpression="^01[0-9]{8,9}$"
                                        ForeColor="Red" align="center" Font-Size="15px"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblAddress" runat="server" AssociatedControlID="txtAddress" Text="Address"></asp:Label>
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control mb-3" placeholder="Address"></asp:TextBox>
                     <asp:RequiredFieldValidator CssClass="custom-validator" ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address is required" ForeColor="Red" align="center" Font-Size="15px">* Please Enter Your Address</asp:RequiredFieldValidator>
                     </div>
                     <div class="form-group">
                        <asp:Button ID="btnUpdate" OnClick="btnUpdate_Click" runat="server" Text="Update Profile" CssClass="btn btn-solid hover-solid btn-animation"  ></asp:Button>
                        <%-- <asp:Button ID="btnBack"  OnClick="btnBack_Click" runat="server"  Text="Back To User Profile"  CssClass="btn btn-secondary" style="padding: 13px 29px;"></asp:Button>--%>
                         <asp:HyperLink ID="HyperLink1" CssClass="btn btn-secondary" style="padding: 13px 29px;" runat="server"  NavigateUrl="~/CustomerProfile.aspx">Back To User Profile</asp:HyperLink>
                    </div>
                </form>
            </div>
        </div>
    </div>


</asp:Content>
