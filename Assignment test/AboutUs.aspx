<%@ Page Title="" Language="C#" MasterPageFile="~/Laptop.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Assignment_test.WebForm7" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
     <style>
        .card-body {
            text-align: justify;
        }
    </style>

   
    <!-- About Us Description Card -->
    <div class="container mt-4">
        <div class="card">
            <div class="card-body">
                <h3 class="card-title">About Us</h3>
                <p class="card-text">Our goal is to deliver the latest  technology along with outstanding customer service. Our goal is to enable everyone to have easy access to technology so that each customer leaves our store confident and happy.</p>
            </div>
        </div>
    </div>

    <!-- Three Cards: Performance, Customization, Support -->
    <div class="container mt-4">
    <div class="row">
        <div class="col-md-4">
            <!-- Image Column -->
            <div class="d-flex h-100">
                <div class="card w-100 border border-light">
                    <img src="assets/images/about_us_bg_2.jpeg" class="card-img-top img-fluid rounded-start" alt="about us image 2">
                    <div class="card-body">
                        <h5 class="card-title">Performance</h5>
                        <p class="card-text">Discover unmatched performance with ABCDEF's carefully chosen collection of high-performance laptops. Our laptops are designed to handle even the most demanding jobs with lightning-fast speeds and flawless multitasking. They are equipped with modern CPUs, generous RAM, and vast storage options. Take advantage of buttery-smooth navigation, quick app launches, and long battery life to be productive all day. Our laptops, which are supported by our committed technical support team and trusted by innumerable happy customers, promise unparalleled performance that enhances your computing experience. Check out our selection to get the ideal laptop to help you achieve your goals.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="d-flex h-100">
                <div class="card w-100 border border-light">
                    <img src="assets/images/about_us_bg_3.jpeg" class="card-img-top img-fluid rounded-start" alt="about us image 3">
                    <div class="card-body">
                        <h5 class="card-title">Customization</h5>
                        <p class="card-text">With our numerous customisation choices at ABCDEF, you can unleash your imagination and make your laptop exactly what you want. Our customisation process puts you in charge of the functionality and performance of your device, from selecting the appropriate RAM and storage combination to selecting the ideal processor and graphics card. We provide a variety of customisation options to meet your demands, whether you're a professional in need of multitasking ability, a designer yearning for rendering capability, or a gamer wanting the highest frame rates. In order to make sure that your laptop is distinctively yours from the minute you turn it on, our knowledgeable staff is there to assist you throughout the customisation process. Discover a world of customised computing experiences by looking through our customisation choices today.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="d-flex h-100">
                <div class="card w-100 border border-light">
                    <img src="assets/images/about_us_bg_1.jpeg" class="img-fluid rounded-start" alt="about us image 1">
                    <div class="card-body">
                        <h5 class="card-title">Support</h5>
                        <p class="card-text">Since customer happiness is our first priority at ABCDEF, we provide extensive support services to make sure you get the most out of your laptop investment. Before, during, or after your purchase, our friendly support staff is here to help with any inquiries, worries, or technical problems you may run across. We can offer quick, individualised support for whatever needs you may have, including selecting the ideal laptop, configuring your computer, resolving software problems, and performance optimisation. In addition, we provide ongoing software updates, upkeep advice, and repair services to ensure your laptop keeps running properly for many years after the original purchase. You can rely on ABCDEF for reliable and dedicated support at every stage.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<div class="container mt-4">
    <!-- First Achievement Card -->
    <div class="row">
        
            <div class="card mb-4 border border-light p-3">
                <div class="row g-0">
                    <!-- Image Column -->
                    <div class="col-md-4">
                        <img src="assets/images/customer_award.png" class="img-fluid rounded-circle" style="height: 100px; width: 100px" alt="Achievement Image 1">
                    </div>
                    <!-- Card Body Column -->
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">Customer Satisfaction Award</h5>
                            <p class="card-text">We take great pride in having received recognised for our constant dedication to satisfying the needs of our customers. This accomplishment demonstrates our commitment to provide top-notch assistance and service and making sure every customer leaves our store smiling.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
   

        <!-- Second Achievement Card -->
        <div class="row">       
            <div class="card mb-4 border border-light p-3">
                <div class="row g-0">
                    <!-- Image Column -->
                    <div class="col-md-4">
                        <img src="assets/images/tech_award.png" class="img-fluid rounded-circle" style="height: 100px; width: 100px" alt="Achievement Image 2">
                    </div>
                    <!-- Card Body Column -->
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">Community Service Award</h5>
                            <p class="card-text">
                                In addition to our dedication to provide premium laptops and support services, we also have a strong desire to give back to the community that has helped us. This award honours our contributions to community projects, whether they are fundraising endeavours, educational activities, or attempts to maintain the environment. We will keep working towards a better tomorrow since it is an honour to have a positive influence outside of our store.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    

        <!-- Third Achievement Card -->
        <div class="row">
       
            <div class="card mb-4 border border-light p-3">
                <div class="row g-0">
                    <!-- Image Column -->
                    <div class="col-md-4">
                        <img src="assets/images/community_award.png" class="img-fluid rounded-circle" style="height: 100px; width: 100px" alt="Achievement Image 3">
                    </div>
                    <!-- Card Body Column -->
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">Tech Excellence Award</h5>
                            <p class="card-text">This esteemed award recognises our commitment to providing innovative technology solutions. Our customers are guaranteed access to the most cutting-edge and high-performing laptops available on the market since we consistently remain ahead of the curve and provide the newest developments in laptop technology. This accomplishment highlights our dedication to provide premium goods and services that push the limits of what's possible in the technology sector.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
</div>

    



  






   

</asp:Content>

