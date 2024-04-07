<%@ Page Title="" Language="C#" MasterPageFile="~/Laptop.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Assignment_test.WebForm7" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="container mt-4">

    <p class="mb-4">Enjoy our variety of laptops for your gaming and graphic needs. Take full advantage of our options. We won't settle for good or great; we aim to deliver the product you truly deserve.</p>

        <!-- Bootstrap Carousel -->
        <div id="carouselExampleIndicators" class="carousel slide mb-4" data-bs-ride="carousel" data-bs-interval="3000">
            <!-- Set interval to 3000 milliseconds (3 seconds) -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="assets/images/hp1.png" class="d-block w-100 img-fluid" style="height: 400px; object-fit: cover;" alt="Slide 1">
                </div>
                <div class="carousel-item">
                    <img src="assets/images/hp2.jpeg" class="d-block w-100 img-fluid" style="height: 400px; object-fit: cover;" alt="Slide 2">
                </div>
                <div class="carousel-item">
                    <img src="assets/images/hp3.jpg" class="d-block w-100 img-fluid" style="height: 400px; object-fit: cover;" alt="Slide 3">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <!-- End of Bootstrap Carousel -->
    <!-- Bootstrap Cards -->
        <div class="row ">
            <div class="col-md-4 mb-4">
                <div class="card justify-content-center align-items-center border border-light p-3">
                    <img src="assets/images/payIcon.png" class="card-img-top rounded-circle" style="height: 100px; width: 100px" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Buy now Pay Later</h5>
                        <p class="card-text">We provide a buy now pay later option that can be spread out over 24 months.</p>
                    
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card justify-content-center align-items-center border border-light p-3">
                    <img src="assets/images/warrantyIcon.png" class="card-img-top rounded-circle" style="height: 100px; width: 100px" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Warranty</h5>
                        <p class="card-text">Offers a minimum 2-year warranty with an option to upgrade to 3 years, so you can rest assured your product is covered.</p>
                        
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card justify-content-center align-items-center border border-light p-3">
                    <img src="assets/images/supportIcon.png" class="card-img-top rounded-circle" style="height: 100px; width: 100px" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Support</h5>
                        <p class="card-text">Stay secure with our lifetime support. Our commitment to your satisfaction doesn't end with the purchase.</p>
                        
                    </div>
                </div>
            </div>
        </div>
        <!-- End of Bootstrap Cards -->   

</div>
</asp:Content>

