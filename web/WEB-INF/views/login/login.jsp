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
                                                                                                            <%
	    Cookie[] cookies=request.getCookies();
	    String cookiename = "", password = "",rememberVal="";
	    if (cookies != null) {
	         for (Cookie cookie : cookies) {
	           if(cookie.getName().equals("cookuser")) {
	             cookiename = cookie.getValue();
	           }
	           if(cookie.getName().equals("cookpass")){
	             password = cookie.getValue();
	           }
	           if(cookie.getName().equals("cookrem")){
	             rememberVal = cookie.getValue();
	           }
	        }
	    }
	%>

        <form method="post" class="auth-form" action="<c:url value="/login/login_handler.do"/>" >
            <div class="auth-form-content">
                <h3 class="auth-form-title">Login with your credentials.</h3>
                <div class="form-group"><input type="email" id="userEmail" name="userEmail" placeholder="Enter your email" class="form-control" placeholder="enter your email" required autocomplete="off" value="${userEmail}" ></div>
                <div class="form-group"><input type="password" id="password" name="userPass" class="form-control" placeholder="Enter your password" required autocomplete="off" value="<%=password%>" >
                </div>
                <div class="form-group-content">
                    <div class="form-check mb-0"><input class="form-check-input" type="checkbox" id="checkAgree"><label
                            class="form-check-label" type="checkbox" name="remember" value="1"
                        <%= "1".equals(rememberVal.trim()) ? "checked=\"checked\"" : "" %> for="checkAgree">Remember me.</label></div><a class="auth-forgot"
                                                                                           href="<c:url value="/login/forgotpassword.do"/>">forgot password?</a>
                </div>
                <div>
                    <a style="color: greenyellow" >${message1}</a>
                </div>
                <button type="submit" name="op" value="login" class="form-btn">login</button>
                <div class="auth-form-or"><span>or</span></div>
                <ul class="auth-form-continue">
                    <p class="auth-form-text"><a href="https://accounts.google.com/o/oauth2/auth?scope=email%20profile&redirect_uri=http://localhost:8080/OldCarShowroom/LoginGoogleController&response_type=code
		   &client_id=423146072038-10d7u9dnc003v871hpalrujk4ph63j1b.apps.googleusercontent.com&approval_prompt=force">Login with google</a></p>
   
                </ul>
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