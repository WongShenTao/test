<%@ Page Title="" Language="C#" MasterPageFile="~/Laptop.Master" AutoEventWireup="true" CodeBehind="CustomerProfile.aspx.cs" Inherits="Assignment_test.WebForm8" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">


      <!-- Customer Profile Section -->
    <div class="container mt-4 text-center mb-4">
        <h2>User Profile</h2>
        <div class="row justify-content-center">
            <div class="col-md-6">
                <!-- Card -->
                <div class="card border border-light">
                    <img src="assets/images/charlie-brown.jpg" class="card-img-top rounded-circle mx-auto mt-3" alt="Customer Image" style="width: 150px; height: 150px;">
                    <div class="card-body">
                        <h5 class="card-title">Charlie Brown</h5>
                        <p class="card-text">Email: charlie_brown1950@gmail.com</p>
                        <p class="card-text">Phone: +60102195008</p>
                        <p class="card-text">Address: 123 Jalan Peanut, Kuala Lumpur, Malaysia</p>
                        <a href="UpdateCustomerProfile.aspx"><button type="button" class="btn btn-solid hover-solid btn-animation">Update Profile</button></a>
                      
                    
                
                    </div>
                </div>
                <!-- End of Card -->    
            </div>
        </div>
    </div>

</asp:Content>
