<%@ Page Title="" Language="C#" MasterPageFile="~/Laptop.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Assignment_test.WebForm6" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
 

    <!-- section start -->
    <section class="section-b-space ratio_asos">
        <div class="collection-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-sm-3 collection-filter">

                        <!-- side-bar banner start here -->
                        <img src="/assets/product/laptopphoto.jpg" class="img-fluid blur-up lazyload" alt="">
                        <!-- side-bar banner end here -->

                    </div>
                    <div class="collection-content col">
                        <div class="page-main-content">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="top-banner-wrapper">
                                        <a href="#">
                                            <img src="/assets/product/banner2.png" class="img-fluid blur-up lazyload" alt="INNISFREE"></a>
                                        <div class="top-banner-content small-section">
                                            <h4>YOUR GATEWAY TO LAPTOP EXCELLENCE</h4>
                                            <p style="text-align: justify;">
                                                "Explore limitless possibilities with our curated collection of cutting-edge laptops! Discover unparalleled performance, sleek designs, and innovative features to elevate your computing experience. Shop now for the perfect blend of style and power!"
                                            </p>
                                        </div>
                                    </div>
                                    <div class="collection-product-wrapper">
                                        <div class="product-top-filter">
                                            <div class="row">
                                                <div class="col-xl-12">
                                                    <div class="filter-main-btn">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="product-wrapper-grid">
                                            <div class="row margin-res">

                                                <%-- FIRST PRODUCT--%>
                                                <div class="col-xl-3 col-6 col-grid-box">
                                                    <div class="product-box">
                                                        <div class="img-wrapper">
                                                            <div class="front">
                                                                <%--  <a href="../ProductPage/productPage_01.jsp?prodid=1">
                                                                        <img src="/assets/product/product1.png" class="img-fluid blur-up lazyload bg-img" alt="">
                                                                    </a>--%>
                                                                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                        <img src="/assets/product/product1.png" class="img-fluid blur-up lazyload bg-img" alt="">
                                                                </asp:HyperLink>
                                                            </div>
                                                            <div class="back">
                                                                <%--  <a href="../ProductPage/productPage_01.jsp?prodid=1">
                                                                        <img src="/assets/product/product1.1.png" class="img-fluid blur-up lazyload bg-img" alt="">
                                                                    </a>--%>
                                                                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                        <img src="/assets/product/product1.1.png" class="img-fluid blur-up lazyload bg-img" alt="">
                                                                </asp:HyperLink>
                                                            </div>
                                                            <div class="cart-info cart-wrap">



                                                                <%--<asp:Button data-bs-toggle="modal" data-bs-target="#addtocart"  ID="buynow" runat="server"  title="Buy Now" />--%>

                                                                <%-- <button data-bs-toggle="modal" data-bs-target="#addtocart" onclick="" title="Buy Now">
                                                                        <i class="ti-shopping-cart"></i>
                                                                    </button>--%>
                                                                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                           <button data-bs-toggle="modal" data-bs-target="#addtocart" onclick="" title="Buy Now">
                                                                        <i class="ti-shopping-cart"></i>
                                                                    </button>         
                                                                </asp:HyperLink>


                                                                <%--                                                 <asp:HyperLink   title="add to wish list" ID="HyperLink7" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                       <i class="ti-heart" aria-hidden="true"></i>
                                                                   </asp:HyperLink>--%>
                                                                <%--<a href="#" title="add to wish list" onclick="">
                                                                        <i class="ti-heart" aria-hidden="true"></i>
                                                                    </a>--%>




                                                                <asp:HyperLink title="Quick View" ID="HyperLink8" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                        <i class="ti-search" aria-hidden="true"></i>
                                                                </asp:HyperLink>

                                                                <%--<a href="../ProductPage/productPage_01.jsp?prodid=1" title="Quick View">
                                                                        <i class="ti-search" aria-hidden="true"></i>
                                                                    </a>--%>
                                                            </div>
                                                        </div>
                                                        <div class="product-detail">
                                                            <div>
                                                                <asp:HyperLink title="Quick View" ID="HyperLink9" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                    <h6>
                                                                        <asp:Label ID="lblModel" runat="server" Text="Alienware M15 R7"></asp:Label></h6>
                                                                    <h6>
                                                                        <asp:Label ID="lblBrand" runat="server" Text="Brand: Alienware"></asp:Label></h6>

                                                                    <%-- <h6>Alienware M15 R7</h6>
                                                                         <h6>Brand: Alienware</h6>--%>
                                                                </asp:HyperLink>
                                                                <%-- <a href="../ProductPage/productPage_01.jsp?prodid1">
                                                                        <h6>Alienware M15 R7</h6>
                                                                         <h6>Brand: Alienware</h6>
                                                                    </a>--%>

                                                                <%-- <span style="color:red;font-weight:bold;font-size: large;">RM 80</span>&nbsp;--%>
                                                                <asp:Label ID="lblPrice" runat="server" Text="RM 4999" ForeColor="Red" Font-Bold="True" Font-Size="Large"></asp:Label>
                                                                <%-- <span style="text-decoration: line-through;">RM 100</span>&nbsp;
                                                                    <span style="color:red;font-size: small">-20%</span>--%>
                                                            </div>
                                                        </div>
                                                    </div>


                                                </div>

                                                <%--             END FIRST PRODUCT --%>

                     <%-- FIRST PRODUCT--%>
                                                <div class="col-xl-3 col-6 col-grid-box">
                                                    <div class="product-box">
                                                        <div class="img-wrapper">
                                                            <div class="front">
                                                                <%--  <a href="../ProductPage/productPage_01.jsp?prodid=1">
                                                                        <img src="/assets/product/product1.png" class="img-fluid blur-up lazyload bg-img" alt="">
                                                                    </a>--%>
                                                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                        <img src="/assets/product/product1.png" class="img-fluid blur-up lazyload bg-img" alt="">
                                                                </asp:HyperLink>
                                                            </div>
                                                            <div class="back">
                                                                <%--  <a href="../ProductPage/productPage_01.jsp?prodid=1">
                                                                        <img src="/assets/product/product1.1.png" class="img-fluid blur-up lazyload bg-img" alt="">
                                                                    </a>--%>
                                                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                        <img src="/assets/product/product1.1.png" class="img-fluid blur-up lazyload bg-img" alt="">
                                                                </asp:HyperLink>
                                                            </div>
                                                            <div class="cart-info cart-wrap">



                                                                <%--<asp:Button data-bs-toggle="modal" data-bs-target="#addtocart"  ID="buynow" runat="server"  title="Buy Now" />--%>

                                                                <%-- <button data-bs-toggle="modal" data-bs-target="#addtocart" onclick="" title="Buy Now">
                                                                        <i class="ti-shopping-cart"></i>
                                                                    </button>--%>
                                                                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                           <button data-bs-toggle="modal" data-bs-target="#addtocart" onclick="" title="Buy Now">
                                                                        <i class="ti-shopping-cart"></i>
                                                                    </button>         
                                                                </asp:HyperLink>


                                                                <%--                                                 <asp:HyperLink   title="add to wish list" ID="HyperLink7" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                       <i class="ti-heart" aria-hidden="true"></i>
                                                                   </asp:HyperLink>--%>
                                                                <%--<a href="#" title="add to wish list" onclick="">
                                                                        <i class="ti-heart" aria-hidden="true"></i>
                                                                    </a>--%>




                                                                <asp:HyperLink title="Quick View" ID="HyperLink7" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                        <i class="ti-search" aria-hidden="true"></i>
                                                                </asp:HyperLink>

                                                                <%--<a href="../ProductPage/productPage_01.jsp?prodid=1" title="Quick View">
                                                                        <i class="ti-search" aria-hidden="true"></i>
                                                                    </a>--%>
                                                            </div>
                                                        </div>
                                                        <div class="product-detail">
                                                            <div>
                                                                <asp:HyperLink title="Quick View" ID="HyperLink10" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                    <h6>
                                                                        <asp:Label ID="Label1" runat="server" Text="Asus Zenbook Z18"></asp:Label></h6>
                                                                    <h6>
                                                                        <asp:Label ID="Label2" runat="server" Text="Brand: Asus"></asp:Label></h6>

                                                                    <%-- <h6>Alienware M15 R7</h6>
                                                                         <h6>Brand: Alienware</h6>--%>
                                                                </asp:HyperLink>
                                                                <%-- <a href="../ProductPage/productPage_01.jsp?prodid1">
                                                                        <h6>Alienware M15 R7</h6>
                                                                         <h6>Brand: Alienware</h6>
                                                                    </a>--%>

                                                                <%-- <span style="color:red;font-weight:bold;font-size: large;">RM 80</span>&nbsp;--%>
                                                                <asp:Label ID="Label3" runat="server" Text="RM 3399" ForeColor="Red" Font-Bold="True" Font-Size="Large"></asp:Label>
                                                                <%-- <span style="text-decoration: line-through;">RM 100</span>&nbsp;
                                                                    <span style="color:red;font-size: small">-20%</span>--%>
                                                            </div>
                                                        </div>
                                                    </div>


                                                </div>

                                                <%--             END FIRST PRODUCT --%>

                                                                                                <%-- FIRST PRODUCT--%>
                                                <div class="col-xl-3 col-6 col-grid-box">
                                                    <div class="product-box">
                                                        <div class="img-wrapper">
                                                            <div class="front">
                                                                <%--  <a href="../ProductPage/productPage_01.jsp?prodid=1">
                                                                        <img src="/assets/product/product1.png" class="img-fluid blur-up lazyload bg-img" alt="">
                                                                    </a>--%>
                                                                <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                        <img src="/assets/product/product1.png" class="img-fluid blur-up lazyload bg-img" alt="">
                                                                </asp:HyperLink>
                                                            </div>
                                                            <div class="back">
                                                                <%--  <a href="../ProductPage/productPage_01.jsp?prodid=1">
                                                                        <img src="/assets/product/product1.1.png" class="img-fluid blur-up lazyload bg-img" alt="">
                                                                    </a>--%>
                                                                <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                        <img src="/assets/product/product1.1.png" class="img-fluid blur-up lazyload bg-img" alt="">
                                                                </asp:HyperLink>
                                                            </div>
                                                            <div class="cart-info cart-wrap">



                                                                <%--<asp:Button data-bs-toggle="modal" data-bs-target="#addtocart"  ID="buynow" runat="server"  title="Buy Now" />--%>

                                                                <%-- <button data-bs-toggle="modal" data-bs-target="#addtocart" onclick="" title="Buy Now">
                                                                        <i class="ti-shopping-cart"></i>
                                                                    </button>--%>
                                                                <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                           <button data-bs-toggle="modal" data-bs-target="#addtocart" onclick="" title="Buy Now">
                                                                        <i class="ti-shopping-cart"></i>
                                                                    </button>         
                                                                </asp:HyperLink>


                                                                <%--                                                 <asp:HyperLink   title="add to wish list" ID="HyperLink7" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                       <i class="ti-heart" aria-hidden="true"></i>
                                                                   </asp:HyperLink>--%>
                                                                <%--<a href="#" title="add to wish list" onclick="">
                                                                        <i class="ti-heart" aria-hidden="true"></i>
                                                                    </a>--%>




                                                                <asp:HyperLink title="Quick View" ID="HyperLink14" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                        <i class="ti-search" aria-hidden="true"></i>
                                                                </asp:HyperLink>

                                                                <%--<a href="../ProductPage/productPage_01.jsp?prodid=1" title="Quick View">
                                                                        <i class="ti-search" aria-hidden="true"></i>
                                                                    </a>--%>
                                                            </div>
                                                        </div>
                                                        <div class="product-detail">
                                                            <div>
                                                                <asp:HyperLink title="Quick View" ID="HyperLink15" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                    <h6>
                                                                        <asp:Label ID="Label4" runat="server" Text="Alienware M15 R7"></asp:Label></h6>
                                                                    <h6>
                                                                        <asp:Label ID="Label5" runat="server" Text="Brand: Alienware"></asp:Label></h6>

                                                                    <%-- <h6>Alienware M15 R7</h6>
                                                                         <h6>Brand: Alienware</h6>--%>
                                                                </asp:HyperLink>
                                                                <%-- <a href="../ProductPage/productPage_01.jsp?prodid1">
                                                                        <h6>Alienware M15 R7</h6>
                                                                         <h6>Brand: Alienware</h6>
                                                                    </a>--%>

                                                                <%-- <span style="color:red;font-weight:bold;font-size: large;">RM 80</span>&nbsp;--%>
                                                                <asp:Label ID="Label6" runat="server" Text="RM 4999" ForeColor="Red" Font-Bold="True" Font-Size="Large"></asp:Label>
                                                                <%-- <span style="text-decoration: line-through;">RM 100</span>&nbsp;
                                                                    <span style="color:red;font-size: small">-20%</span>--%>
                                                            </div>
                                                        </div>
                                                    </div>


                                                </div>

                                                <%--             END FIRST PRODUCT --%>

                     <%-- FIRST PRODUCT--%>
                                                <div class="col-xl-3 col-6 col-grid-box">
                                                    <div class="product-box">
                                                        <div class="img-wrapper">
                                                            <div class="front">
                                                                <%--  <a href="../ProductPage/productPage_01.jsp?prodid=1">
                                                                        <img src="/assets/product/product1.png" class="img-fluid blur-up lazyload bg-img" alt="">
                                                                    </a>--%>
                                                                <asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                        <img src="/assets/product/product1.png" class="img-fluid blur-up lazyload bg-img" alt="">
                                                                </asp:HyperLink>
                                                            </div>
                                                            <div class="back">
                                                                <%--  <a href="../ProductPage/productPage_01.jsp?prodid=1">
                                                                        <img src="/assets/product/product1.1.png" class="img-fluid blur-up lazyload bg-img" alt="">
                                                                    </a>--%>
                                                                <asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                        <img src="/assets/product/product1.1.png" class="img-fluid blur-up lazyload bg-img" alt="">
                                                                </asp:HyperLink>
                                                            </div>
                                                            <div class="cart-info cart-wrap">



                                                                <%--<asp:Button data-bs-toggle="modal" data-bs-target="#addtocart"  ID="buynow" runat="server"  title="Buy Now" />--%>

                                                                <%-- <button data-bs-toggle="modal" data-bs-target="#addtocart" onclick="" title="Buy Now">
                                                                        <i class="ti-shopping-cart"></i>
                                                                    </button>--%>
                                                                <asp:HyperLink ID="HyperLink18" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                           <button data-bs-toggle="modal" data-bs-target="#addtocart" onclick="" title="Buy Now">
                                                                        <i class="ti-shopping-cart"></i>
                                                                    </button>         
                                                                </asp:HyperLink>


                                                                <%--                                                 <asp:HyperLink   title="add to wish list" ID="HyperLink7" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                       <i class="ti-heart" aria-hidden="true"></i>
                                                                   </asp:HyperLink>--%>
                                                                <%--<a href="#" title="add to wish list" onclick="">
                                                                        <i class="ti-heart" aria-hidden="true"></i>
                                                                    </a>--%>




                                                                <asp:HyperLink title="Quick View" ID="HyperLink19" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                        <i class="ti-search" aria-hidden="true"></i>
                                                                </asp:HyperLink>

                                                                <%--<a href="../ProductPage/productPage_01.jsp?prodid=1" title="Quick View">
                                                                        <i class="ti-search" aria-hidden="true"></i>
                                                                    </a>--%>
                                                            </div>
                                                        </div>
                                                        <div class="product-detail">
                                                            <div>
                                                                <asp:HyperLink title="Quick View" ID="HyperLink20" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                    <h6>
                                                                        <asp:Label ID="Label7" runat="server" Text="Asus Zenbook Z18"></asp:Label></h6>
                                                                    <h6>
                                                                        <asp:Label ID="Label8" runat="server" Text="Brand: Asus"></asp:Label></h6>

                                                                    <%-- <h6>Alienware M15 R7</h6>
                                                                         <h6>Brand: Alienware</h6>--%>
                                                                </asp:HyperLink>
                                                                <%-- <a href="../ProductPage/productPage_01.jsp?prodid1">
                                                                        <h6>Alienware M15 R7</h6>
                                                                         <h6>Brand: Alienware</h6>
                                                                    </a>--%>

                                                                <%-- <span style="color:red;font-weight:bold;font-size: large;">RM 80</span>&nbsp;--%>
                                                                <asp:Label ID="Label9" runat="server" Text="RM 3399" ForeColor="Red" Font-Bold="True" Font-Size="Large"></asp:Label>
                                                                <%-- <span style="text-decoration: line-through;">RM 100</span>&nbsp;
                                                                    <span style="color:red;font-size: small">-20%</span>--%>
                                                            </div>
                                                        </div>
                                                    </div>


                                                </div>

                                                <%--             END FIRST PRODUCT --%>

                                                                                                <%-- FIRST PRODUCT--%>
                                                <div class="col-xl-3 col-6 col-grid-box">
                                                    <div class="product-box">
                                                        <div class="img-wrapper">
                                                            <div class="front">
                                                                <%--  <a href="../ProductPage/productPage_01.jsp?prodid=1">
                                                                        <img src="/assets/product/product1.png" class="img-fluid blur-up lazyload bg-img" alt="">
                                                                    </a>--%>
                                                                <asp:HyperLink ID="HyperLink21" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                        <img src="/assets/product/product1.png" class="img-fluid blur-up lazyload bg-img" alt="">
                                                                </asp:HyperLink>
                                                            </div>
                                                            <div class="back">
                                                                <%--  <a href="../ProductPage/productPage_01.jsp?prodid=1">
                                                                        <img src="/assets/product/product1.1.png" class="img-fluid blur-up lazyload bg-img" alt="">
                                                                    </a>--%>
                                                                <asp:HyperLink ID="HyperLink22" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                        <img src="/assets/product/product1.1.png" class="img-fluid blur-up lazyload bg-img" alt="">
                                                                </asp:HyperLink>
                                                            </div>
                                                            <div class="cart-info cart-wrap">



                                                                <%--<asp:Button data-bs-toggle="modal" data-bs-target="#addtocart"  ID="buynow" runat="server"  title="Buy Now" />--%>

                                                                <%-- <button data-bs-toggle="modal" data-bs-target="#addtocart" onclick="" title="Buy Now">
                                                                        <i class="ti-shopping-cart"></i>
                                                                    </button>--%>
                                                                <asp:HyperLink ID="HyperLink23" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                           <button data-bs-toggle="modal" data-bs-target="#addtocart" onclick="" title="Buy Now">
                                                                        <i class="ti-shopping-cart"></i>
                                                                    </button>         
                                                                </asp:HyperLink>


                                                                <%--                                                 <asp:HyperLink   title="add to wish list" ID="HyperLink7" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                       <i class="ti-heart" aria-hidden="true"></i>
                                                                   </asp:HyperLink>--%>
                                                                <%--<a href="#" title="add to wish list" onclick="">
                                                                        <i class="ti-heart" aria-hidden="true"></i>
                                                                    </a>--%>




                                                                <asp:HyperLink title="Quick View" ID="HyperLink24" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                        <i class="ti-search" aria-hidden="true"></i>
                                                                </asp:HyperLink>

                                                                <%--<a href="../ProductPage/productPage_01.jsp?prodid=1" title="Quick View">
                                                                        <i class="ti-search" aria-hidden="true"></i>
                                                                    </a>--%>
                                                            </div>
                                                        </div>
                                                        <div class="product-detail">
                                                            <div>
                                                                <asp:HyperLink title="Quick View" ID="HyperLink25" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                    <h6>
                                                                        <asp:Label ID="Label10" runat="server" Text="Alienware M15 R7"></asp:Label></h6>
                                                                    <h6>
                                                                        <asp:Label ID="Label11" runat="server" Text="Brand: Alienware"></asp:Label></h6>

                                                                    <%-- <h6>Alienware M15 R7</h6>
                                                                         <h6>Brand: Alienware</h6>--%>
                                                                </asp:HyperLink>
                                                                <%-- <a href="../ProductPage/productPage_01.jsp?prodid1">
                                                                        <h6>Alienware M15 R7</h6>
                                                                         <h6>Brand: Alienware</h6>
                                                                    </a>--%>

                                                                <%-- <span style="color:red;font-weight:bold;font-size: large;">RM 80</span>&nbsp;--%>
                                                                <asp:Label ID="Label12" runat="server" Text="RM 4999" ForeColor="Red" Font-Bold="True" Font-Size="Large"></asp:Label>
                                                                <%-- <span style="text-decoration: line-through;">RM 100</span>&nbsp;
                                                                    <span style="color:red;font-size: small">-20%</span>--%>
                                                            </div>
                                                        </div>
                                                    </div>


                                                </div>

                                                <%--             END FIRST PRODUCT --%>

                     <%-- FIRST PRODUCT--%>
                                                <div class="col-xl-3 col-6 col-grid-box">
                                                    <div class="product-box">
                                                        <div class="img-wrapper">
                                                            <div class="front">
                                                                <%--  <a href="../ProductPage/productPage_01.jsp?prodid=1">
                                                                        <img src="/assets/product/product1.png" class="img-fluid blur-up lazyload bg-img" alt="">
                                                                    </a>--%>
                                                                <asp:HyperLink ID="HyperLink26" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                        <img src="/assets/product/product1.png" class="img-fluid blur-up lazyload bg-img" alt="">
                                                                </asp:HyperLink>
                                                            </div>
                                                            <div class="back">
                                                                <%--  <a href="../ProductPage/productPage_01.jsp?prodid=1">
                                                                        <img src="/assets/product/product1.1.png" class="img-fluid blur-up lazyload bg-img" alt="">
                                                                    </a>--%>
                                                                <asp:HyperLink ID="HyperLink27" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                        <img src="/assets/product/product1.1.png" class="img-fluid blur-up lazyload bg-img" alt="">
                                                                </asp:HyperLink>
                                                            </div>
                                                            <div class="cart-info cart-wrap">



                                                                <%--<asp:Button data-bs-toggle="modal" data-bs-target="#addtocart"  ID="buynow" runat="server"  title="Buy Now" />--%>

                                                                <%-- <button data-bs-toggle="modal" data-bs-target="#addtocart" onclick="" title="Buy Now">
                                                                        <i class="ti-shopping-cart"></i>
                                                                    </button>--%>
                                                                <asp:HyperLink ID="HyperLink28" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                           <button data-bs-toggle="modal" data-bs-target="#addtocart" onclick="" title="Buy Now">
                                                                        <i class="ti-shopping-cart"></i>
                                                                    </button>         
                                                                </asp:HyperLink>


                                                                <%--                                                 <asp:HyperLink   title="add to wish list" ID="HyperLink7" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                       <i class="ti-heart" aria-hidden="true"></i>
                                                                   </asp:HyperLink>--%>
                                                                <%--<a href="#" title="add to wish list" onclick="">
                                                                        <i class="ti-heart" aria-hidden="true"></i>
                                                                    </a>--%>




                                                                <asp:HyperLink title="Quick View" ID="HyperLink29" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                        <i class="ti-search" aria-hidden="true"></i>
                                                                </asp:HyperLink>

                                                                <%--<a href="../ProductPage/productPage_01.jsp?prodid=1" title="Quick View">
                                                                        <i class="ti-search" aria-hidden="true"></i>
                                                                    </a>--%>
                                                            </div>
                                                        </div>
                                                        <div class="product-detail">
                                                            <div>
                                                                <asp:HyperLink title="Quick View" ID="HyperLink30" runat="server" NavigateUrl="ProductDetail.aspx">
                                                                    <h6>
                                                                        <asp:Label ID="Label13" runat="server" Text="Asus Zenbook Z18"></asp:Label></h6>
                                                                    <h6>
                                                                        <asp:Label ID="Label14" runat="server" Text="Brand: Asus"></asp:Label></h6>

                                                                    <%-- <h6>Alienware M15 R7</h6>
                                                                         <h6>Brand: Alienware</h6>--%>
                                                                </asp:HyperLink>
                                                                <%-- <a href="../ProductPage/productPage_01.jsp?prodid1">
                                                                        <h6>Alienware M15 R7</h6>
                                                                         <h6>Brand: Alienware</h6>
                                                                    </a>--%>

                                                                <%-- <span style="color:red;font-weight:bold;font-size: large;">RM 80</span>&nbsp;--%>
                                                                <asp:Label ID="Label15" runat="server" Text="RM 3399" ForeColor="Red" Font-Bold="True" Font-Size="Large"></asp:Label>
                                                                <%-- <span style="text-decoration: line-through;">RM 100</span>&nbsp;
                                                                    <span style="color:red;font-size: small">-20%</span>--%>
                                                            </div>
                                                        </div>
                                                    </div>


                                                </div>

                                                <%--             END FIRST PRODUCT --%>

                                                <%--  ------------------------------------------------------------------------------%>
                                            </div>
                                        </div>




                                        <div class="product-pagination">
                                            <div class="theme-paggination-block">

                                                <div class="row" style="height: 50px; padding: 13px;">
                                                    <div class="search-count">
                                                        <h5 style="text-align: right;">Showing total Products</h5>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- section End -->



</asp:Content>
