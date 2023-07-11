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
                            </c:if>                            <div class="user-banner-profile-meta">
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
                            <li><a href="<c:url value="/login/profile.do"/>" class="">profile</a></li>
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
                                <li><a href="<c:url value="/order/orderlist.do"/>"class="">Order List</a></li>
                                <li><a href="<c:url value="/order/favorite.do"/>"class="active">favorite</a></li>
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
            <h2 class="mc-breadcrumb-title">Wishlist</h2>
            <ul class="mc-breadcrumb-list">
                <li class="mc-breadcrumb-item"><a class="mc-breadcrumb-link" href="<c:url value="/ocsn/index.do"/>">home</a></li>
                <li class="mc-breadcrumb-item"><a class="mc-breadcrumb-link" href="<c:url value="/cars/carlist.do"/>">list cars</a></li>
                <li class="mc-breadcrumb-item">Wishlist  </li>
            </ul>
        </div>
    </div>
</section>

<section class="section-gap-100">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="favorite-title">
                    <h6>vehicles</h6>
                    <h6>information</h6>
                    <h6>widgets</h6>
                    <h6>action</h6>
                </div>

                <ul class="favorite-list">
                    <c:forEach items="${data.items}" var="item">
                        <li class="favorite-item">
                            <div class="favorite-media"><img style="min-height: 200px; max-height: 200px;" src="${pageContext.request.contextPath}${item.car.image.size() > 0 ? item.car.image.get(0).url : ''}" alt="product">
                                <div class="favorite-badge"><label class="badge new">new</label></div>
<!--                                <div class="favorite-hints"><i class="material-icons">collections</i><span>${item.car.image.size()}</span>
                                </div>-->
                            </div>
                            <div class="favorite-info">
                                <h3><a href="<c:url value="/cars/carsingle.do?carId=${item.car.carID}"/>">${item.car.carName}</a></h3>
                                <ul>
                                    <li><span>Seat: </span><span>${item.car.car_seat}</span></li>
                                    <li><span>Odo: </span><span> ${item.car.odo} km</span></li>
                                    <li><span>Engine: </span><span>${item.car.engine}</span></li>
                                    <li><i class="material-icons">stars</i><a href="#!"> Brand: ${item.car.brand.name}</a></li>
                                </ul>
                                <h5>${item.car.formatPrice}</h5>
                            </div>
                            <div class="favorite-widget">
                                <a href="<c:url value="/cars/carsingle.do?carId=${item.car.carID}"/>" title="Details">
                                    <i class="material-icons">visibility</i>
                                </a>
                                <a href="#!" title="Video" class="venobox" data-autoplay="true" data-vbtype="video">
                                    <i class="material-icons">videocam</i>
                                </a>
                                <a href="#!" title="Cart" class="venobox" data-autoplay="true" data-vbtype="cart">
                                    <i class="material-icons">storefront</i>
                                </a>
                                <a href="${pageContext.request.contextPath}/addToCompare?id=${item.car.carID}" >
                                    <i class="material-icons">compare</i>
                                    <!--                                                <span>compare</span>-- not use>-->
                                </a>     
                            </div>
                            <a href="${pageContext.request.contextPath}/order/removeWish.do?id=${item.car.carID}" class="favorite-close"><i class="material-icons">close</i></a>
                        </li>
                    </c:forEach>


                </ul>
            </div>
        </div>

    </div>
</section>