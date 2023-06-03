<%-- 
    Document   : blogsingle
    Created on : May 28, 2023, 11:17:10 AM
    Author     : _viet.quangg
--%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<section class="section-gap-100">
    <div style="background: url(${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/banner/single/01.jpg) no-repeat center / cover;">
        <div class="single-banner">
            <div class="container">
                <h2>blog single page</h2>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="<c:url value="/ocsn/index.do"/>">Home</a></li>
                    <li class="breadcrumb-item"><a href="<c:url value="/blog/bloggrid.do"/>">blog-grid</a></li>
                    <li class="breadcrumb-item active" aria-current="page">blog-single</li>
                </ol>
            </div>
        </div>
    </div>
</section>
<article class="section-gap-100">
    <div class="container">
        <div class="row">
            <div class="col-12 col-lg-11 col-xl-10 m-auto">
                <div class="blog-single"><img class="blog-single-img" src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/blog/02.jpg" alt="blog">
                    <div class="blog-single-content">
                        <ul class="blog-single-meta-list">
                            <li><i class="material-icons">account_circle</i><span>post by <a
                                        href="blog-single.html">${bid.userId}</a></span></li>
                            <li><i class="material-icons">event_note</i><span>${bid.blogDate}</span></li>
                            <li><i class="material-icons">forum</i><span>05 comments</span></li>
                            <li><i class="material-icons">public</i><span>03 share</span></li>
                        </ul>
                        <h2 class="blog-single-title">${bid.blogTitle}</h2>
                        <p class="blog-single-para">${bid.blogDetail}</span></p>
                        <blockquote class="blog-single-quote"><i class="material-icons">format_quote</i>
                            <p>${bid.blogTitle}</p>
                            <h5>${bid.userId}</h5>
                        </blockquote>

                        <div class="blog-single-widget">
                            <ul class="blog-single-widget-list">
                                <li><span>Tags:</span></li>
                                <li><a href="#">roadjam</a></li>
                                <li><a href="#">vehicle</a></li>
                                <li><a href="#">noise</a></li>
                            </ul>
                            <ul class="blog-single-widget-list">
                                <li><span>Share:</span></li>
                                <li><a href="#" class="facebook">facebook</a></li>
                                <li><a href="#" class="twitter">twitter</a></li>
                                <li><a href="#" class="linkedin">linkedin</a></li>
                            </ul>
                        </div>
                        <div class="blog-author">
                            <div class="blog-author-group">
                                <div class="blog-author-info"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/avatar/01.jpg" alt="author">
                                    <h4><a href="blog-author.html">Miron Mahmud</a></h4>
                                    <h6><a href="#">www.mironmahmud.com</a></h6>
                                </div>
                                <div class="blog-author-content">
                                    <ul>
                                        <li><a href="#" class="facebook icofont-facebook"></a></li>
                                        <li><a href="#" class="twitter icofont-twitter"></a></li>
                                        <li><a href="#" class="linkedin icofont-linkedin"></a></li>
                                        <li><a href="#" class="pinterest icofont-pinterest"></a></li>
                                        <li><a href="#" class="instagram icofont-instagram"></a></li>
                                    </ul>
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate temporibus
                                        harum laborum quaerat blanditiis iste mollitia aperiam aut voluptates quidem
                                        nois aliquam incidunt expedita odit id repellat dicta Odio consectetur modi
                                        mollitia nihil Deserunt ab non tenetur quasi libero magn.</p>
                                </div>
                            </div>
                            <ul class="blog-author-meta-list">
                                <li><i class="material-icons">feed</i><span>Total Blog (25)</span></li>
                                <li><i class="material-icons">forum</i><span>Total Comment (130)</span></li>
                                <li><i class="material-icons">public</i><span>Total Share (45)</span></li>
                            </ul>
                        </div>
                        <div class="blog-single-suggest">
                            <c:forEach begin="0" end="1" items="${latest}" var="latest"> 
                                <div class="blog-grid-card">
                                    <div class="blog-grid-media"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/blog/02.jpg" alt="blog">
                                        <ul class="blog-grid-widget">
                                            <li><i class="material-icons">forum</i><span>3</span></li>
                                            <li><i class="material-icons">send</i><span>2</span></li>
                                        </ul>
                                    </div>
                                    <div class="blog-grid-content">
                                        <ul class="blog-grid-meta">
                                            <li><i class="material-icons">person</i><span>post by <a
                                                        href="blog-single.html">${latest.userId}</a></span></li>
                                            <li><i class="material-icons">event</i><span>${latest.blogDate}</span></li>
                                        </ul>
                                        <h3 class="blog-grid-name"><a href="<c:url value="/blog/blogsingle.do?bid=${latest.blogId}"/>">${latest.blogTitle}</a></h3>
                                        <p class="blog-grid-descrip">${latest.blogDetail}<a
                                                href="<c:url value="/blog/blogsingle.do?bid=${latest.blogId}"/>">read more</a></p>
                                    </div>
                                </div>
                            </c:forEach>
                         
                        </div>
                        <div class="blog-single-navigate"><a href="#">Prev Post</a><a href="#">Next Post</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</article>