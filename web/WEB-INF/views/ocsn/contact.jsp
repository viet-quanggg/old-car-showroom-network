<%-- 
    Document   : contact
    Created on : May 28, 2023, 11:24:09 AM
    Author     : _viet.quangg
--%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<section class="section-gap-100">
        <div style="background: url(${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/banner/single/01.jpg) no-repeat center / cover;">
            <div class="single-banner">
                <div class="container">
                    <h2>contact us</h2>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="<c:url value="/ocsn/index.do"/>">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">contact</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <section class="section-gap-100">
        <div class="container">
            <div class="row content-reverse">
                <div class="col-lg-6">
                    <div class="contact-map"><iframe
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3654.3406974350205!2d90.48469931445422!3d23.663771197998262!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b0d5983f048d%3A0x754f30c82bcad3cd!2sJalkuri%20Bus%20Stop!5e0!3m2!1sen!2sbd!4v1605354966349!5m2!1sen!2sbd"></iframe>
                    </div>
                </div>
                <div class="col-lg-6">
                    <form class="contact-form">
                        <h3 class="contact-form-title">Drop Your Thoughts</h3>
                        <div class="row">
                            <div class="form-group"><input class="form-control" type="text"
                                    placeholder="Enter your name"></div>
                            <div class="form-group"><input class="form-control" type="email"
                                    placeholder="Enter your email"></div>
                            <div class="form-group"><input class="form-control" type="text"
                                    placeholder="Enter your subject"></div>
                            <div class="form-group"><textarea class="form-control"
                                    placeholder="Write your message"></textarea></div><button class="form-btn"
                                type="submit">send message</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>