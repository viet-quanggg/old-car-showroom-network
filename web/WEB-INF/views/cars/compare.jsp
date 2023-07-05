


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
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
                                <li><a href="<c:url value="/order/favorite.do"/>"class="">favorite</a></li>
                                <li><a href="<c:url value="/cars/compare.do"/>"class="active">compares</a></li>
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
            <h2 class="mc-breadcrumb-title">compares</h2>
            <ul class="mc-breadcrumb-list">
                <li class="mc-breadcrumb-item">
                    <a class="mc-breadcrumb-link" href="${pageContext.request.contextPath}/">home</a>
                <li class="mc-breadcrumb-item"><a class="mc-breadcrumb-link" href="<c:url value="/cars/carlist.do"/>">list cars</a></li>
                </li>
                <li class="mc-breadcrumb-item">compare</li>
            </ul>
        </div>
    </div>
</section>
<jsp:useBean class="Common.CommonForJSP" id="common"/>
<div class="section-gap-100">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="table-responsive-md">
                    <table class="table table-bordered mb-0 compare-table">
                        <thead>
                            <tr>
                                <th>comparison</th>
                                    <c:forEach items="${data.items}" var="item">
                                    <th>${item.car.carName}</th>
                                    </c:forEach>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th>images</th>
                                    <c:forEach items="${data.items}" var="item">
                                    <td>
                                        <img style="min-height: 240px; max-height: 240px" class="compare-table-img" src="${pageContext.request.contextPath}${item.car.image.size() != 0 ? item.car.image.get(0).url : ''}" alt="product">
                                    </td>
                                </c:forEach>


                            </tr>
                            <tr>
                                <th>Condition</th>
                                    <c:forEach items="${data.items}" var="item">
                                    <td>
                                        <span class="badge new">${carCondition ? 'Sold' : 'Available'}</span>
                                    </td>
                                </c:forEach>

                            </tr>
                            <tr>
                                <th>Brand</th>                                                                    
                                    <c:forEach items="${data.items}" var="item">

                                    <td>
                                        <span class="compare-table-text">${item.car.brand.name}</span>
                                    </td>                                        

                                </c:forEach>
                            </tr>

                            <tr>
                                <th>Year Release</th>                                                                    
                                    <c:forEach items="${data.items}" var="item">
                                    <td><span class="compare-table-text">${item.car.carYear}</span></td>
                                    </c:forEach>
                            </tr>
                            <tr>
                                <th>Seating</th>
                                    <c:forEach items="${data.items}" var="item">
                                    <td><span class="compare-table-text">${item.car.car_seat}</span></td>
                                    </c:forEach>

                            </tr>
                            <tr>
                                <th>Odo</th>
                                    <c:forEach items="${data.items}" var="item">
                                    <td><span class="compare-table-text">${item.car.odo} km</span></td>
                                </c:forEach>

                            </tr>
                            <tr>
                                <th>Engine</th>
                                    <c:forEach items="${data.items}" var="item">
                                    <td><span class="compare-table-text">${item.car.engine}</span></td>
                                    </c:forEach>

                            </tr>

                            <tr>
                                <th>Price</th>                                                                    
                                    <c:forEach items="${data.items}" var="item">

                                    <td><span class="compare-table-price">${item.car.formatPrice}</span></td>
                                    <!--                                   //common.getFormatPrice(item.car.carPrice)-->
                                </c:forEach>
                            </tr>


                            <tr>
                                <th>action</th>
                                    <c:forEach items="${data.items}" var="item">
                                    <td>
                                        <a href="${pageContext.request.contextPath}/cars/removeCompare.do?id=${item.car.carID}" class="compare-table-remove">remove</a>
                                    </td>
                                    <!--                                    Remove wish-->
                                </c:forEach>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>