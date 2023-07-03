<%-- 
    Document   : login
    Created on : May 28, 2023, 9:07:00 AM
    Author     : _viet.quangg
--%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="template" content="Ghurnek">
    <meta name="title" content="Ghurnek - Automotive Car Dealer HTML Template">
    <meta name="keywords"
          content="automotive, car, dealer, dealership, car dealership, html, template, auto, directory, inventory, listing, vehicle, inventory managment, bootstrap, classified ads">
    <title>Login | Ghurnek</title>
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

        <form method="post" class="auth-form" action="<c:url value="/login/resetpassword_process.do"/>" >
            <div class="auth-form-content">
                <h3 class="auth-form-title">Reset Password Form</h3>
                <div class="form-group"><input type="password" id="password" name="uPass" class="form-control" placeholder="Enter your new password" required autocomplete="off" ></div>
                <div class="form-group"><input type="password" id="re_password" name="re_uPass" class="form-control" placeholder="Enter your password again" required autocomplete="off" >
                </div>
                <div>
                    <a style="color: greenyellow" >${message1}</a>
                    <a style="color: red" >${announce}</a>
                </div>
                <input value="${uEmail}" name ="email" hidden=""><br/>
                <button type="submit" name="op" value="save" class="form-btn">save</button>


                <div class="auth-form-or"><span>or</span></div>
                <ul class="auth-form-continue">
                    <p class="auth-form-text"> Don't have any account? <a href="<c:url value="/login/register.do"/>">Register here</a></p>
                    <h4 style="color: greenyellow">${message}</h4>
                    <h4 style="color: red">${errorLogin}</h4>
                </ul>
            </div>
        </form>
    </section>
    <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/vendor/jquery-3.5.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/vendor/bootstrap/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/vendor/bootstrap/bootstrap.min.js"></script>
</body>