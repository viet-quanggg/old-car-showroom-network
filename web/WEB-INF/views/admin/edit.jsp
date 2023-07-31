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

            </div>
        </div>
    </div>
</section>
<section class="mc-breadcrumb">
    <div class="container">
        <div class="mc-breadcrumb-group">
            <h2 class="mc-breadcrumb-title">Edit User</h2>
        </div>
    </div>
</section>
<section class="section-gap-75 mc">
    <div class="container">
        <div class="row">
            <div class="col-lg-6  col-xl-8">
                <div class="common-card">
                    <div class="common-card-header">
                        <h4 class="common-card-header-title">${userData.userName}</h4>
                    </div>
                    <form action="<c:url value="/admin/edit_handler.do"/>" > 
                        <div class="common-card-body ">
                            <ul class="profile-specify-list">
                                <input type="hidden" name="userId" value="${userData.userID}">
                                <li><span>Name:</span><span><input class="form-control" type="text" name="userName" value="${userData.userName}"></span></li>
                                <div style="color: red">${errorN}</div>
                                <li><span>Phone:</span><span><input class="form-control" type="number" name="userPhone" value="${userData.userPhone}"  style="-webkit-appearance: none; margin: 0;"></span></li>
                                <div style="color: red">${errorPh}</div>
                                <li><span>Address:</span><span><input class="form-control" type="text" name="userAddress" value="${userData.userAddress}"></span></li>
                                <div style="color: red">${errorA}</div>
                            </ul>
                        </div>
                        <br>
                        <div>
                            <button type="submit" class="btn btn-inline" value="edit">edit</button></form>
                    <button type="submit" class="btn btn-inline"><a href="<c:url value="/admin/userlist.do"/>"style="color:white">Exit</button>
                    <div style="color: red">${error}</div>
                    <div style="color: green">${messageU}</div>
                </div>

            </div>  
        </div>    
    </div>
</div>
</section>




