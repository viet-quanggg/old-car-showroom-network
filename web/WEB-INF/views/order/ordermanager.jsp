<%-- 
    Document   : ordermanager
    Created on : Jun 20, 2023, 7:48:38 PM
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
                            <c:if test="${User.userRole == 2 || User.userRole == 1}">
                                <li><a href="<c:url value="/layouts/dashboard.do"/>">dashboard</a></li>   
                                </c:if>
                            <li><a href="<c:url value="/login/profile.do"/>" class="active">profile</a></li>
                            <li><a href="<c:url value="/login/update_profile.do"/>" class="inactive">update profile</a></li>
                            <li><a href="<c:url value="/login/createad.do"/>">create car</a></li>
                            <li><a href="posted-ads.html">posted car</a></li>
                            <li><a href="<c:url value="/order/ordermanager.do"/>">Order_Manager</a></li>
                            <li><a href="compare.html">compares</a></li>
                            <li><a href="review.html">reviews</a></li>
                            <li><a href="notify.html">notify</a></li>
                            <li><a href="setting.html">settings</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="section-gap-100">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <h1>Order Manager</h1>
                <form action="<c:url value="/order/ordermanager.do"/>" method="POST">
                    <table class="table-bordered">
                        <thead>
                            <tr>
                                <th>Order ID</th>
                                <th>Order Date</th>
                                <th>Status</th>
                                <th>Car Price</th>
                                <th>User ID</th>
                                <th>User Name</th>
                                <th>Car Name</th>
                                <th>Edit</th>
                                <th>Submit</th>
                            </tr>
                        </thead>

                        <tbody>

                            <c:forEach var="orderlist" items="${orders}">

                                <tr>
                                    <td>${orderlist.orderId}</td>
                                    <td>${orderlist.createdDate}</td>
                                    <td>${orderlist.orderStatus}</td>
                                    <td>${orderlist.carPrice}</td>
                                    <td>${orderlist.userId}</td>
                                    <td>${orderlist.userName}</td>u
                                    <td>${orderlist.carName}</td>
                                    <td>
                                        <select class="form-select" name="op">
                                           <option selected>--SELECT--</option>
                                            <option class="form-btn" value="denied">DENY</option>
                                            <option class="form-btn" value="pending">Pending</option>
                                            <option class="form-btn" value="success">Complete</option>
                                            <option class="form-btn" value="inprocess">In Process</option>
                                        </select>
                                    </td>
                                    <td>
                                        <input type="hidden" name="orderId" value="${orderlist.orderId}">
                                        <button class="btn-behance" type="submit">SUBMIT</button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </div>
</section>