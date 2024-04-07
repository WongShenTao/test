<%@ Page Title="" Language="C#" MasterPageFile="~/Laptop.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="Assignment_test.WebForm12" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">


 <!-- section start -->
    <section>
        <form runat="server">
            <div class="collection-wrapper">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="product-slick">


                                <div>
                                    <asp:Image ID="Image1" runat="server" CssClass="img-fluid blur-up lazyload" ImageUrl="/assets/product/product1.png" AlternateText="Product image" Style="object-fit: contain; height: 800px; width: 800px;" /></div>
                                <div>
                                    <asp:Image ID="Image2" runat="server" CssClass="img-fluid blur-up lazyload" ImageUrl="/assets/product/product1.1.png" AlternateText="Product image" Style="object-fit: contain; height: 800px; width: 800px;" /></div>
                                <div>
                                    <asp:Image ID="Image3" runat="server" CssClass="img-fluid blur-up lazyload" ImageUrl="/assets/product/product1.png" AlternateText="Product image" Style="object-fit: contain; height: 800px; width: 800px;" /></div>
                                <%--                                <div><img src="/assets/product/product1.png" alt='Product image' class='img-fluid blur-up lazyload'' style='object-fit: contain; height: 800px; width: 800px;'></div>
                                  <div><img src="/assets/product/product.png" alt='Product image' class='img-fluid blur-up lazyload'' style='object-fit: contain; height: 800px; width: 800px;'></div>
                                  <div><img src="/assets/product/product1.1.png" alt='Product image' class='img-fluid blur-up lazyload'' style='object-fit: contain; height: 800px; width: 800px;'></div>--%>
                            </div>
                            <!--                        <div class="row">-->
                            <div class="col-12 p-0">
                                <div class="slider-nav">
                                </div>
                            </div>
                        </div>
                        <!--                        </div>-->


                        <div class="col-lg-6 rtl-text">
                            <div class="product-right">

                                <%--<h2>Alienware M15 R7</h2>--%>

                                <h2>
                                    <asp:Label ID="lblProductName" runat="server" Text="Alienware M15 R7"></asp:Label></h2>
                                <h5>
                                    <asp:Label ID="lblBrand" runat="server" Text="Brand : Alienware"></asp:Label></h5>
                                <%--<h5>Brand : Alienware</h5>--%>
                                <h3>

                                    <%--   <span id="oriprice" style="color:red;font-weight:bold;font-size: x-large;">Ori Price : RM 5232.99</span>&nbsp;</br>--%>
                                    <%--<span id="productPrice" style="color:red;font-weight:bold;font-size: x-large;">Price : RM 5232.99</span>--%>
                                    <asp:Label ID="lblProductPrice" runat="server" Text="Price : RM 5232.99" ForeColor="Red" Font-Bold="true" Font-Size="Large"></asp:Label>
                                    <%--<span style="text-decoration: line-through;font-size: large;">RM originalPrice</span>&nbsp;--%>
                                    <%--  <span style="color:red;font-size: small">-<%= rs.getInt("discount")%>%</span>
                                    --%>



                                    <%--<h2>RM finalPrice</h2>--%>
                           
                             
                                                       
                      
                                </h3>

                                <div id="selectSize" class="addeffect-section product-description border-product">
                                    <%--     <h4 class="product-title size-text">select Color</h4>--%>

                                    <%--     <h6 class="error-message">please select size</h6>
                                <div class="size-box">
                                    <ul>
                                        <li><a href="javascript:void(0)">s</a></li>
                                        <li><a href="javascript:void(0)">m</a></li>
                                        <li><a href="javascript:void(0)">l</a></li>
                                        <li><a href="javascript:void(0)">xl</a></li>
                                    </ul>
                   
                                </div>--%>


                                    <h6 class="product-title size-text">Select Components:</h6>
                                    <%--  <h6 class="error-message">please select size</h6>--%>
                                    <asp:Label ID="ErrorMessageLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
                                    <%-- <asp:Label ID="Label1" runat="server" ForeColor="Red" Visible="false"></asp:Label>
                                    <asp:Label ID="Label2" runat="server" ForeColor="Red" Visible="false"></asp:Label>--%>
                                    <div class="product-component">

                                        <h6 class="product-title size-text">Memory RAM:</h6>
                                        <asp:Label ID="ErrorMessageLabel1" runat="server" ForeColor="Red" onchange="updateTotalPrice()" Visible="false"></asp:Label>
                                        <asp:DropDownList CssClass="product-component2" ID="ddlRam" runat="server">
                                            <asp:ListItem Text="4GB (+RM0)" Value="0"></asp:ListItem>
                                            <asp:ListItem Text="8GB (+RM100)" Value="100"></asp:ListItem>
                                            <asp:ListItem Text="16GB (+RM150)" Value="150"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="product-component">

                                        <h6 class="product-title size-text">Processor:</h6>
                                        <asp:Label ID="ErrorMessageLabel2" runat="server" ForeColor="Red" onchange="updateTotalPrice()" Visible="false"></asp:Label>
                                        <asp:DropDownList ID="ddlProcessor" CssClass="product-component2" runat="server">
                                            <asp:ListItem Text="i3 (+RM0)" Value="0"></asp:ListItem>
                                            <asp:ListItem Text="i5 (+RM500)" Value="500"></asp:ListItem>
                                            <asp:ListItem Text="i7 (+RM1000)" Value="1000"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="product-component">

                                        <h6 class="product-title size-text">Core:</h6>
                                        <asp:Label ID="ErrorMessageLabel3" runat="server" ForeColor="Red" onchange="updateTotalPrice()" Visible="false"></asp:Label>
                                        <asp:DropDownList ID="ddlCore" CssClass="product-component2" runat="server">
                                            <asp:ListItem Text="Dual Core (+RM0)" Value="0"></asp:ListItem>
                                            <asp:ListItem Text="Quad Core (+RM200)" Value="200"></asp:ListItem>
                                            <asp:ListItem Text="Hexa Core (+RM300)" Value="300"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="product-component">
                                        <h6 class="product-title size-text">GPU:</h6>
                                        <asp:Label ID="ErrorMessageLabel4" runat="server" ForeColor="Red" onchange="updateTotalPrice()" Visible="false"></asp:Label>
                                        <asp:DropDownList ID="ddlGPU" CssClass="product-component2" runat="server">
                                            <asp:ListItem Text="Integrated Graphics (+RM0)" Value="0"></asp:ListItem>
                                            <asp:ListItem Text="NVIDIA GeForce GTX 1650 (+RM600)" Value="600"></asp:ListItem>
                                            <asp:ListItem Text="NVIDIA GeForce RTX 3060 (+RM1000)" Value="1000"></asp:ListItem>
                                            <asp:ListItem Text="NVIDIA GeForce RTX 3080 (+RM2000)" Value="2000"></asp:ListItem>

                                        </asp:DropDownList>
                                    </div>


                                    <h6 class="product-title">quantity</h6>
                                    <div class="qty-box">
                                        <div class="input-group">
                                            <span class="input-group-prepend">
                                                <button type="button"
                                                    class="btn quantity-left-minus" onclick="decreaseQuantity()" data-type="minus" data-field="">
                                                    <i
                                                        class="ti-angle-left"></i>
                                                </button>
                                            </span>
                                            <%--    <input type="text" name="quantity" class="form-control input-number" value="1">--%>

                                            <asp:TextBox ID="TxbQuantity" runat="server" CssClass="form-control input-number" onchange="checkMinValue(this);" OnClientClick="updatePrice()" TextMode="Number" value="1"></asp:TextBox>
                                            <span class="input-group-prepend">
                                                <button type="button"
                                                    class="btn quantity-right-plus" onclick="increaseQuantity()" data-type="plus" data-field="">
                                                    <i
                                                        class="ti-angle-right"></i>
                                                </button>
                                            </span>
                                        </div>
                                    </div>
                                </div>






                                <div class="product-buttons">

                                    <asp:Button ID="Btnsubmit"  OnClick="Btnsubmit_Click" CssClass="btn btn-solid hover-solid btn-animation" runat="server" Text="Add To Cart"></asp:Button>
                                    <%--  <i class="fa fa-shopping-cart me-1" aria-hidden="true"></i>--%>
                                    <%-- <a href="#" onclick="addToCart(event)" id="cartEffect" class="btn btn-solid hover-solid btn-animation">
                                        <i class="fa fa-shopping-cart me-1" aria-hidden="true"></i> add to cart
                                    </a>--%>
                                    <%--     <a href="#" onclick="" class="btn btn-solid">
                                        <i class="fa fa-bookmark fz-16 me-2" aria-hidden="true"></i>wishlist
                                    </a>--%>
                                </div>
                                <!--                         <div class="product-buttons"><a href="javascript:void(0)" id="cartEffect"
                                                                    class="btn btn-solid hover-solid btn-animation"><i class="fa fa-shopping-cart me-1"
                                                                        aria-hidden="true"></i> add to cart</a> <a href="#" class="btn btn-solid"><i
                                                                        class="fa fa-bookmark fz-16 me-2" aria-hidden="true"></i>wishlist</a></div>-->
                                <div class="product-count">
                                    <ul>
                                        <li>
                                            <img src="../../../assets/images/icon/truck.png" class="img-fluid" alt="image">
                                            <span class="lang">Free shipping</span>
                                        </li>
                                    </ul>
                                </div>
                                <!--                            <div class="border-product">
                                                                <h6 class="product-title">Sales Ends In</h6>
                                                                <div class="timer">
                                                                    <p id="demo"></p>
                                                                </div>
                                                            </div>-->
                                <div class="border-product">
                                    <h6 class="product-title">shipping info</h6>
                                    <ul class="shipping-info">
                                        <li>100% Original Products</li>

                                        <li>Easy 30 days returns and exchanges</li>
                                    </ul>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </form>
    </section>
    <!-- Section ends -->



    <!-- product-tab starts -->
    <section class="tab-product m-0">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-lg-12">
                    <ul class="nav nav-tabs nav-material" id="top-tab" role="tablist">
                        <li class="nav-item"><a class="nav-link active" id="top-home-tab" data-bs-toggle="tab"
                            href="#top-home" role="tab" aria-selected="true"><i
                                class="icofont icofont-ui-home"></i>Details</a>
                            <div class="material-border"></div>
                        </li>




                    </ul>
                    <div class="tab-content nav-material" id="top-tabContent">
                        <div class="tab-pane fade show active" id="top-home" role="tabpanel"
                            aria-labelledby="top-home-tab">
                            <div class="product-tab-discription">
                                <div class="part">
                                    <h5 class="inner-title">DESCRIPTION</h5>
                                    <p>
                                        The colorful, bold and youthful Vivobook series shows who you really are. These fast laptops make tasks easier, with innovative and thoughtful design.
                                    </p>
                                </div>
                                <div class="part">
                                    <h5 class="inner-title">Protection</h5>
                                    <p>
                                        ASUS Antimicrobial Guard is proven to inhibit bacterial growth by 99% with at least three years of protection.
                                    </p>
                                </div>
                                <div class="part">
                                    <h5 class="inner-title">Performance</h5>
                                    <p>
                                        12th Gen Intel® Core™ processor, 8 GB of fast memory, 512GB of speedy SSD storage to make sure there is always plenty power on tap.
                                    </p>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- product-tab ends -->




    <script>
        // Function to calculate and update the total price
        function updatePrice() {
            // Get the selected values from dropdowns
            var ramPrice = parseInt(document.getElementById("<%= ddlRam.ClientID %>").value);
                var processorPrice = parseInt(document.getElementById("<%= ddlProcessor.ClientID %>").value);
                var corePrice = parseInt(document.getElementById("<%= ddlCore.ClientID %>").value);
                var gpuPrice = parseInt(document.getElementById("<%= ddlGPU.ClientID %>").value);

                // Get the quantity
                var quantity = parseInt(document.getElementById("<%= TxbQuantity.ClientID %>").value);

                // Calculate the total price
                var totalPrice = (5232.99 + ramPrice + processorPrice + corePrice + gpuPrice) * quantity; // Base price + selected component prices

                // Update the displayed price
                /*document.getElementById("productPrice").innerText = "Final Price : RM " + totalPrice.toFixed(2);*/
                document.getElementById("<%= lblProductPrice.ClientID %>").innerText = "Final Price : RM " + totalPrice.toFixed(2);
        }

        // Call the updatePrice function when any dropdown selection changes
        document.getElementById("<%= ddlRam.ClientID %>").addEventListener("change", updatePrice);
        document.getElementById("<%= ddlProcessor.ClientID %>").addEventListener("change", updatePrice);
        document.getElementById("<%= ddlCore.ClientID %>").addEventListener("change", updatePrice);
        document.getElementById("<%= ddlGPU.ClientID %>").addEventListener("change", updatePrice);
        // Call the updatePrice function when quantity changes
        document.getElementById("<%= TxbQuantity.ClientID %>").addEventListener("change", updatePrice);

        // Function to increase quantity
        function increaseQuantity() {
            var input = document.getElementById("<%= TxbQuantity.ClientID %>");
            input.value = parseInt(input.value) + 1;
            updatePrice(); // Update the price after increasing quantity
        }

        // Function to decrease quantity
        function decreaseQuantity() {
            var input = document.getElementById("<%= TxbQuantity.ClientID %>");
            var newValue = parseInt(input.value) - 1;
            if (newValue >= 1) {
                input.value = newValue;
                updatePrice(); // Update the price after decreasing quantity
            }
        }
        //// Initial call to set the default price
        //updatePrice();
    </script>

    <script>
        function checkMinValue(input) {
            if (input.value < 1) {
                input.value = 1;
            }
        }
    </script>

    <script>
        function addToCart(event) {
            event.preventDefault();

            // Perform any client-side actions here

            // Example: Display a confirmation message
            Swal.fire({
                icon: 'success',
                /*title: 'Added to Cart',*/
                title: '<h2 style="color: black">Added to Cart</h2>',
                text: 'The product has been added to your cart.',
                confirmButtonColor: 'red',
                confirmButtonText: 'Continue Shopping'
            });
        }

    </script>

</asp:Content>

<%-- increase and decrease quantity button--%>
<%--    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // Get the input element
            /*var input = document.querySelector('input[name="quantity"]');*/
            var input = document.getElementById('<%= TxbQuantity.ClientID %>');

            // Get the plus and minus buttons
            var plusBtn = document.querySelector('.quantity-right-plus');
            var minusBtn = document.querySelector('.quantity-left-minus');

            // Add click event listeners to the buttons
            plusBtn.addEventListener('click', function () {
                var currentValue = parseInt(input.value);
                input.value = currentValue + 1;
            });

            minusBtn.addEventListener('click', function () {
                var currentValue = parseInt(input.value);
                // Ensure the value doesn't go below 1
                if (currentValue > 1) {
                    input.value = currentValue - 1;
                }
            });
        });
    </script>--%>






<%--       <script>
                                        // Get the input field and buttons
                                        var input = document.getElementById("quantity-input");
                                        var leftBtn = document.querySelector(".quantity-left-minus");
                                        var rightBtn = document.querySelector(".quantity-right-plus");
                                        var cartBtn = document.getElementById("cartEffect");

                                        // Add event listeners to the buttons
                                        leftBtn.addEventListener("click", function () {
                                            if (input.value > 0) {
                                                input.value--;
                                            }
                                            updateCartButtonStatus();
                                        });

                                        rightBtn.addEventListener("click", function () {
                                            if (input.value < 1) {
                                                input.value++;
                                            }
                                            updateCartButtonStatus();
                                        });

                                        function updateCartButtonStatus() {
                                            if (input.value == 0) {
                                                cartBtn.disabled = true;
                                            } else {
                                                cartBtn.disabled = false;
                                            }
                                        }
                                    </script>--%>






<%-- <form id="form1" >
        <div>
            <h2>Product Detail</h2>
            <div>
                <asp:Image ID="imgProduct" runat="server" Width="200px" Height="200px" />
            </div>
            <div>
                <h3><asp:Label ID="lblBrand" runat="server" Text=""></asp:Label></h3>
                <h4><asp:Label ID="lblProductName" runat="server" Text=""></asp:Label></h4>
                <p><asp:Label ID="lblDescription" runat="server" Text=""></asp:Label></p>
                <p>Price: $<asp:Label ID="lblPrice" runat="server" Text=""></asp:Label></p>
            </div>
            <hr />
            <h3>Select Components</h3>
            <div>
                <label>Memory RAM:</label>
                <asp:DropDownList ID="ddlRam" runat="server">
                    <asp:ListItem Text="4GB" Value="4"></asp:ListItem>
                    <asp:ListItem Text="8GB" Value="8"></asp:ListItem>
                    <asp:ListItem Text="16GB" Value="16"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                <label>Processor:</label>
                <asp:DropDownList ID="ddlProcessor" runat="server">
                    <asp:ListItem Text="i3" Value="i3"></asp:ListItem>
                    <asp:ListItem Text="i5" Value="i5"></asp:ListItem>
                    <asp:ListItem Text="i7" Value="i7"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                <label>Core:</label>
                <asp:DropDownList ID="ddlCore" runat="server">
                    <asp:ListItem Text="Dual Core" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Quad Core" Value="4"></asp:ListItem>
                    <asp:ListItem Text="Hexa Core" Value="6"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                <label>Quantity:</label>
                <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
            </div>
            <div>
                <button type="button" onclick="calculateTotal()">Calculate Total Price</button>
            </div>
            <div>
                <p>Total Price: $<span id="totalPrice"></span></p>
            </div>
        </div>
    </form>--%>