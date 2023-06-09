<%-- 
    Document   : register
    Created on : May 28, 2023, 9:10:46 AM
    Author     : _viet.quangg
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="template" content="Ghurnek">
    <meta name="title" content="Ghurnek - Automotive Car Dealer HTML Template">
    <meta name="keywords"
          content="automotive, car, dealer, dealership, car dealership, html, template, auto, directory, inventory, listing, vehicle, inventory managment, bootstrap, classified ads">
    <title>Register | Ghurnek</title>
    <link rel="icon" href="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/favicon.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/fonts/typography/jost.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/fonts/icofont/icofont.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/fonts/material/icon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/vendor/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/css/ltr.min.css">
</head>

<body class="auth-body">
    <section class="auth-part">
        <div class="auth-banner"><img class="auth-banner-bg" src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/bg/auth.jpg" alt="auth">
            <div class="auth-banner-overlay">
                <div class="auth-content"><a class="auth-logo" href="<c:url value="/ocsn/index.do"/>"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/logo.png"
                                                                                                           alt="logo"></a>
                    <h1 class="auth-headline">Looking for a reliable and convenient way to buy or sell a car?</h1>
                    <p class="auth-details">OCSN is an online automotive marketplace that helps users find great deals on new and used cars. 
                            They offer a wide range of features including price comparisons, dealer reviews, and vehicle history reports.</p>
                    <div class="auth-social">
                        <h5>follow on</h5>
                        <ul>
                            <li><a href="#" class="facebook icofont-facebook"></a></li>
                            <li><a href="#" class="twitter icofont-twitter"></a></li>
                            <li><a href="#" class="linkedin icofont-linkedin"></a></li>
                            <li><a href="#" class="instagram icofont-instagram"></a></li>
                            <li><a href="#" class="youtube icofont-youtube-play"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <form method="post"  class="auth-form" action="<c:url value="/login/register_handler.do"/>" >
            <div class="auth-form-content">
                <h3 class="auth-form-title">Register a new account.</h3>
                <div class="form-group"><input type="text" class="form-control" name="userName" placeholder="enter full name" value="${userName}">
                    <div style="color: red">${errorN}</div>
                </div>
                <div class="form-group"><input type="email" name="userEmail" class="form-control" placeholder="enter email address" value="${userEmail}" >
                    <div style="color: red">${errorE}</div>
                </div>
                <div class="form-group"><input type="password" name="userPass"class="form-control" placeholder="enter strong password" >
                    <div style="color: red">${errorPa}</div>
                </div>
                <div class="form-group"><input type="password" name="re_pass"class="form-control" placeholder="enter reapet password" >
                    <div style="color: red">${errorR}</div>
                </div>
                <div class="form-group"><input type="number" class="form-control" name="userPhone"placeholder="enter phone number" value="${userPhone}">
                    <div style="color: red">${errorPh}</div>
                </div>
                <div class="form-group"><input type="text" class="form-control" name="userAddress"placeholder="enter your address" value="${userAddress}">
                    <div style="color: red">${errorA}</div></div>


                <div class="form-check"><input class="form-check-input" type="checkbox" name="termsAndPrivacy" value="agree"><label
                        class="form-check-label" for="checkAgree">I agree to the <a href="#">Terms </a> and <a
                            href="<c:url value="/login/privacy.do"/>">Privacy Policy</a>.</label>  
                    <div style="color: red">${errorT} </div>
                </div>

                <button type="submit" name="op" value="register" class="form-btn">register</button>

                <div class="auth-form-or"><span>or</span></div>
                <ul class="auth-form-continue">
                    <p class="auth-form-text">Already have an account? <a href="<c:url value="/login/login.do"/>">Login here</a></p>
                </ul>
            </div>
        </form>
    </section>
    <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/vendor/jquery-3.5.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/vendor/bootstrap/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/vendor/bootstrap/bootstrap.min.js"></script>
</body>
