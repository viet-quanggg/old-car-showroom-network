<%-- 
    Document   : bloggird
    Created on : May 28, 2023, 10:16:19 AM
    Author     : _viet.quangg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<section class="section-gap-100">
    <div style="background: url(${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/banner/single/01.jpg) no-repeat center / cover;">
        <div class="single-banner">
            <div class="container">
                <h2>blog grid page</h2>
                <ol>
                    <a class="mc-breadcrumb-link" href="<c:url value="/ocsn/index.do"/>">home</a>
                    <a class="mc-breadcrumb-link" aria-current="page">blog-grid</a>
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
                    <form class="blog-widget-form" action="<c:url value="/blog/search_blog.do"/>" method="post">
                        <input type="text" name="search" placeholder="Search blogs">
                        <button type="submit" class="material-icons">search</button></form>
                </div>
                <div class="blog-widget">
                    <h5 class="blog-widget-title">popular feeds</h5>
                    <ul class="blog-widget-feed">
                        <c:forEach begin="0" end="3" items="${latest}" var="latest">                         
                            <li><a class="blog-widget-media" href="<c:url value="/blog/blogsingle.do?bid=${latest.blogId}"/>"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/blog/01.jpg"
                                                                                                                                   alt="blog"></a>
                                <h5 class="blog-widget-text"><a href="<c:url value="/blog/blogsingle.do?bid=${latest.blogId}"/>">${latest.blogTitle}</a><span>${latest.blogDate}</span></h5>
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
                        <li><a href="https://www.facebook.com/FPTU.HCM" class="facebook icofont-facebook"></a></li>
                        <li><a href="https://hcmuni.fpt.edu.vn" class="linkedin icofont-linkedin"></a></li>
                    </ul>
                    </ul>
                </div>
            </div>
            <div class="col-lg-8 col-xl-8">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="top-filter">
                            <form action="" method="POST">
                                <div class="filter-show"><label class="filter-label">Show :</label>
                                    <select
                                        class="form-select filter-select" onchange="this.form.submit()" name="blogPerPage">
                                        <option selected value="2">2</option>
                                        <option value="4">4</option>
                                        <option value="6">6</option>
                                    </select>
                                </div>
                            </form>
                            <div class="filter-short"><label class="filter-label">Short by :</label><select
                                    class="form-select filter-select">
                                    <option selected>default</option>
                                    <option value="3">trending</option>
                                    <option value="1">featured</option>
                                    <option value="2">recommend</option>
                                </select></div>
                            <div class="filter-action"><a href="<c:url value="/blog/bloggrid.do"/>" title="Grid View"
                                                          class="material-icons active">grid_view</a><a href="<c:url value="/blog/bloglist.do"/>"
                                                          title="List View" class="material-icons">list_alt</a></div>
                        </div>
                    </div>
                </div>
                <div class="row row-cols-1 row-cols-sm-1 row-cols-md-2 row-cols-lg-2 row-cols-xl-2">
                    <c:forEach  var="blog" items="${blog}">
                        <div class="col">
                            <div class="blog-grid-card">
                                <div class="blog-grid-media"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/blog/01.jpg" alt="blog">
                                    <ul class="blog-grid-widget">
                                        <li><i class="material-icons">forum</i><span>3</span></li>
                                        <li><i class="material-icons">send</i><span>2</span></li>
                                    </ul>
                                </div>
                                <div class="blog-grid-content">
                                    <ul class="blog-grid-meta">
                                        <li><i class="material-icons">person</i><span>post by <a href="">${blog.userName}</a></span></li>
                                        <li><i class="material-icons">event</i><span>${blog.blogDate}</span></li>
                                    </ul>
                                    <h3 class="blog-grid-name"><a href="<c:url value="/blog/blogsingle.do?bid=${blog.blogId}"/>">${blog.blogTitle}</a></h3>
                                    <p class="blog-grid-descrip" id="blog-detail-${blog.blogId}">${blog.blogDetail}</p>
                                    <a href="<c:url value="/blog/blogsingle.do?bid=${blog.blogId}"/>">read more</a>
                                </div>
                            </div>
                        </div>
                        <script>
                            document.addEventListener("DOMContentLoaded", function () {
                                const MAX_LENGTH = 200; // Maximum length of truncated text
                                const paragraph = document.getElementById("blog-detail-${blog.blogId}");
                                const shortenedText = paragraph.textContent.slice(0, MAX_LENGTH);
                                const truncatedText = shortenedText + "...";
                                paragraph.textContent = truncatedText;

                            });
                        </script>
                    </c:forEach>


                </div>
                <div class="row">
                    <div class="col-xl-12">
                        <div class="bottom-paginate mb-50">
                            <p class="page-info">Showing ${currentPage} of ${endPage} Results</p>
                            <ul class="pagination">
                                <li class="page-item"><a href="#" class="page-link material-icons">chevron_left</a>
                                </li>
                                <c:forEach begin="1" end="${endPage}" var="i">
                                    <li class="page-item">
                                        <a href="<c:url value="/blog/bloggrid.do?index=${i}"/>" class="page-link ${currentPage == i ? 'active' : ''}">${i}</a>
                                    </li>
                                </c:forEach>
                                <!--                                <li class="page-item"><a href="#" class="page-link">02</a></li>
                                                                <li class="page-item"><a href="#" class="page-link">03</a></li>
                                                                <li class="page-item"><a href="#" class="page-link">...</a></li>
                                                                <li class="page-item"><a href="#" class="page-link">45</a></li>-->
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