<%-- 
    Document   : bloglist
    Created on : May 28, 2023, 10:16:13 AM
    Author     : _viet.quangg
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<section class="section-gap-100">
    <div style="background: url(${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/banner/single/01.jpg) no-repeat center / cover;">
        <div class="single-banner">
            <div class="container">
                <h2>blog list page</h2>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">blog-list</li>
                </ol>
            </div>
        </div>
    </div>
</section>
<section class="section-gap-100">
    <div class="container">
        <div class="row content-reverse">
            <div class="col-lg-4 col-xl-4">
                <div class="blog-widget">
                    <h5 class="blog-widget-title">Find blogs</h5>
                    <form class="blog-widget-form"><input type="text" placeholder="Search blogs"><button
                            type="submit" class="material-icons">search</button></form>
                </div>
                <div class="blog-widget">
                    <h5 class="blog-widget-title">latest blogs</h5>
                    <ul class="blog-widget-feed">
                        <c:forEach begin="0" end="3" items="${latest}" var="latest">
                        <li><a class="blog-widget-media" href="blog-single.html"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/blog/01.jpg"
                                                                                      alt="blog"></a>
                            <h5 class="blog-widget-text"><a href="blog-single.html">${latest.blogTitle}</a><span>${latest.blogDate}</span></h5>
                        </li>
                         </c:forEach>
                    </ul>
                </div>
                <div class="blog-widget">
                    <h5 class="blog-widget-title">top categories</h5>
                    <ul class="blog-widget-category">
                        <li><a href="#">car parking <span>22</span></a></li>
                        <li><a href="#">lamborgini <span>14</span></a></li>
                        <li><a href="#">repaire car <span>35</span></a></li>
                        <li><a href="#">car dealership <span>67</span></a></li>
                        <li><a href="#">mercedez benz <span>89</span></a></li>
                    </ul>
                </div>
                <div class="blog-widget">
                    <h5 class="blog-widget-title">popular tags</h5>
                    <ul class="blog-widget-tag">
                        <li><a href="#">parking</a></li>
                        <li><a href="#">dealership</a></li>
                        <li><a href="#">car racing</a></li>
                        <li><a href="#">automotive</a></li>
                        <li><a href="#">petrol</a></li>
                        <li><a href="#">electric car</a></li>
                        <li><a href="#">transport</a></li>
                        <li><a href="#">lamborgini</a></li>
                        <li><a href="#">audi</a></li>
                    </ul>
                </div>
                <div class="blog-widget">
                    <h5 class="blog-widget-title">follow us</h5>
                    <ul class="blog-widget-social">
                        <li><a href="#" class="facebook icofont-facebook"></a></li>
                        <li><a href="#" class="twitter icofont-twitter"></a></li>
                        <li><a href="#" class="linkedin icofont-linkedin"></a></li>
                        <li><a href="#" class="pinterest icofont-pinterest"></a></li>
                        <li><a href="#" class="instagram icofont-instagram"></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-8 col-xl-8">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="top-filter">
                            <div class="filter-show"><label class="filter-label">Show :</label><select
                                    class="form-select filter-select">
                                    <option value="1">12</option>
                                    <option value="2">24</option>
                                    <option value="3">36</option>
                                </select></div>
                            <div class="filter-short"><label class="filter-label">Short by :</label><select
                                    class="form-select filter-select">
                                    <option selected>default</option>
                                    <option value="3">trending</option>
                                    <option value="1">featured</option>
                                    <option value="2">recommend</option>
                                </select></div>
                            <div class="filter-action"><a href="<c:url value="/blog/bloggrid.do"/>" title="Grid View"
                                                          class="material-icons">grid_view</a><a href="<c:url value="/blog/bloglist.do"/>" title="List View"
                                                          class="material-icons active">list_alt</a></div>
                        </div>
                    </div>
                </div>
                <div class="row row-cols-1">
                    <c:forEach begin="0" end="3" items="${blog}" var="blog">


                        <div class="col">
                            <div class="blog-list-card">
                                <div class="blog-list-media"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/blog/01.jpg" alt="blog"></div>
                                <div class="blog-list-content">
                                    <ul class="blog-list-meta">
                                        <li><i class="material-icons">account_circle</i><span>post by <a
                                                    href="blog-single.html">${blog.userId}</a></span></li>
                                        <li><i class="material-icons">event_note</i><span>${blog.blogDate}</span></li>                                       
                                    </ul>
                                    <h3 class="blog-list-title"><a href="blog-single.html">${blog.blogTitle}.</a>
                                    </h3>
                                    <p class="blog-list-descrip">${blog.blogDetail}...<a href="blog-single.html">read more</a></p>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <div class="row">
                    <div class="col-xl-12">
                        <div class="bottom-paginate mb-50">
                            <p class="page-info">Showing 12 of 60 Results</p>
                            <ul class="pagination">
                                <li class="page-item"><a href="#" class="page-link material-icons">chevron_left</a>
                                </li>
                                <li class="page-item"><a href="#" class="page-link active">01</a></li>
                                <li class="page-item"><a href="#" class="page-link">02</a></li>
                                <li class="page-item"><a href="#" class="page-link">03</a></li>
                                <li class="page-item"><a href="#" class="page-link">...</a></li>
                                <li class="page-item"><a href="#" class="page-link">45</a></li>
                                <li class="page-item"><a href="#" class="page-link material-icons">chevron_right</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>