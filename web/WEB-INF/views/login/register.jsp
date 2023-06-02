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
                    <h1 class="auth-headline">Lorem ipsum dolor sit amet consectetur adipisicing</h1>
                    <p class="auth-details">Elit Iusto dolore libero recusandae dolor dolores explicabo ullam cum
                        facilis aperiam alias odio quam excepturi molestiae omnis inventore. Repudiandae officia placeat
                        amet consectetur dicta dolorem quo.</p>
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
        <form class="auth-form"action="<c:url value="/login/register_handler.do"/>" >
            <div class="auth-form-content">
                <h3 class="auth-form-title">Register a new account.</h3>
                <div class="form-group"><input type="text" class="form-control" name="userName"placeholder="enter full name"></div>
                <div class="form-group"><input type="email" name="userEmail" class="form-control" placeholder="enter email address">
                </div>
                <div class="form-group"><input type="password" name="userPass"class="form-control" placeholder="enter strong password">
                </div>
                <div class="form-group"><input type="password" name="re_pass"class="form-control" placeholder="enter reapet password">
                </div>
                <div class="form-group"><input type="number" class="form-control" name="userPhone"placeholder="enter phone number"></div>
                <div class="form-group"><input type="text" class="form-control" name="userAddress"placeholder="enter your address"></div>
                <div class="form-check"><input class="form-check-input" type="checkbox" id="checkAgree"><label
                        class="form-check-label" for="checkAgree">I agree to the <a href="#">Terms </a> and <a
                            href="<c:url value="/login/privacy.do"/>">Privacy Policy</a>.</label></div>
                <button type="submit" name="op" value="register" class="form-btn">register</button>

                <div class="auth-form-or"><span>or</span></div>
                <ul class="auth-form-continue">
                    <p class="auth-form-text">Already have an account? <a href="<c:url value="/login/login.do"/>">Login here</a></p>
                    <i style="color: red">${error}</i>
                    <i style="color: greenyellow">${message}</i>
                </ul>
            </div>
        </form>
    </section>
    <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/vendor/jquery-3.5.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/vendor/bootstrap/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/vendor/bootstrap/bootstrap.min.js"></script>
</body>
