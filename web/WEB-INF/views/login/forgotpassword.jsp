<%-- 
    Document   : forgotpassword
    Created on : May 28, 2023, 9:22:23 AM
    Author     : _viet.quangg
--%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="template" content="Ghurnek">
    <meta name="title" content="Ghurnek - Automotive Car Dealer HTML Template">
    <meta name="keywords"
          content="automotive, car, dealer, dealership, car dealership, html, template, auto, directory, inventory, listing, vehicle, inventory managment, bootstrap, classified ads">
    <title>Forgot Password | Ghurnek</title>
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
                <div class="auth-content"><a class="auth-logo" href="index.html"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/logo.png"
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
        <form class="auth-form">
            <div class="auth-form-content">
                <h3 class="auth-form-title">Dont't be worried about it!</h3>
                <div class="form-group"><input type="email" class="form-control" placeholder="enter your email"></div>
                <button type="submit" class="form-btn">get reset link</button>
                <div class="auth-form-or"><span>or</span></div>
                <ul class="auth-form-continue">
                    <p class="auth-form-text">Go back to <a href="<c:url value="/login/login.do"/>">login here</a></p>
                </ul>
            </div>
        </form>
    </section>
    <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/vendor/jquery-3.5.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/vendor/bootstrap/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/vendor/bootstrap/bootstrap.min.js"></script>
</body>