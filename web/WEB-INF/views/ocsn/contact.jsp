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
                    <div class="contact-map"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.609941530549!2d106.80730807692865!3d10.841132857992955!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752731176b07b1%3A0xb752b24b379bae5e!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBGUFQgVFAuIEhDTQ!5e0!3m2!1svi!2s!4v1685869920052!5m2!1svi!2s" width="800" height="600" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
                <div class="col-lg-6">
                    <form class="contact-form" action="https://formsubmit.co/367e60716c9534d9fc8b3579929fd86b" method="POST" enctype="text/plain">
                        <h3 class="contact-form-title">Drop Your Thoughts</h3>
                        <div class="row">
                            <div class="form-group">
                                <input type="text" name="name" required class="form-control" 
                                    placeholder="Enter your name" ></div>
                            <div class="form-group">
                                <input type="email" name="email" required class="form-control" 
                                    placeholder="Enter your email" ></div>
                            <div class="form-group">
                                <input type="text" name="_subject" value="subject" required class="form-control"></div>
                            <div class="form-group">
                                <textarea  name="massage" required class="form-control"
                                    placeholder="Write your message" ></textarea></div>
                            <input type="hidden" name="_next" value="https://localhost:8080/OldCarShowroom/ocsn/index.do">
                            <button type="submit" class="form-btn"
                                           >send message</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>