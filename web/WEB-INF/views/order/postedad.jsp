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
                            <li><a href="<c:url value="/login/profile.do"/>" >profile</a></li>
                            <li><a href="<c:url value="/login/update_profile.do"/>" >update profile</a></li>
                                <c:if test="${User.userRole == 0 || User.userRole == 1}">
                                <li><a href="<c:url value="/order/createad.do"/>">create car</a></li>
                                </c:if>
                                <c:if test="${User.userRole == 0 || User.userRole == 1}">
                                <li><a href="<c:url value="/order/postedad.do"/>" class="active" >posted car</a></li>
                                </c:if>
                                <c:if test="${User.userRole == 2 || User.userRole == 1}">
                                <li><a href="<c:url value="/order/ordermanager.do"/>"  >Order Manager</a></li>
                                </c:if>
                                <c:if test="${ User.userRole == 1}">
                                <li><a href="<c:url value="/admin/userlist.do"/>" >User List</a></li>
                                </c:if>
                                <c:if test="${ User.userRole == 0}">
                                <li><a href="<c:url value="/order/orderlist.do"/>" >Order List</a></li>
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
            <h2 class="mc-breadcrumb-title">user posted ads</h2>
            <ul class="mc-breadcrumb-list">
                <li class="mc-breadcrumb-item"><a class="mc-breadcrumb-link" href="index.html">home</a></li>
                <li class="mc-breadcrumb-item"><a class="mc-breadcrumb-link" href="dashboard.html">dashboard</a>
                </li>
                <li class="mc-breadcrumb-item">posted-ads</li>
            </ul>
        </div>
    </div>
</section>
<c:if test="${pdata != null}">
    <section class="section-gap-75">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="favorite-title">
                        <h6 >media</h6>
                        <h6>information</h6>
                        <h6>status</h6>
                        <h6>action</h6>
                    </div>

                    <ul class="favorite-list">
                        <c:forEach items="${pdata}" var="item">
                            <li class="favorite-item">
                                <div class="favorite-media" style="width:auto; display:inline-block">
                                    <span><div><img style="max-height: 100%; min-height: 100%; max-width: 100%;min-width: 100%" src="${pageContext.request.contextPath}${item.car.image.size() == 0 ? '' : item.car.image.get(0).url}" alt="${item.car.carName}'s Image"></div></span>
                                </div>
                                <div class="favorite-info product-list-card" style="background-color: #ffffff; border:none; outline:none; pointer-events: none; width:auto">
                                    <div class="product-list-content" >
                                        <h3><a href="<c:url value="/cars/carsingle.do?carId=${item.car.carID}"/>">${item.car.carName}</a></h3>

                                        <ul>
                                            <li><i class="material-icons">label</i><span>Post ID: ${item.postId}</span></li>
                                            <li><i class="material-icons">label_outline</i><span>Car ID: ${item.car.carID}</span></li>
                                            <li><i class="material-icons">local_offer</i><span>condition: <span style="color: ${data.carCondition ? 'red' : 'green'}"> ${data.carCondition ? 'Sold' : 'Available'}</span></span></li>
                                            <li><i class="material-icons">watch_later</i><span>Create Date: ${item.car.createDate}</span></li>
                                            <li><i class="material-icons">date_range</i><span>Year: ${item.car.carYear}</span></li>
                                            <li><i class="material-icons">watch_later</i><span>Update Date: ${item.car.updateDate}</span></li>
                                            <li><i class="material-icons">local_gas_station</i><span>Fuel Type: ${item.car.engine}</span></li>
                                            <li><i class="material-icons">location_on</i><span>Showroom: ${item.car.carShowroom}</span></li>
                                            <li><i class="material-icons">directions_car</i><span>Mileage: ${item.car.odo}</span></li>

                                            <li><i class="material-icons">airline_seat_recline_normal</i><span>Seat: ${item.car.car_seat}</span></li>

                                            <li><i class="material-icons">color_lens</i><span>Color: <a href="<c:url value="/cars/carlist.do?cid=${item.car.color.id}"/>">${item.car.color.color}</a></span></li>
                                            <!--                                    <li><i class="material-icons">fmd_good</i><span>delpara, narayanganj</span></li>-->
                                            <li><i class="material-icons">stars</i> <span>Brand: <a href="<c:url value="/cars/carlist.do?bid=${item.car.brand.id}"/>">${item.car.brand.name}</a></span></li>
                                            <li><i class="material-icons">description</i><span>Description: ${item.car.carDescription}</span></li>
                                        </ul>
                                        <h5>${item.car.formatPrice}</h5>
                                    </div>


<!--                                    <div><img style="max-height: 110px; min-height: 110px; max-width: 155px;min-width: 155px" src="${pageContext.request.contextPath}${item.car.image.size() == 0 ? '' : item.car.image.get(0).url}" alt="product"></div>
                <div class="product-list-content" >
                    <h3><a href="<c:url value="/cars/carsingle.do?carId=${item.car.carID}"/>">${item.car.carName}</a></h3>

                    <ul>
                                                            <li><i class="material-icons">store</i><a href="profile.html">by autoland</a></li>
                        <li><i class="material-icons">watch_later</i><span>Create Date: ${item.car.createDate}</span></li>
                        <li><i class="material-icons">color_lens</i><span>Color: ${item.car.color.color}</span></li>
                                                            <li><i class="material-icons">fmd_good</i><span>delpara, narayanganj</span></li>
                        <li><i class="material-icons">stars</i> <span>Brand: <a href="<c:url value="/cars/carlist.do?bid=${item.car.brand.id}"/>">${item.car.brand.name}</a></span></li>
                    </ul>
                    <h5>${item.car.formatPrice}</h5>
                </div>-->

                                </div>

                                <div class="favorite-widget" style="display:flex;justify-content:center; align-items:center">
                                    <c:if test="${User.userRole == 1 || User.userRole == 2}">
                                        <form action="<c:url value="/order/status_handler.do"/>">
                                            <input type="hidden" name="postId" id="postId" value="${item.postId}">
                                            <select class="form-select" style=" width: auto;
                                                    max-width: 200%;
                                                    white-space: nowrap;
                                                    overflow: hidden;
                                                    text-overflow: ellipsis; " name="postStatus" id ="postStatus">
                                                <option class="form-check-label" value="Inactive" ${item.postStatus == "Inactive" ? 'selected' : ''}>Inactive</option>
                                                <option class="form-check-label" value="Active" ${item.postStatus == "Active" ? 'selected' : ''}>Active</option>
                                            </select>
                                            <span><button type="submit" style=" border: none;
                                                          background: none;
                                                          font-family: inherit;
                                                          font-size: inherit;
                                                          color: inherit;
                                                          text-decoration: underline;
                                                          cursor: pointer;
                                                          text-decoration: none">Submit</button></span>
                                        </form>
                                    </c:if>
                                    <c:if test="${User.userRole == 0}">
                                        <span>${item.postStatus}</span>
                                    </c:if>

                                </div>
                                <div style="display:flex;justify-content: center;align-items:center">
                                    <a href="${pageContext.request.contextPath}/order/postmanager.do?postId=${item.postId}" class="favorite-close" style="margin-right:2px"><i class="material-icons">edit</i></a>

                                    <a href="${pageContext.request.contextPath}/cars/carsingle.do?carId=${item.car.carID}" class="favorite-close"><i class="material-icons" style="margin-left:2px">visibility</i></a> </div>
                            </li>
                        </c:forEach>


                    </ul>
                </div>
            </div>
        </div>
    </section>
</c:if>
