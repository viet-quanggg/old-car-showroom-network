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
                                        <img src="${User.getUserImage()}" onerror="this.src='"${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/user.png'" alt="avatar"></a>
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

                <li class="mc-breadcrumb-item"><a class="mc-breadcrumb-link" href="<c:url value="/admin/userlist.do"/>">user list</a></li>

                <li class="mc-breadcrumb-item"> user profile</li>
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
                        <h4 class="common-card-header-title"> ${userData.userName} Profile</h4>
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
                            <li><span>Joined:</span><span>${userData.timeCreated}</span></li>
                            <li><span>Name:</span><span>${userData.userName}</span></li>
                            <li><span>Email:</span><span>${userData.userEmail}</span></li>
                            <li><span>Role:</span><span><c:if test="${userData.userRole == 2}">Admin</c:if> <c:if test="${userData.userRole == 1}">Employee</c:if> <c:if test="${userData.userRole == 0}">Customer</c:if></span></li>
                            <li><span>Phone:</span><span>${userData.userPhone}</span></li>
                            <li><span>Address:</span><span>${userData.userAddress}</span></li>
                        </ul>
                    </div>
                </div>  

            </div>
            <div class="col-lg-5 col-xl-4">
                <div class="common-card">
                    <div class="common-card-header">
                        <h4 class="common-card-header-title">${userData.userName} Plan Package</h4>
                    </div>
                    <form>
                        <div class="common-card-body "> 
                            <ul class="profile-specify-list">
                                <c:if test="${UserPlan!=null}">
                                    <li><span>Package</span><span>${UserPlan.planName}</span></li>
                                    <li><span>Expired Date:</span><span>${ExpDate}</span></li>
                                    <li><span>Post available:</span><span>${(UserPlan.planLimit != 0) ? UserPlan.planLimit : "infinite"}</span></li>
                                    </c:if>
                                    <c:if test="${UserPlan==null}">
                                    <li><span>Package</span><span>None</span></li>
                                    <li><span>Expired Date:</span><span>None</span></li>
                                    <li><span>Post available:</span><span>None</span></li>
                                    </c:if>
                            </ul>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</section>




