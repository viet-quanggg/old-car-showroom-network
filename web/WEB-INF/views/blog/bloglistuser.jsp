<%-- 
    Document   : bloglistuser
    Created on : Jul 10, 2023, 9:52:45 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<section class="section-gap-75">
    <div style="background: url(${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/banner/single/02.jpg) no-repeat center / cover;">
        <div class="user-banner">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 col-xl-8">
                        <div class="user-banner-profile">
                            <div class="user-banner-profile-avatar"><a href="<c:url value="/views/login/profile.do"/>"><img
                                        src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/avatar/01.jpg" alt="avatar"></a></div>
                            <div class="user-banner-profile-meta">
                                <div class="user-banner-profile-name">
                                    <h3>${User.userName}</h3>
                                    <span>
                                        <c:if test="${User.userRole == 2}">Admin</c:if>     
                                        <c:if test="${User.userRole == 1}">Employee</c:if> 
                                        <c:if test="${User.userRole == 0}">Customer</c:if>
                                        </span>
                                    </div>
                                    <ul class="user-banner-profile-contact-list">
                                        <li><i class="material-icons">phone_in_talk</i><span>${User.userPhone}</span>
                                    </li>
                                    <li><i class="material-icons">feed</i><span>${User.userEmail}</span></li>
                                    <li><i class="material-icons">map</i><span>${User.userAddress}</span></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5 col-xl-4">
                        <ul class="user-banner-data">
                            <li class="ads"><i class="material-icons">note</i>
                                <h3>${Post.count}0</h3>
                                <p>total post</p>
                            </li>
                            <li class="star"><i class="material-icons">car</i>
                                <h3>${order.count}0</h3>
                                <p>total car buy</p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-12">
                        <ul class="user-banner-menu-list">
                            <c:if test="${User.userRole == 2}">
                                <li><a href="<c:url value="/admin/dashboard.do"/>">dashboard</a></li>   
                                </c:if>
                            <li><a href="<c:url value="/login/profile.do"/>" class="active">profile</a></li>
                            <li><a href="<c:url value="/login/update_profile.do"/>" class="inactive">update profile</a></li>
                                <c:if test="${User.userRole == 0 || User.userRole == 1}">
                                <li><a href="<c:url value="/order/createad.do"/>">create car</a></li>
                                </c:if>
                                <c:if test="${User.userRole == 0 || User.userRole == 1}">
                                <li><a href="<c:url value="/order/postedad.do"/>">posted car</a></li>
                                </c:if>
                                <c:if test="${User.userRole == 2 || User.userRole == 1}">
                                <li><a href="<c:url value="/order/ordermanager.do"/>">Order Manager</a></li>
                                </c:if>
                                <c:if test="${ User.userRole == 1}">
                                <li><a href="<c:url value="/admin/userlist.do"/>">User List</a></li>
                                </c:if>
                                <c:if test="${ User.userRole == 0}">
                                <li><a href="<c:url value="/order/orderlist.do"/>">Order List</a></li>
                                </c:if>
                                <c:if test="${ User.userRole == 0}">
                                <li><a href="<c:url value="/order/favorite.do"/>">favorite</a></li>
                                <li><a href="<c:url value="/cars/compare.do"/>">compares</a></li>
                                <li><a href="<c:url value="/blog/bloglistuser.do?uid=${User.userID}"/>">Your Blog</a></li> 
                                </c:if>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
        <section class="mc-breadcrumb">
    <div class="container">
        <div class="mc-breadcrumb-group">
            <h2 class="mc-breadcrumb-title">Your Blog</h2>
            <ul class="mc-breadcrumb-list">
                <li class="mc-breadcrumb-item"><a class="mc-breadcrumb-link" href="<c:url value="/ocsn/index.do"/>">home</a></li>
                </li>
                <li class="mc-breadcrumb-item">Your blog</li>
            </ul>
        </div>
    </div>
</section>
<section class="section-gap-100">
    <div class="container">
        <div class="row content-reverse">
            <div class="col-lg-4 col-xl-4">
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

                        <!--                        <div class="top-filter">
                                                    <form action="" method="POST">
                                                        <div class="filter-show"><label class="filter-label">Show :</label>
                                                            <select class="form-select filter-select" onchange="this.form.submit()" name="blogPerPage" >
                                                                <option selected value="4">4</option>
                                                                <option value="8"  >8</option>
                                                                <option value="12"  >12</option>
                                                            </select></div>
                                                    </form> 
                                                    <div class="filter-short"><label class="filter-label">Short by :</label><select
                                                            class="form-select filter-select"  >
                                                            <option selected>default</option>
                                                            <option value="3">trending</option>
                                                            <option value="1">featured</option>
                                                            <option value="2">recommend</option>
                                                        </select></div>
                                                    <div class="filter-action"><a href="<c:url value="/blog/bloggrid.do"/>" title="Grid View"
                                                                                  class="material-icons">grid_view</a><a href="<c:url value="/blog/bloglist.do"/>" title="List View"
                                                                                  class="material-icons active">list_alt</a></div>
                                                </div>-->

                    </div>
                </div>
                <div class="row row-cols-1">

                    <c:forEach items="${blog}" var="blog">


                        <div class="col">
                            <div class="blog-list-card">
                                <div class="blog-list-media"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/blog/01.jpg" alt="blog"></div>
                                <div class="blog-list-content">
                                    <ul class="blog-list-meta">
                                        <li><i class="material-icons">account_circle</i><span>post by <a
                                                    href="blog-single.html">${blog.userName}</a></span></li>
                                        <li><i class="material-icons">event_note</i><span>${blog.blogDate}</span></li>                                       
                                    </ul>
                                    <h3 class="blog-list-title"><a href="<c:url value="/blog/blogsingle.do?bid=${blog.blogId}"/>">${blog.blogTitle}.</a>
                                    </h3>

                                    <p class="blog-list-descrip" id="blog-detail-${blog.blogId}">${blog.blogDetail}<a href="blog-single.html">read more</a></p>
                                    <div class="mc-breadcrumb-group" >

                                        <div class="sidebar-btn mc-breadcrumb-title">
                                            <a href="<c:url value="/blog/blogsingle.do?bid=${blog.blogId}"/>">read more</a>
                                        </div>
<!--                                    <h3>${blog.blogTitle}</h3>
<p>${blog.blogDetail}</p>-->
                                        <div class="sidebar-btn mc-breadcrumb-title">
                                            <c:choose>
                                                <c:when test="${User.userRole == 2 || User.userRole ==1}">
                                                    <a href="<c:url value='/blog/blogedit.do?blid=${blog.blogId}'/>">Edit</a>
                                                </c:when>
                                                <c:when test="${User.userRole == 0 && User.userID == blog.blogId}">
                                                    <a href="<c:url value='/blog/blogedit.do?blid=${blog.blogId}'/>">Edit</a>
                                                </c:when>
                                                <c:otherwise>

                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                    </div>

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
<!--                            <div class="row">
                                <div class="col-xl-12">
                                    <div class="bottom-paginate mb-50">
                                        <p class="page-info">Showing ${currentPage} of ${endPage} Results</p>
                                        <ul class="pagination">
                                            <li class="page-item"><a href="#" class="page-link material-icons">chevron_left</a>
                                            </li>
                <c:forEach begin="1" end="${endPage}" var="i">
                    <li class="page-item">
                        <a href="<c:url value="/blog/bloglistuser.do?index=${i}"/>" class="page-link ${currentPage == i ? 'active' : ''}">${i}</a>
                    </li>
                </c:forEach>

                                            <li class="page-item"><a href="#" class="page-link">02</a></li>
                                                <li class="page-item"><a href="#" class="page-link">03</a></li>
                                                <li class="page-item"><a href="#" class="page-link">...</a></li>
                                                <li class="page-item"><a href="#" class="page-link">45</a></li>
                <li class="page-item"><a href="<c:url value="/blog/bloglistuser.do?index=${i + 1}"/>" class="page-link material-icons">chevron_right</a>
                </li>
            </ul>
        </div>
    </div>
</div>-->

            </div>
        </div>
    </div>
</section>
