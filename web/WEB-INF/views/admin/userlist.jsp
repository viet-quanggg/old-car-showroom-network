<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
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
                            <li><a href="<c:url value="/login/profile.do"/>" >profile</a></li>
                            <li><a href="<c:url value="/login/update_profile.do"/>" >update profile</a></li>
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
                                <li><a href="<c:url value="/admin/userlist.do"/>" class="active">User List</a></li>
                                </c:if>
                                <c:if test="${ User.userRole == 0}">
                                <li><a href="<c:url value="/order/orderlist.do"/>" >Order List</a></li>
                                </c:if>
                                <c:if test="${ User.userRole == 0}">
                                <li><a href="<c:url value="/order/favorite.do"/>">favorite</a></li>
                                <li><a href="<c:url value="/cars/compare.do"/>">compares</a></li>
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
            <h2 class="mc-breadcrumb-title">User List</h2>
            <ul class="mc-breadcrumb-list">
                <li class="mc-breadcrumb-item"><a class="mc-breadcrumb-link" href="<c:url value="/ocsn/index.do"/>">home</a></li>
                <li class="mc-breadcrumb-item">User List  </li>
            </ul>
        </div>
    </div>
</section>
<style>
    .modal {
        display: none;
        position: fixed;
        z-index: 1;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto;
        background-color: rgba(0, 0, 0, 0.4);
    }

    .modal-content {
        background-color: #fefefe;
        margin: 15% auto;
        padding: 20px;
        border: 1px solid #888;
        width: 80%;
    }
    
    .dell-btn{
        color:#0d6efd
    }
    
    .dell-btn:hover{
        color:#0a58ca
    }
</style>
<section class="section-gap-100">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">

                <table class="table">

                    <thead> 
                    <div class="favorite-title">
                        <tr>        
                            <th>No</th>
                            <th>User Id </th>
                            <th>Email</th>
                            <th>Name</th>
                            <th>Phone</th>
                            <th>Address</th>
                            <th>Time Created</th>
                            <th>Actions</th>
                        </tr>
                    </div>
                    </thead>
                    <div class="favorite-list">
                        <tbody>
                            <c:forEach var="userli" items="${UserL}" varStatus="status">
                                <tr>
                                    <td>${status.count}</td>
                                    <td>${userli.userID}</td>
                                    <td>${userli.userEmail}</td>
                                    <td>${userli.userName}</td>
                                    <td>${userli.userPhone}</td>
                                    <td>${userli.userAddress}</td>
                                    <td>${userli.timeCreated}</td>
                                    <td>
                                       <button> <a href="<c:url value="/admin/edit.do?userID=${userli.userID}"/>">Edit</a></button>
                                        <button id="dell-btn" class="dell-btn" onclick="document.getElementById('modal').style.display = 'block'" >Delete</button>
                                        <div id="modal" class="modal">
                                            <div class="modal-content">
                                                <div style="margin-right: 20px">
                                                Are you sure you want to delete?
                                                <div class="col">
                                                    <a class="btn btn-outline-danger btn-sm" href="<c:url value="/admin/delete.do?userID=${userli.userID}"/>">Yes</a>
                                                    <a class="btn btn-outline-dark-blue btn-sm"href="<c:url value="/admin/userlist.do"/>">No</a>
                                                </div>
                                                </div
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </div>
                </table>



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
                                    <li><i class="material-icons">store</i><a href="profile.html">by autoland</a></li>
                                    <li><i class="material-icons">watch_later</i><span>posted 25m ago</span></li>
                                    <li><i class="material-icons">bookmark_add</i><span>individual</span></li>
                                    <li><i class="material-icons">fmd_good</i><span>delpara, narayanganj</span></li>
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
                            </div>
                            <a href="#" class="favorite-close"><i class="material-icons">close</i></a>
                        </li>
                    </c:forEach>


                </ul>
            </div>
        </div>

    </div>
</section>