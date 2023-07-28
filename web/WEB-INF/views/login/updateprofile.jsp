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
                    <c:if test="${User.userRole == 0}">
                        <div class="col-lg-5 col-xl-4">
                            <ul class="user-banner-data">
                                <li class="ads"><i class="material-icons">note</i>
                                    <h3>${Post}</h3>
                                    <p>total post</p>
                                </li>
                            <li class="ads"><i class="material-icons">shopping_cart</i>
                                    <h3>${Order}</h3>
                                    <p>total order</p>
                                </li>
                            </ul>
                        </div>
                    </c:if>
                </div>
                <div class="row">
                    <div class="col-xl-12">
                        <ul class="user-banner-menu-list">
                            <c:if test="${User.userRole == 2}">
                                <li><a href="<c:url value="/admin/dashboard.do"/>">dashboard</a></li>   
                                </c:if>
                            <li><a href="<c:url value="/login/profile.do"/>" class="">profile</a></li>
                            <li><a href="<c:url value="/login/update_profile.do"/>" class="active">update profile</a></li>
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
            <h2 class="mc-breadcrumb-title">update profile</h2>
            <ul class="mc-breadcrumb-list">
                <li class="mc-breadcrumb-item"><a class="mc-breadcrumb-link" href="<c:url value="/ocsn/index.do"/>">home</a></li>
                </li>
                <li class="mc-breadcrumb-item">Update profile</li>
            </ul>
        </div>
    </div>
</section>
<section class="section-gap-75">
    <div class="container">
        <div class="row">

            <div class="col-xl-12">
                <div class="common-card">
                    <div class="common-card-header">
                        <h4 class="common-card-header-title">update</h4>
                    </div>
                    <div class="common-card-body ">
                        <ul class="profile-specify-list">
                            <li style="display: flex;justify-content: center;border-bottom: none;">
                                <form action="<c:url value="/user/update.do"/>" method="post" enctype="multipart/form-data">
                                    <c:if test="${User.userImage == null}">
                                        <div class="user-banner-profile-avatar" style="display: flex;justify-content: center" >
                                            <a><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/user.png" alt="avatar"></a>
                                        </div>
                                    </c:if>
                                    <c:if test="${User.userImage != null}">
                                        <div class="user-banner-profile-avatar" style="display: flex;justify-content: center"><a>
                                                <img src="${User.getUserImage()}" alt="avatar"></a>
                                        </div>
                                </c:if>  </li>   
                            <li style="margin-bottom: 15px"> <span style="white-space: nowrap;" ><input style="font-size: 14px;
                                                                                                        letter-spacing: .3px;
                                                                                                        text-transform: uppercase;
                                                                                                        " type="file" name="userImage"></span><span style="white-space: nowrap;">
                                      <button   style="font-size: 15px;
                                                     letter-spacing: .3px;
                                                     text-transform: uppercase;
                                                     margin-right: 40px;
                                                     "type="submit" name="op" value="changeimage">Update Image</button>
                                </span> 
                            </li>
                            </form>
                            <form action="<c:url value="/user/update.do"/>" > 
                                <li><span>Name:</span><span><input class="form-control" type="text" name="userName" value="${User.userName}"></span></li>
                                <div style="color: red">${errorN}</div>
                                <li><span>Phone:</span><span><input class="form-control" type="number" name="userPhone" value="${User.userPhone}"  style="-webkit-appearance: none; margin: 0;"></span></li>
                                <div style="color: red">${errorPh}</div>
                                <li><span>Address:</span><span><input class="form-control" type="text" name="userAddress" value="${User.userAddress}"></span></li>
                                <div style="color: red">${errorA}</div>
                        </ul>
                        <div style="color: red">${error}</div>
                        <div style="color: green">${messageU}</div>
                        <div style="color: red">${errorImg}</div>
                        <div style="color: green">${messageImg}</div>

                        <button type="submit" class="form-btn" name="op" value="update">Update</button>
                    </div>
                    <br>


                    </form>

                </div>    
                <div class="col-xl-12">
                    <div class="common-card">
                        <div class="common-card-header">
                            <h4 class="common-card-header-title">change password</h4>
                        </div>
                        <form method="post" action="<c:url value="/user/change.do"/>" > 
                            <div class="common-card-body ">
                                <ul class="profile-specify-list">
                                    <li><span>Current Password:</span><span><input class="form-control" type="password" name="userPass" ></span></li>
                                    <div style="color: red">${ePa}</div>
                                    <li><span>New Password:</span><span><input class="form-control" type="password" name="newPass" ></span></li>
                                    <div style="color: red">${errorNP}</div>
                                    <li><span>Repeat New Password:</span><span><input class="form-control" type="password" name="re_pass"  ></span></li>
                                    <div style="color: red">${eR}</div>
                                </ul>
                            </div>
                            <br>
                            <div>
                                <button type="submit" class="form-btn" name="op" value="change">Change</button>
                                <div style="color: red">${errorCP}</div>
                                <div style="color: green">${messageC}</div>

                            </div>
                        </form>
                    </div>            
                </div>
            </div>
        </div>
</section>




