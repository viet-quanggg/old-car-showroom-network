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
<!--                    <div class="col-lg-5 col-xl-4">
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
                    </div>-->
                </div>
                <div class="row">
                    <div class="col-xl-12">
                        <ul class="user-banner-menu-list">
                            <c:if test="${User.userRole == 2}">
                                <li><a href="<c:url value="/admin/dashboard.do"/>">dashboard</a></li>   
                                </c:if>
                            <li><a href="<c:url value="/login/profile.do"/>">profile</a></li>
                            <li><a href="<c:url value="/login/update_profile.do"/>" class="">update profile</a></li>
                            <li><a href="<c:url value="/order/createad.do"/>">create car</a></li>
                            <li><a href="<c:url value="/order/postedad.do"/>">posted car</a></li>
                                <c:if test="${User.userRole == 2 || User.userRole == 1}">
                                <li><a href="<c:url value="/order/ordermanager.do"/>">Order Manager</a></li>
                                </c:if>
                                <c:if test="${ User.userRole == 1}">
                                <li><a href="<c:url value="/admin/userlist.do"/>">User List</a></li>
                                </c:if>
                            <li><a href="<c:url value="/order/favorite.do"/>"class="active">favorite</a></li>
                            <li><a href="<c:url value="/cars/compare.do"/>">compares</a></li>
                            <li><a href="setting.html">settings</a></li>

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
            <h2 class="mc-breadcrumb-title">Order</h2>
            <ul class="mc-breadcrumb-list">
                <li class="mc-breadcrumb-item"><a class="mc-breadcrumb-link" href="<c:url value="/ocsn/index.do"/>">home</a></li>
                <li class="mc-breadcrumb-item"><a class="mc-breadcrumb-link" href="<c:url value="/cars/carlist.do"/>">list cars</a></li>
                <li class="mc-breadcrumb-item">Order  </li>
            </ul>
        </div>
    </div>
</section>
                
<section class="section-gap-100">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="favorite-title">
                    <h6>date</h6>
                    <h6>information</h6>
                    <h6>status</h6>
                    <h6>action</h6>
                </div>
                
                <ul class="favorite-list">
                    <c:forEach items="${orders}" var="item">
                        <li class="favorite-item">
                            <div class="favorite-media">
                                ${item.createdDate}
                            </div>
                            <div class="favorite-info">
                                <h3><a href="<c:url value="/cars/carsingle.do?carId=${item.car.carID}"/>">${item.car.carName}</a></h3>
                                <ul>
                                    <li><i class="material-icons">store</i><a href="profile.html">by autoland</a></li>
                                    <li><i class="material-icons">watch_later</i><span>posted 25m ago</span></li>
                                    <li><i class="material-icons">bookmark_add</i><span>individual</span></li>
                                    <li><i class="material-icons">fmd_good</i><span>delpara, narayanganj</span></li>
                                    <li><i class="material-icons">stars</i><a href="#!"> Brand: ${item.car.brand.name}</a></li>
                                </ul>
                                <h5>${item.car.formatPrice}</h5>
                            </div>
                            <div class="favorite-widget">
                                ${item.orderStatus}
                            </div>
                            <a href="${pageContext.request.contextPath}/order/removeorder.do?orderId=${item.orderId}" class="favorite-close"><i class="material-icons">close</i></a>
                        </li>
                    </c:forEach>


                </ul>
            </div>
        </div>
        
    </div>
</section>