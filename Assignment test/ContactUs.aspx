<%@ Page Title="" Language="C#" MasterPageFile="~/Laptop.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Assignment_test.WebForm13" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
 <style>
        /* Custom CSS for FAQ Section */
        #faqAccordion .accordion-button {
            color: #ffffff; /* White text color */
            background-color: #343a40; /* Dark background color for the accordion buttons */
        }

        #faqAccordion .accordion-button:focus {
            box-shadow: none; /* Remove focus box-shadow */
        }

        #faqAccordion .accordion-body {
            color: #ffffff; /* White text color */
            background-color: #212529; /* Dark background color for the accordion body */
        }
    </style>
   <!-- Contact Us Section -->
    <div class="container mt-4">
        <h2>Contact Us</h2>
        <iframe width="100%" height="300" frameborder="0" scrolling="no"   marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3971.8632227232874!2d100.30671767498427!3d5.437733994541649!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x304ac3969aaf94e9%3A0xd998acca3bf68bdb!2sINNISFREE%20Gurney%20Plaza!5e0!3m2!1sen!2smy!4v1711360331551!5m2!1sen!2smy://maps.google.com/maps?width=100%&amp;height=300&amp;hl=en&amp;q=taruc&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe>

        <div class="row">
            <div class="col-md-6">
                <h5>Address:</h5>
                <p>Lot No. 170-01-11, 170, Persiaran Gurney, Pulau Tikus, 10250 George Town, Pulau Pinang</p>
            </div>
            <div class="col-md-6">
                <h5>Telephone:</h5>
                <p>+603-7899342</p>
            </div>
            

        </div>
        <div class="row">
            <div class="col-md-6">
                <h5>Email:</h5>
                <p>Support@Laptop.Com</p>
            </div>
            <div class="col-md-6">
                <h5>Working Hours:</h5>
                <p>Monday - Saturday : 10:00 AM - 10:00 PM</p>
            </div>
            <div class="col-md-6">
                <h5>Fax:</h5>
                <p>03-5205200</p>
            </div>
        </div>
    </div>

    <!-- FAQ Section -->
        <div class="container mt-4">
            <h3>FAQs</h3>
            <div class="accordion" id="faqAccordion">
                <!-- FAQ 1 -->
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingOne">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                            How can I contact your support team?
                        </button>
                    </h2>
                    <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#faqAccordion">
                        <div class="accordion-body">
                             You can reach our dedicated support team by emailing us at info@example.com, calling +1234567890, or visiting our store during business hours. We're here to assist you with any questions, concerns, or technical issues you may have regarding our products or services.
                        </div>
                    </div>
                </div>
                <!-- FAQ 2 -->
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingTwo">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                             What is your return policy?
                        </button>
                    </h2>
                    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#faqAccordion">
                        <div class="accordion-body">
                            We want your purchase to meet all of your needs. You can return your laptop for a full refund or swap it within 30 days of purchase if you're not happy with it for any reason. Please make sure the laptop is in original packaging and has all of its accessories. Please visit our Returns & Exchanges page or get in touch with our support staff for more information about our return policy and how to start a return.
                        </div>
                    </div>
                </div>
                <!-- FAQ 3 -->
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingThree">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                            Do you offer repair services for laptops?
                        </button>
                    </h2>
                    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#faqAccordion">
                        <div class="accordion-body">
                            Yes, we provide repair services for laptops, including hardware and software issues. Whether your laptop needs a screen replacement, battery replacement, or software troubleshooting, our expert technicians are here to help. Please contact our support team or visit our store for more information on our repair services and to schedule an appointment.
                        </div>
                    </div>
                </div>
            </div>
            </div>
    <!-- Contact Form -->
        <div class="container mt-4 mb-4">
            <h3>Contact Us Form</h3>
            <form id="contactForm" class="border p-3" runat="server">
                <div class="mb-3">
                    <asp:Label ID="lblName" runat="server" AssociatedControlID="txtName"   CssClass="form-label">Your Name</asp:Label>
                    <asp:TextBox ID="txtName" runat="server"  CssClass="form-control" placeholder="Enter your name"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="custom-validator" ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" ForeColor="Red" align="center" Font-Size="15px">* Please Enter Your Name</asp:RequiredFieldValidator>
                 </div>
                <div class="mb-3">
                    <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail"  CssClass="form-label">Your Email</asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server"  CssClass="form-control" placeholder="Enter your email"></asp:TextBox>
                 <asp:RequiredFieldValidator CssClass="custom-validator" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" ForeColor="Red" align="center" Font-Size="15px">* Please Enter Your Email</asp:RequiredFieldValidator> 
                <asp:RegularExpressionValidator CssClass="custom-validator" ID="EmailValidator" runat="server" ControlToValidate="txtEmail"
                                        ErrorMessage="Invalid email address. (e.g: my@gmail.com)" ValidationExpression="\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b"
                                        ForeColor="Red" align="center" Font-Size="15px"></asp:RegularExpressionValidator>
                </div>
                <div class="mb-3">
                    <asp:Label ID="lblMessage" runat="server" AssociatedControlID="txtMessage"  CssClass="form-label">Message</asp:Label>
                    <asp:TextBox ID="txtMessage" runat="server"  CssClass="form-control" TextMode="MultiLine" Rows="3" placeholder="Enter your message"></asp:TextBox>
                 <asp:RequiredFieldValidator CssClass="custom-validator" ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMessage" ErrorMessage="Email is required" ForeColor="Red" align="center" Font-Size="15px">* Please Enter Your Message</asp:RequiredFieldValidator>
                  </div>
                <div class="mb-3">
                    <asp:Button ID="btnSubmit" OnClick="btnSubmit_Click" runat="server"  Text="Submit" CssClass="btn btn-solid hover-solid btn-animation"/>
                    <asp:Button ID="btnReset" OnClick="btnReset_Click" runat="server"  Text="Reset"  style="padding: 13px 29px;" CssClass="btn btn-secondary" />

                  
                        
                         
                </div>
            </form>

        </div>


   


        
   
   

</asp:Content>