<%-- 
    Document   : profile
    Created on : May 28, 2023, 10:01:16 AM
    Author     : _viet.quangg
--%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>

<section class="section-gap-75">
    <div style="background: url(${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/banner/single/02.jpg) no-repeat center / cover;">
        <div class="user-banner">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 col-xl-8">
                        <div class="user-banner-profile">
                            <c:if test="${User.userImage == null}">
                                <div class="user-banner-profile-avatar">
                                    <a><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/user.png" alt="avatar"></a>
                                </div>
                            </c:if>
                            <c:if test="${User.userImage != null}">
                                <div class="user-banner-profile-avatar"><a>
                                        <img src="${User.getUserImage()}" alt="avatar"></a>
                                </div>
                            </c:if>
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
            <h2 class="mc-breadcrumb-title">user profile</h2>
            <ul class="mc-breadcrumb-list">
                <li class="mc-breadcrumb-item"><a class="mc-breadcrumb-link" href="<c:url value="/ocsn/index.do"/>">home</a></li>
                </li>
                <li class="mc-breadcrumb-item">profile</li>
            </ul>
        </div>
    </div>
</section>
<section class="section-gap-75">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 col-xl-8">
                <div class="common-card">
                    <div class="common-card-header">
                        <h4 class="common-card-header-title">Profile</h4>
                    </div>
                    <div class="common-card-body ">
                        <ul class="profile-specify-list">
                            <li><span>Joined:</span><span>${User.timeCreated}</span></li>
                            <li><span>Name:</span><span>${User.userName}</span></li>
                            <li><span>Email:</span><span>${User.userEmail}</span></li>
                            <li><span>Role:</span><span><c:if test="${User.userRole == 2}">Admin</c:if> <c:if test="${User.userRole == 1}">Employee</c:if> <c:if test="${User.userRole == 0}">Customer</c:if></span></li>
                            <li><span>Phone:</span><span>${User.userPhone}</span></li>
                            <li><span>Address:</span><span>${User.userAddress}</span></li>
                        </ul>
                    </div>
                </div>  
                <div class="common-card">
                    <div class="common-card-header">
                        <h4 class="common-card-header-title">vendor location</h4>
                    </div>
                    <div class="common-card-body">
                        <div class="profile-location">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.609941530549!2d106.80730807692865!3d10.841132857992955!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752731176b07b1%3A0xb752b24b379bae5e!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBGUFQgVFAuIEhDTQ!5e0!3m2!1svi!2s!4v1686147438616!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-5 col-xl-4">
                <div class="common-card">
                    <div class="common-card-header">
                        <h4 class="common-card-header-title">Your Plan Package</h4>
                    </div>
                    <form>
                        <div class="common-card-body "> 
                            <ul class="profile-specify-list">
                                <li><span>Package</span><span>${UserPlan.planName}</span></li>
                                <li><span>Expired Date:</span><span>${ExpDate}</span></li>
                                <li><span>Post available:</span><span>${(UserPlan.planLimit != 0) ? sessionScope.UserPlan.planLimit : "infinite"}</span></li>
                            </ul>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</section>




