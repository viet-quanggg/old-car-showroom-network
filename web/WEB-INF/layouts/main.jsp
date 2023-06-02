<%-- 
    Document   : main
    Created on : May 27, 2023, 10:45:24 PM
    Author     : _viet.quangg
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>


<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="template" content="Ghurnek">
        <meta name="title" content="Ghurnek - Automotive Car Dealer HTML Template">
        <meta name="keywords"
              content="automotive, car, dealer, dealership, car dealership, html, template, auto, directory, inventory, listing, vehicle, inventory managment, bootstrap, classified ads">
        <title>Home | Ghurnek</title>
        <link rel="icon" href="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/favicon.png">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/fonts/typography/jost.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/fonts/icofont/icofont.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/fonts/material/icon.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/vendor/venobox/venobox.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/vendor/slickslider/slick.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/vendor/bootstrap/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/css/ltr.min.css"/>
    </head>
    <body>
        <div class="backdrop"></div>
        <header class="header-part"><a href="<c:url value="/ocsn/index.do"/>" class="header-logo"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/logo.png" alt="logo"></a>
            <div class="header-content">
                <div class="header-responsive"><button type="button" class="header-widget sidebar-open"><i
                            class="material-icons">notes</i><span>menu</span></button><a href="<c:url value="/ocsn/index.do"/>"
                                                                                 class="responsive-logo"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/logo.png" alt="logo"></a><button type="button"
                                                                                                                                                                class="header-widget responsive-srch"><i
                            class="material-icons">search</i><span>search</span></button></div>
                <form class="header-form">
                    <div class="header-search"><button type="submit" title="Search Submit"
                                                       class="material-icons">search</button><input type="text"
                                                       placeholder="Search, your Dreaming Car"><select class="form-select">
                            <option value="all" selected>all type</option>
                            <option value="new">new type</option>
                            <option value="used">used type</option>
                        </select><button type="button" title="Search Option"
                                         class="advance-search material-icons">tune</button></div>
                    <div class="header-option"><input type="text" placeholder="Max Price"><input type="text"
                                                                                                 placeholder="Min Price"><select class="form-select">
                            <option selected>makes</option>
                            <option value="1">all makes</option>
                            <option value="2">chevrolet</option>
                            <option value="3">bentley</option>
                            <option value="4">nissan</option>
                            <option value="5">honda</option>
                        </select><select class="form-select">
                            <option selected>models</option>
                            <option value="1">all models</option>
                            <option value="2">2 series</option>
                            <option value="3">4 runner</option>
                            <option value="4">camero</option>
                            <option value="5">elantra</option>
                        </select><button type="submit">search</button></div>
                </form>

            </div>
            <c:if test="${User==null}">
                <a href="<c:url value="/login/login.do"/>" class="header-user"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/user.png"
                                                                                    alt="user"><span>join</span></a>
                </c:if>   
                <c:if test="${User!=null}">

                <a href="<c:url value="/login/profile.do"/>" class="header-user"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/user.png"
                                                                                      alt="user"><span>join</span></a>
                                                                                      <a href="<c:url value="/login/logout.do"/>" style="color: whitesmoke">Logout</a>                                                                          
            </c:if>     

            <a href="<c:url value="/order/createad.do"/>" class="btn header-btn"><i
                    class="material-icons">storefront</i><span>sell vehicles</span></a>
        </header>

        <div class="row">
            <div class="col">
                <jsp:include page="/WEB-INF/views/${controller}/${action}.jsp" />
            </div>
        </div>

        <aside class="sidebar-part">
            <div class="sidebar-header"><a href="<c:url value="/ocsn/index.do"/>"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/logo.png" alt="logo"></a><button
                    class="sidebar-close material-icons">close</button></div>
            <div class="sidebar-content">
                <div class="sidebar-btn"><a href="<c:url value="/order/createad.do"/>" class="btn btn-inline"><i
                            class="material-icons">storefront</i><span>sell vehicles</span></a></div>
                <nav class="sidebar-nav">
                    <div class="sidebar-group">
                        <h5 class="sidebar-title">languages</h5>
                        <div class="select-option">
                            <div class="select-data"><img class="select-image" src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/flag/us.png" alt="flag"><span
                                    class="select-text">english - LTR</span><span class="select-arrow"></span></div>
                            <ul class="option-list">
                                <li class="option-item"><a href="#" class="option-link"><img class="option-image"
                                                                                             src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/flag/us.png" alt="flag"><span class="option-text">english -
                                            LTR</span></a></li>
                                <li class="option-item"><a href="https://mironmahmud.com/ghurnek/assets/rtl/index.html"
                                                           class="option-link"><img class="option-image" src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/flag/sa.png"
                                                             alt="flag"><span class="option-text">arabic - RTL</span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="sidebar-group">
                        <h5 class="sidebar-title">user action</h5>
                        <ul class="nav-list">
                            <li class="nav-item"><a href="favorite.html" class="nav-link"><i
                                        class="material-icons">favorite</i><span class="nav-text">favorite</span><span
                                        class="nav-count">0</span></a></li>
                            <li class="nav-item"><a href="compare.html" class="nav-link"><i
                                        class="material-icons">compare</i><span class="nav-text">compare</span><span
                                        class="nav-count">0</span></a></li>
                            <li class="nav-item"><a href="notify.html" class="nav-link"><i
                                        class="material-icons">notifications</i><span
                                        class="nav-text">notification</span><span class="nav-count">9+</span></a></li>
                        </ul>
                    </div>
                    <div class="sidebar-group">
                        <h5 class="sidebar-title">main menu</h5>
                        <ul class="nav-list">
                            <li class="nav-item"><a href="<c:url value="/ocsn/index.do"/>" class="nav-link"><i
                                        class="material-icons">home</i><span class="nav-text">home</span></a></li>
                            <li class="nav-item"><a href="#" class="nav-link"><i class="material-icons">inventory</i><span
                                        class="nav-text">inventory</span><span class="nav-arrow"></span></a>
                                <ul class="drop-list">
                                    <li class="drop-item"><a href="<c:url value="/cars/cargrid.do"/>" class="drop-link"><i
                                                class="material-icons">remove</i><span>Car grid</span></a></li>
                                    <li class="drop-item"><a href="<c:url value="/cars/carlist.do"/>" class="drop-link"><i
                                                class="material-icons">remove</i><span>car list</span></a></li>
                                </ul>
                            </li>
                            <li class="nav-item"><a href="#" class="nav-link"><i class="material-icons">store</i><span
                                        class="nav-text">vendor</span><span class="nav-arrow"></span></a>
                                <ul class="drop-list">
                                    <li class="drop-item"><a href="vendor-grid.html" class="drop-link"><i
                                                class="material-icons">remove</i><span>vendor grid</span></a></li>
                                    <li class="drop-item"><a href="vendor-list.html" class="drop-link"><i
                                                class="material-icons">remove</i><span>vendor list</span></a></li>
                                    <li class="drop-item"><a href="posted-ads.html" class="drop-link"><i
                                                class="material-icons">remove</i><span>vendor single</span></a></li>
                                </ul>
                            </li>
                            <li class="nav-item"><a href="#" class="nav-link"><i class="material-icons">menu_book</i><span
                                        class="nav-text">pages</span><span class="nav-arrow"></span></a>
                                <ul class="drop-list">
                                    <li class="drop-item"><a href="<c:url value="/ocsn/aboutus.do"/>" class="drop-link"><i
                                                class="material-icons">remove</i><span>about us</span></a></li>
                                    <li class="drop-item"><a href="<c:url value="/order/pricingplan.do"/>" class="drop-link"><i
                                                class="material-icons">remove</i><span>pricing plan</span></a></li>
                                </ul>
                            </li>
                            <li class="nav-item"><a href="#" class="nav-link"><i class="material-icons">feed</i><span
                                        class="nav-text">blogs</span><span class="nav-arrow"></span></a>
                                <ul class="drop-list">
                                    <li class="drop-item"><a href="<c:url value="/blog/bloggrid.do"/>" class="drop-link"><i
                                                class="material-icons">remove</i><span>blog grid</span></a></li>
                                    <li class="drop-item"><a href="<c:url value="/blog/bloglist.do"/>" class="drop-link"><i
                                                class="material-icons">remove</i><span>blog list</span></a></li>
                                </ul>
                            </li>
                            <li class="nav-item"><a href="#" class="nav-link"><i
                                        class="material-icons">contact_support</i><span class="nav-text">support</span><span
                                        class="nav-arrow"></span></a>
                                <ul class="drop-list">
                                    <li class="drop-item"><a href="faq.html" class="drop-link"><i
                                                class="material-icons">remove</i><span>faqs</span></a></li>
                                    <li class="drop-item"><a href="<c:url value="/ocsn/contact.do"/>" class="drop-link"><i
                                                class="material-icons">remove</i><span>contact us</span></a></li>
                                    <li class="drop-item"><a href="<c:url value="/login/privacy.do"/>" class="drop-link"><i
                                                class="material-icons">remove</i><span>privacy policy</span></a></li>
                                </ul>
                            </li>
                            <li class="nav-item"><a href="#" class="nav-link"><i class="material-icons">security</i><span
                                        class="nav-text">security</span><span class="nav-arrow"></span></a>
                                <ul class="drop-list">
                                    <li class="drop-item"><a href="<c:url value="/views/login/login.do"/>" class="drop-link"><i
                                                class="material-icons">remove</i><span>login</span></a></li>
                                    <li class="drop-item"><a href="<c:url value="/views/login/register.do"/>" class="drop-link"><i
                                                class="material-icons">remove</i><span>register</span></a></li>
                                    <li class="drop-item"><a href="<c:url value="/views/login/forgotpassword.do"/>" class="drop-link"><i
                                                class="material-icons">remove</i><span>forgot password</span></a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="sidebar-group">
                        <h5 class="sidebar-title">user menu</h5>
                        <ul class="nav-list">
                            <li class="nav-item"><a href="<c:url value="/user/dashboard.do"/>" class="nav-link"><i
                                        class="material-icons">dashboard</i><span class="nav-text">dashboard</span></a></li>
                            <li class="nav-item"><a href="<c:url value="/login/profile.do"/>" class="nav-link"><i
                                        class="material-icons">account_circle</i><span class="nav-text">profile</span></a>
                            </li>
                            <li class="nav-item"><a href="<c:url value="/order/createad.do"/>" class="nav-link"><i
                                        class="material-icons">note_add</i><span class="nav-text">create ads</span></a></li>
                            <li class="nav-item"><a href="posted-ads.html" class="nav-link"><i
                                        class="material-icons">apps</i><span class="nav-text">posted ads</span></a></li>
                            <li class="nav-item"><a href="favorite.html" class="nav-link"><i
                                        class="material-icons">favorite</i><span class="nav-text">favorites</span></a></li>
                            <li class="nav-item"><a href="compare.html" class="nav-link"><i
                                        class="material-icons">compare</i><span class="nav-text">compares</span></a></li>
                            <li class="nav-item"><a href="review.html" class="nav-link"><i
                                        class="material-icons">star</i><span class="nav-text">reviews</span></a></li>
                            <li class="nav-item"><a href="notify.html" class="nav-link"><i
                                        class="material-icons">notifications</i><span
                                        class="nav-text">notifications</span></a></li>
                            <li class="nav-item"><a href="setting.html" class="nav-link"><i
                                        class="material-icons">settings</i><span class="nav-text">settings</span></a></li>
                            <li class="nav-item"><a href="<c:url value="/views/login/login.do"/>" class="nav-link"><i
                                        class="material-icons">lock</i><span class="nav-text">logout</span></a></li>
                        </ul>
                    </div>
                </nav>
            </div>
        </aside>
        <div class="float-menu"><button type="button" class="float-widget badge-hover"><i
                    class="material-icons">widgets</i><span class="badge arrow-right">widgets</span><sup>9</sup></button>
            <ul class="float-list">
                <li class="float-item"><a href="compare.html" class="badge-hover"><i
                            class="purple material-icons">compare</i><span
                            class="badge arrow-right">compare</span><sup>2</sup></a></li>
                <li class="float-item"><a href="favorite.html" class="badge-hover"><i
                            class="red material-icons">favorite</i><span
                            class="badge arrow-right">favorite</span><sup>4</sup></a></li>
                <li class="float-item"><a href="notify.html" class="badge-hover"><i
                            class="orange material-icons">notifications</i><span
                            class="badge arrow-right">notify</span><sup>3</sup></a></li>
            </ul>
        </div>
        <div class="mobile-menu"><a href="<c:url value="/views/login/register.do"/>"><i class="material-icons">person</i><span>account</span></a><a
                href="notify.html"><i class="material-icons">notifications</i><span>notify</span><sup>9</sup></a><a
                href="<c:url value="/order/createad.do"/>" title="sell vehicless"><i class="material-icons">storefront</i></a><a
                href="compare.html"><i class="material-icons">compare</i><span>compare</span><sup>3+</sup></a><a
                href="favorite.html"><i class="material-icons">favorite</i><span>favorite</span><sup>8</sup></a>
        </div>






        <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/vendor/jquery-3.5.0.min.js"></script>
        <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/vendor/bootstrap/popper.min.js"></script>
        <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assetsvendor/bootstrap/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/vendor/slickslider/slick.min.js"></script>
        <script src="../vendor/slickslider/ltr-slick-custom.js"></script>
        <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/vendor/venobox/venobox.min.js"></script>
        <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/vendor/venobox/venobox-custom.js"></script>
        <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/js/dropdown-menu.js"></script>
        <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/js/select-option.js"></script>
        <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/js/float-menu.js"></script>
        <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/js/custom.js"></script>

    </body>

    <footer class="footer-part">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="footer-top"><a href="#"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/logo.png" alt="logo"></a>
                        <ul>
                            <li><i
                                    class="material-icons">description</i><span>info@example.com<br>carrer@example.com</span>
                            </li>
                            <li><i class="material-icons">perm_phone_msg</i><span>+91 987-654-3210<br>+91
                                    987-654-5466</span></li>
                            <li><i class="material-icons">map</i><span>1Hd- 50, 010 Avenue, <br>NY 90001 United
                                    States</span></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-lg-4 col-xl-4">
                    <div class="footer-widget">
                        <h3>about company</h3>
                        <p>In order to create a friendly and easy-to-use online website to sell and buy cars.
                            We provided a reliable services with trained staffs to support you in selling and buying cars.
                            As a new member to the online market place, we hope we can provided you with best services and 
                            reasonable prices.</p>
                        <div class="footer-badge"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/badge/01.png" alt="badge"><img
                                src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/badge/02.png" alt="badge"></div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-4">
                    <div class="footer-group">
                        <div class="footer-widget">
                            <h3>importants</h3>
                            <ul class="footer-list">
                                <li><a href="#">sell vehicless</a></li>
                                <li><a href="<c:url value="/login/privacy.do"/>">privacy policy</a></li>
                                <li><a href="<c:url value="/ocsn/aboutus.do"/>">about company</a></li>
                                <li><a href="<c:url value="/ocsn/contact.do"/>">contact us</a></li>
                                <li><a href="#">career</a></li>
                            </ul>
                        </div>
                        <div class="footer-widget">
                            <h3>categories</h3>
                            <ul class="footer-list">
                                <li><a href="#">new vehicles</a></li>
                                <li><a href="#">used vehicles</a></li>
                                <li><a href="#">top searching</a></li>
                                <li><a href="#">top makes</a></li>
                                <li><a href="#">top types</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 col-lg-4 col-xl-4">
                    <div class="footer-widget">
                        <h3>our newsletter</h3>
                        <p>Be the first to know about our offers and discounts by subscribing to the newsletter</p>
                        <form class="footer-form"><input type="email" placeholder="enter your email"><button
                                type="submit" class="material-icons">forward_to_inbox</button></form>
                        <ul class="footer-social">
                            <li><a href="#" class="icofont-facebook"></a></li>
                            <li><a href="#" class="icofont-twitter"></a></li>
                            <li><a href="#" class="icofont-linkedin"></a></li>
                            <li><a href="#" class="icofont-whatsapp"></a></li>
                            <li><a href="#" class="icofont-youtube-play"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <div class="footer-bottom">
        <div class="container">
            <p class="footer-text">&copy; 2022 all rights reserved by &hearts; <a href="#">mironcoder</a></p><a href="#"
                                                                                                                class="footer-backtop"><i class="material-icons">arrow_upward</i></a>
            <div class="footer-payment"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/payment/01.jpg" alt="payment"><img
                    src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/payment/02.jpg" alt="payment"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/payment/03.jpg" alt="payment"><img
                    src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/payment/04.jpg" alt="payment"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/payment/05.jpg" alt="payment"><img
                    src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/payment/06.jpg" alt="payment"></div>
        </div>
    </div>


</html>
