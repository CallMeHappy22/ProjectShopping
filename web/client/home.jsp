<%-- 
    Document   : home.jsp
    Created on : Jun 20, 2022, 6:27:47 PM
    Author     : thanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
        integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link href="../static/css/main.css" rel="stylesheet" type="text/css"/>
    !<!-- Dung Servlet dg dan tg ung vs thu muc web.inf -> de css like be -->
    <link rel="stylesheet" href="static/css/main.css"/>

    <title>Houseware Shop</title>
</head>

<body>
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark"
        style="height: 4rem; opacity: .9; background-color: #404040 !important">
        <a class="navbar-brand" href="./home.html">HouseWareShop</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="btn btn-outline-warning ml-5 " style="border: none;"
                        href="./listProduct.html">Products</i></a>
                </li>
                <li class="nav-item">
                    <a class="btn btn-outline-warning ml-5" style="border: none;"
                        href="#">Sale Items</i></a>
                </li>
                <li class="nav-item">
                    <a class="btn btn-outline-warning ml-5" style="border: none;"
                        href="#">Contact
                        Us</i></a>
                </li>
            </ul>


            <form target="_self" id="frm">
                <div class="search-box">
                    <input class="search-txt" name="inputSearch" type="text" placeholder="Type to search">
                    <input type="hidden" value="${page}" name="page">
                    <a href="#" class="search-btn">
                        <i class="fas fa-search text-center" style="margin-top:12px;color: white"></i>
                    </a>
                </div>
            </form>
            <ul class="navbar-nav ml-auto mr-2">
                <li class="nav-item dropdown active">
                    <a class="nav-link dropdown-toggle mr-5" href="#" id="navbarDropdown"
                        style="color: green; font-size: 2.5rem" role="button" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-cart-plus mr-2" style="color: #e9ecef; font-size: 2.5rem"></i>
                        <sup style="color: #fcae00 !important">5</sup>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <div class="popup-list-cart">
                            <table>
                                <tbody>
                                    <tr>
                                        <td class="px-2"><img src="static/images/tools/1_0.jpg"></td>
                                        <td class="f-small"><a href="#">Repair Tool</a></td>
                                        <td class="px-3 f-small">x 1</td>
                                    </tr>

                                    <tr>
                                        <td class="px-2"><img src="static/images/tools/2_0.jpg"></td>
                                        <td class="f-small"><a href="#">Measure Tools</a></td>
                                        <td class="px-3 f-small">x 1</td>
                                    </tr>

                                    <tr>
                                        <td class="px-2"><img src="static/images/tools/3_0.jpg"></td>
                                        <td class="f-small"><a href="#">Manual Screw</a></td>
                                        <td class="px-3 f-small">x 1</td>
                                    </tr>

                                    <tr>
                                        <td class="px-2"><img src="static/images/tools/4_0.jpg"></td>
                                        <td class="f-small"><a href="#">Painting Brush</a></td>
                                        <td class="px-3 f-small">x 1</td>
                                    </tr>

                                    <tr>
                                        <td class="px-2"><img src="static/images/tools/5_0.jpg"></td>
                                        <td class="f-small"><a href="#">Hiro Crimping Pliers</a></td>
                                        <td class="px-3 f-small">x 1</td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="./listCart.html">View List Cart</a>
                    </div>
                </li>

                <!-- Example single danger button -->
                <div class="btn-group">
                    <a class="nav-link btn btn-outline-primary mt-2 ml-2"
                        href="#">
                        Nguyễn Thị Ánh
                        <i class="fas fa-user-plus ml-2"></i>
                    </a>

                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">My profile</a>
                        <a class="dropdown-item" href="#"
                            onclick="openOrder()">Orders</a>
                        <a class="dropdown-item" href="#">History</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Logout</a>
                    </div>
                </div>
            </ul>
        </div>
    </nav>
    <div class="container">
        <div class="row">
            <a href="#">
                <img class="img-fluid" style="margin-top: 4.5rem;;" src="static/images/store_coupon.png"
                    alt="images/store_coupon.png">
            </a>
        </div>
    </div>
    <!--slider-->
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="3000">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="static/images/slide1_1.jpg" class="d-block w-100" alt="../images/slide1_1.jpg">
            </div>
            <div class="carousel-item">
                <img src="static/images/slide1_2.jpg" class="d-block w-100" alt="../images/slide1_2.jpg">
            </div>
            <div class="carousel-item">
                <img src="static/images/slide1_3.jpg" class="d-block w-100" alt="../images/slide1_3.jpg">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <div id="carouselExampleIndicators2" class="carousel slide" data-ride="carousel" data-interval="3010">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators2" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators2" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators2" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="static/images/slide2_1.jpg" class="d-block w-100" alt="images/slide2_1.jpg">
            </div>
            <div class="carousel-item">
                <img src="static/images/slide2_2.jpg" class="d-block w-100" alt="images/slide2_2.jpg">
            </div>
            <div class="carousel-item">
                <img src="static/images/slide2_3.jpg" class="d-block w-100" alt="images/slide2_3.jpg">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators2" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators2" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <div class="container">
        <!--PICK FOR YOU -->
        <div class="row">
            <h1 class="mx-auto" style="margin-top: 1.5rem;">PICKED FOR YOU</h1>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="row mb-3">

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/Home&amp;Garden/216_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Kitchen Scales</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">Adjustable Kitchen Scales Measure Cups Double-head Cookware
                                        Measuring Spoon for Soup Coffee Tea Powder with Scal Kitchen Gadget
                                    </p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/improvement/120_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Hair Dryer</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">Bathroom Water Stopper Flood Barrier Rubber Dam Silicon Water
                                        Blocker Dry and Wet Separation Home Improve Supplies</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/improvement/109_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Rainfall Shower</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">SPA shower Pressure Rainfall Shower Head 300 Holes Shower Head
                                        Water Saving Filter Spray Nozzle High Pressure Pressurized showe</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/tools/37_0.jpg" class="card-img-top" alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Drill Bits</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">295mm 1/4 Flexible Shaft Electronic Drill Bits Extension
                                        Screwdriver Bit Holder Connect Link Hex Shank Extension Snake Bit Tool</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/improvement/102_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Toothbrush Holder</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">Cartoon Toothbrush Holder with Holes Toothbrush Bracket
                                        Container Tooth Shape Bathroom Shelf Bathroom Products</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/improvement/134_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Lock Limit</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">Brass Faucets Standard Connector Washing Machine Gun Quick
                                        Connect Fitting Pipe Connections Threaded Tap Connectors Tools</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/Home&amp;Garden/208_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title"> Cover Liner</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">Gas Stove Protector Cover Liner Reusable Non Stick Dishwasher
                                        Protective Pad Gas Burner Stovetop Protector Kitchen Supplies</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/Measurements/80_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Pen Temperature Testers</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">DT8230 Mini Digital Pen Temperature Testers Digital LCD Mini
                                        Infrared Thermometer Temperature Meter Testers</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/improvement/146_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Mosquito Net</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">Brass Faucets Standard Connector Washing Machine Gun Quick
                                        Connect Fitting Pipe Connections Threaded Tap Connectors Tools</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/improvement/101_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Water Stopper</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">Bathroom Water Stopper Flood Barrier Rubber Dam Silicon Water
                                        Blocker Dry and Wet Separation Home Improve Supplies</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/Measurements/96_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">LED Solar Light</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">1-4 pcs 20/30 LED Solar Light Solar PIR Motion Sensor Lamp
                                        Waterproof Outdoor Garden Pathway Yard Emergency Security Wall Light</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/tools/38_0.jpg" class="card-img-top" alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Twist Drill Bits </h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">13pcs HSS Metric System Durable Titanium Quick Change Twist
                                        Drill Bits Set Tools Mini Electric Twist Drill Bit Tools With Case</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>

        <!--Measurement & Analysis Instruments-->
        <div class="row">
            <h1 class="mx-auto" style="margin-top: 1.5rem">Measurement &amp; Analysis Instruments</h1>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="row mb-3">

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/Measurements/90_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Straight Ruler </h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">Stainless Steel Metal Straight Ruler Precision Double Sided
                                        Measuring Tool</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/Measurements/67_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">DC 12V 24V 220V</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">DC 12V 24V 220V Digital Temperature Controller 10A Thermostat
                                        Control Switch with Probe Sensor Thermometer Thermo Controller</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/Measurements/86_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Magnifier Loupe</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">Portable 20 x 21mm Jewelry Magnifying Glass 20X Folding
                                        Magnifier Loupe for Jewelry Coins Stamps Antiques</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/Measurements/100_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Counter LCD</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">1Pcs Mini Stitch Marker And Row Finger Counter LCD Electronic
                                        Digital Tally Counter For Sewing Knitting weave Tool</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/Measurements/97_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Alloy Angle</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">Aluminum Alloy Angle Gauge Ruler Protractor Inclinometer
                                        Woodwork Measuring Tool Durable Auxiliary Scribing Tool 92x49x4mm</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/Measurements/92_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">180 Degree</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">Stainless Steel 180 Degree Protractor Angle Ruler Round Head
                                        Digital Angle Finder Rotary Measuring Tools</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/Measurements/94_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Chuck Drills</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">Drill Bit Deburring External Chamfer Tool Stainless Steel Metal
                                        Remove Burr Tools for all kinds of Chuck Drills Dropshiping</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/Measurements/83_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Measure Sewing</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">4pcs 60inch 150cm Tape Measure Sewing Tools Portable Body
                                        Measuring Tape Tailor Ruler Soft Ruler</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/Measurements/96_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">LED Solar Light</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">1-4 pcs 20/30 LED Solar Light Solar PIR Motion Sensor Lamp
                                        Waterproof Outdoor Garden Pathway Yard Emergency Security Wall Light</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/Measurements/68_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">125C LED Temperature</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">-50~125C LED Temperature Meter Detector Sensor Probe DC4-28V
                                        High-precision Dual-display Digital Car Thermometer Monitor Tester</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/Measurements/64_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Fridge Thermometer</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">Mini Digital Refrigerator LCD Probe Fridge Freezer Thermometer
                                        Temperature Sensor Thermograph Meter Fridge Thermometer</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/Measurements/79_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Indoor Room Floor</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">Electric Indoor Room Floor Heating Thermostat Temperature
                                        Controller Cool Warm Regulator 220V 1A Dial Temperature Controller</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">

        <!--New Arrivals-->
        <div class="row" style="background-image: url('images/new_arrival.jpg')">
            <h1 class="mx-auto mt-1" style="color: white;">New Arrivals</h1>

            <div class="col-md-12">
                <div class="row mb-2">
                    <div class="col-md-2">

                    </div>

                    <div class="col-md-2 mt-4">
                        <div class="card">


                            <a href="./detail.html"><img src="static/images/improvement/142_0.jpg" class="card-img-top"
                                    alt="...">
                            </a>
                            <div class="card-body"><a href="./detail.html">
                                </a><a href="./detail.html">
                                    <h6 class="card-title">Door Latch Bolt Brushed Furniture Bolt Security Sliding Door
                                        Thickened Cabinet Latch Door Lock Pin Zinc Alloy</h6>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-2 mt-4">
                        <div class="card">

                            <div id="DIV_1">
                                <span id="SPAN_2">26</span>
                            </div>


                            <a href="./detail.html"><img src="static/images/improvement/143_0.jpg" class="card-img-top"
                                    alt="...">
                            </a>
                            <div class="card-body"><a href="./detail.html">
                                </a><a href="./detail.html">
                                    <h6 class="card-title">Brass Faucets Standard Connector Washing Machine Gun Quick
                                        Connect Fitting Pipe Connections Threaded Tap Connectors Tools</h6>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-2 mt-4">
                        <div class="card">


                            <a href="./detail.html"><img src="static/images/improvement/144_0.jpg" class="card-img-top"
                                    alt="...">
                            </a>
                            <div class="card-body"><a href="./detail.html">
                                </a><a href="./detail.html">
                                    <h6 class="card-title">1/2" Shank Glass Door Rail Stile Reversible Router Bit Wood
                                        Cutting Tool Woodworking Router Bits Home Wood Cutting Accessories</h6>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-2 mt-4">
                        <div class="card">


                            <a href="./detail.html"><img src="static/images/improvement/145_0.jpg" class="card-img-top"
                                    alt="...">
                            </a>
                            <div class="card-body"><a href="./detail.html">
                                </a><a href="./detail.html">
                                    <h6 class="card-title">Brass Faucets Standard Connector Washing Machine Gun Quick
                                        Connect Fitting Pipe Connections Threaded Tap Connectors Tools</h6>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-2">

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="carouselExampleIndicators3" class="carousel slide" data-ride="carousel" data-interval="3000">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators3" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators3" data-slide-to="1" class=""></li>
            <li data-target="#carouselExampleIndicators3" data-slide-to="2" class=""></li>
            <li data-target="#carouselExampleIndicators3" data-slide-to="3" class=""></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="static/images/slide3_1.jpg" class="d-block w-100" alt="images/slide3_1.jpg">
            </div>
            <div class="carousel-item">
                <img src="static/images/slide3_2.jpg" class="d-block w-100" alt="images/slide3_2.jpg">
            </div>
            <div class="carousel-item">
                <img src="static/images/slide3_3.jpg" class="d-block w-100" alt="images/slide3_3.jpg">
            </div>
            <div class="carousel-item">
                <img src="static/images/slide3_4.jpg" class="d-block w-100" alt="images/slide3_4.jpg">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators3" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators3" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <div class="container">

        <!--Tools -->
        <div class="row">
            <h1 class="mx-auto" style="margin-top: 1.5rem">Home &amp; Garden</h1>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="row mb-3">

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/Home&amp;Garden/219_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Drinking Straws</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">2pcs Reusable Silicone Drinking Straws Home Party Straw with
                                        Cleaning Brush for Home Party Wedding Decor Bar Accessories Straws</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/Home&amp;Garden/203_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Kitchen Accessories</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">Kitchen Accessories Cooking Gadgets Silicone Anti Overflow Lid
                                        Holder Soup Funny Man Phone Holder Stand Universial Kitchen Tool</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/Home&amp;Garden/226_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Bent Straws</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">3/5pcs Stainless Steel Straight Bent Straws+Cleaning Brush
                                        Drinking Tool With Cleaning Brush Dinking Straws Bar Accessories</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/Home&amp;Garden/222_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Brush Dust</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">Soft Microfiber Cleaning Duster Brush Dust Cleaner can not lose
                                        hair Static Anti Dusting Brush Household Cleaning Tools</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/Home&amp;Garden/224_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Disposable Gloves</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">100pcs Plastic Disposable Gloves Restaurant Home Service
                                        Catering Hygiene Home Dining Kitchen Accessories</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/Home&amp;Garden/214_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Straws Reusable</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">4/6/8pcs Reusable Metal Straws Reusable Drinking Stainless
                                        Steel Straws with Cleaner Brush Kits for Mugs Party Bar Accessories</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/Home&amp;Garden/221_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Microfiber Duster</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">Adjustable Stretch Extend Microfiber Duster Static Suction
                                        Dusting Brush Clean Up Table Car Dust Anti-Static House Cleaning Tool</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/Home&amp;Garden/205_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">3D Skull</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">3D Skull Ice Silicone Mold Maker Ice Cube Tray Pudding Mold
                                        Cake Candy Mould Bar Party Cool Wine Ice Cream Kitchen DIY Accessory</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/Home&amp;Garden/232_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Floor Mop</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">Replacement 360 Rotating Head Easy Microfiber Spinning Floor
                                        Mop Head for Housekeeper Home Floor Cleaning Mop</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/Home&amp;Garden/212_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Stainless Steel</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">Stainless Steel Wine Olive Oil Pourer Dispenser Spout Glass
                                        Bottle Wine Bottle Pour Spout Stopper Barware For Bar Dropshipping</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/Home&amp;Garden/209_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Cake Molds</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">New 1PCS Chess Shape Silicone Cake Molds Fondant Cake Jelly
                                        Candy Chocolate Mold DIY Bakware Decorate 20.5*8.5cm</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/Home&amp;Garden/236_0.jpg" class="card-img-top"
                                    alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Gun Spray</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">Pneumatic Air Blow Gun Spray Pistol Compressor Dust Blower
                                        Cleaner Compressor Dust Blower 8inch Nozzle Cleaning Tool</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="container">

        <!--Tools -->
        <div class="row">
            <h1 class="mx-auto" style="margin-top: 1.5rem">Tools</h1>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="row mb-3">

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/tools/1_0.jpg" class="card-img-top" alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Repair Tool</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">86pcs M3-M8 Hand Riveter Nut Rivet Gun Kit Threaded Nut Rive
                                        Tool with Rivnut Nutsert Riveting Kit for Household Repair Tools</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/tools/58_0.jpg" class="card-img-top" alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Mini Power Driver</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">12V Home Mini Power Driver Cordless Drill Rechargeable Electric
                                        Screwdriver Wireless Power Driver DC Lithium-Ion Battery</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/tools/46_0.jpg" class="card-img-top" alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Washer Water</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">Car High Pressure Power Water Gun Airbrush Washer Water Jet
                                        Garden Water Hose Wand Nozzle Spray Sprinkler Cleaning Tool Dropship</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/tools/53_0.jpg" class="card-img-top" alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Lithium Batteries</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">NI-CD18V2.0Ah Power Tools Battery Pack 18V Power Tools Lithium
                                        Batteries</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/tools/2_0.jpg" class="card-img-top" alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Measure Tools</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">Outside Micrometer 0-25mm/0.01mm Gauge Vernier Caliper Gauge
                                        Meter Micrometer Carbon Steel Measure Tools</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/tools/16_0.jpg" class="card-img-top" alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Plasterboard Gypsum</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">15mm Plasterboard Gypsum Board Wood Planer Edge Jig Plane
                                        Woodworking Tool</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/tools/33_0.jpg" class="card-img-top" alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Steel Socket</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">Stainless Steel Socket Extending Rod Golden Keychain Extension
                                        Bar for Screwdriver Bits</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/tools/7_0.jpg" class="card-img-top" alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Steel Triangular</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">5pcs 50mm Electric Screwdrivers Bits Magnetic U-shaped
                                        Screwdriver Bits S2 Alloy Steel Triangular Screw Driver Bit Hand Tool Set</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/tools/57_0.jpg" class="card-img-top" alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Bench Vise</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">Bench Vise Table Screw Vise Bench Clamp Screw Vise for
                                        Metalworking Electric Drill Clamp Grinder Holder Bracket Repair Tools</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/tools/24_0.jpg" class="card-img-top" alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Tool Bag</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">Multi-function Canvas Waterproof Storage Hand Tool Bag Portable
                                        Tool kit Wrenches Screwdrivers Pliers Metal Parts Storage Bag</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/tools/49_0.jpg" class="card-img-top" alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Scrubber Brush Drill</h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">3pcs/set Power Scrubber Brush Drill Brush Clean for Bathroom
                                        Surfaces Tub Shower Tile Grout Cordless Power Scrub Cleaning Tools</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-4">
                        <div class="card">
                            <a href="./detail.html"><img src="static/images/tools/35_0.jpg" class="card-img-top" alt="..."></a>
                            <div class="card-body">
                                <a href="./detail.html">
                                    <h5 class="card-title">Diamond Coated Glass </h5>
                                </a>
                                <a href="./detail.html">
                                    <p class="card-text">100mm Diamond Coated Glass Grinding Cutter Saw Blade Wheel Disc
                                        Rotary Tool for Marble Granite Glass</p>
                                </a>
                                <a href="#" class="btn btn-outline-danger"><i
                                        class="fas fa-cart-plus mr-2"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div id="carouselExampleIndicators4" class="carousel slide" data-ride="carousel" data-interval="2500">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators4" data-slide-to="0" class=""></li>
            <li data-target="#carouselExampleIndicators4" data-slide-to="1" class="active"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active carousel-item-left">
                <img src="static/images/slide4_1.jpg" class="d-block w-100" alt="images/slide3_1.jpg">
            </div>
            <div class="carousel-item carousel-item-next carousel-item-left">
                <img src="static/images/slide4_2.jpg" class="d-block w-100" alt="images/slide3_2.jpg">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators4" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators4" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <section id="footer">
        <div class="container">
            <div class="row text-center text-xs-center text-sm-left text-md-left">
                <div class="col-xs-12 col-sm-4 col-md-4">
                    <ul class="list-unstyled quick-links">
                        <img src="static/images/My_Facebook_Code.png" alt="" style="height: 250px">
                    </ul>
                </div>
                <div class="col-xs-12 col-sm-4 col-md-4">
                    <h5>About Website</h5>
                    <ul class="list-unstyled quick-links">
                        <li><a href="#"><i
                                    class="fa fa-angle-double-right"></i>Home</a></li>
                        <li><a href="#"><i class="fa fa-angle-double-right"></i>About</a></li>
                        <li><a href="#"><i
                                    class="fa fa-angle-double-right"></i>Product</a></li>
                        <li><a href="#"><i
                                    class="fa fa-angle-double-right"></i>Sale now</a></li>
                        <li><a href="#"><i
                                    class="fa fa-angle-double-right"></i>Singup</a></li>
                        <li><a href="
                                http://localhost:8080/HousewareShop/login">
                                <i class="fa fa-angle-double-right"></i>Your-Profile</a></li>
                    </ul>
                </div>
                <div class="col-xs-12 col-sm-4 col-md-4">
                    <h5>Contact</h5>

                    <ul class="list-unstyled quick-links">
                        <li><a><i class="fas fa-phone-volume"></i>0123456789</a><a><i
                                    class="fa fa-envelope ml-3"></i>anhng2610@gmail.com</a></li>
                        <li><a
                                href="https://www.google.com/maps?ll=20.994897,105.523648&amp;z=15&amp;t=m&amp;hl=vi&amp;gl=US&amp;mapclient=embed&amp;saddr=QL21,+Th%E1%BA%A1ch+Ho%C3%A0,+Th%E1%BA%A1ch+Th%E1%BA%A5t,+H%C3%A0+N%E1%BB%99i&amp;daddr=Ng%C3%A3+ba+H%C3%B2a+L%E1%BA%A1c+-+QL+21,+H%C3%B2a+L%E1%BA%A1c,+Th%E1%BA%A1ch+Th%E1%BA%A5t,+H%C3%A0+N%E1%BB%99i&amp;dirflg=d"><i
                                    class="fa fa-angle-double-right"></i>21, Thôn 6, Xã Thạch Hòa, Huyện Thạch Thất, Hà
                                Nội, Việt Nam</a></li>
                        <div id="map" style="height:150px;">
                            <iframe
                                src="https://www.google.com/maps/embed?pb=!1m26!1m12!1m3!1d28951.161087040786!2d105.51070539259248!3d20.995169088270938!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m11!3e0!4m3!3m2!1d20.9946236!2d105.52396399999999!4m5!1s0x31345b9f825d11d7%3A0x1772bcf973ec956c!2zTmfDoyBiYSBIw7JhIEzhuqFjIC0gUUwgMjEsIEjDsmEgTOG6oWMsIFRo4bqhY2ggVGjhuqV0LCBIw6AgTuG7mWksIFZp4buHdCBOYW0!3m2!1d20.994598999999997!2d105.523479!5e0!3m2!1svi!2s!4v1573398015876!5m2!1svi!2s"
                                width="250" height="100" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                        </div>
                    </ul>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-5">
                    <ul class="list-unstyled list-inline social text-center">
                        <li class="list-inline-item"><a href="https://www.facebook.com/messages/t/xb.jamesgosling"><i
                                    class="fab fa-facebook"></i></a></li>
                        <li class="list-inline-item"><a href="#"><i class="fab fa-google-plus-g"></i></a></li>
                        <li class="list-inline-item"><a href="https://www.instagram.com/xbjamesgosling/?hl=vi"><i
                                    class="fab fa-instagram"></i></a></li>
                        <li class="list-inline-item"><a href="#"><i class="fas fa-phone-volume"></i></a></li>
                        <li class="list-inline-item"><a href="mailto:lehongquan15a@gmail.com?cc=name2@rapidtables.com&amp;bcc=name3@rapidtables.com
                                                        &amp;subject=The%20subject%20of%20the%20email
                                                        &amp;body=The%20body%20of%20the%20email" target="_blank"><i
                                    class="fa fa-envelope"></i></a></li>
                    </ul>
                </div>

            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-2 text-center text-white">
                    <p><u><a href="#">National Transaction Corporation</a></u> is a
                        Registered MSP/ISO of Elavon, Inc. Georgia [a wholly owned subsidiary of U.S. Bancorp,
                        Minneapolis, MN]</p>
                    <p class="h6">© copyright by <a class="text-green" href="#"
                            target="_blank">HousewareShop</a></p>
                </div>

            </div>
        </div>
    </section>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>

</html>
