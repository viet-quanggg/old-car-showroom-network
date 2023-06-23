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
                            <li><a href="<c:url value="/login/profile.do"/>">profile</a></li>
                            <li><a href="<c:url value="/login/update_profile.do"/>" class="">update profile</a></li>
                            <li><a href="<c:url value="/order/createad.do"/>">create car</a></li>
                            <li><a href="<c:url value="/order/postedad.do"/>"class="active">posted car</a></li>
                                <c:if test="${User.userRole == 2 || User.userRole == 1}">
                                <li><a href="<c:url value="/order/ordermanager.do"/>">Order Manager</a></li>
                                </c:if>
                                <c:if test="${ User.userRole == 1}">
                                <li><a href="<c:url value="/admin/userlist.do"/>">User List</a></li>
                                </c:if>
                            <li><a href="<c:url value="/order/favorite.do"/>">favorite</a></li>
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
    <section class="section-gap-75">
        <div class="container">
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-3 row-cols-xl-4">
                <div class="col">
                    <div class="product-grid-card">
                        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/01.jpg" alt="product">
                            <div class="product-grid-badge"><span class="badge used">used</span><span
                                    class="badge featured">featured</span></div>
                            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
                            </div>
                            <div class="posted-widget"><a href="#" title="Edit" class="material-icons edit">edit</a><a
                                    href="#" title="Delete" class="material-icons delete">delete</a></div>
                            <div class="product-grid-overlay">
                                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                                        href="profile.html">by autoland</a></div>
                                <div class="product-grid-rating"><i class="material-icons">star</i><a
                                        href="review.html">28 review</a></div>
                            </div>
                        </div>
                        <div class="product-grid-content">
                            <div class="product-grid-group">
                                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small></div>
                                <div class="product-grid-action"><button type="button" title="Compare"
                                        class="compare material-icons">compare</button><button type="button"
                                        title="Favorite" class="favorite material-icons">favorite</button></div>
                            </div>
                            <div class="product-grid-meta">
                                <h4><a href="inventory-single.html">Mercedez benz super mclaren</a></h4>
                                <ul>
                                    <li>delpara, narayanganj</li>
                                    <li>23h ago!</li>
                                </ul>
                            </div>
                            <ul class="product-grid-extra">
                                <li><i class="material-icons">construction</i><span>manual</span></li>
                                <li><i class="material-icons">settings</i><span>2000 km</span></li>
                                <li><i class="material-icons">local_gas_station</i><span>diesel</span></li>
                            </ul>
                            <div class="product-grid-btn"><a href="inventory-single.html"><i
                                        class="material-icons">visibility</i><span>details</span></a><a
                                    href="https://youtu.be/VWrJkx6O0L8" class="venobox" data-autoplay="true"
                                    data-vbtype="video"><i class="material-icons">videocam</i><span>video</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="product-grid-card">
                        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/02.jpg" alt="product">
                            <div class="product-grid-badge"><span class="badge new">new</span></div>
                            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
                            </div>
                            <div class="posted-widget"><a href="#" title="Edit" class="material-icons edit">edit</a><a
                                    href="#" title="Delete" class="material-icons delete">delete</a></div>
                            <div class="product-grid-overlay">
                                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                                        href="profile.html">by autoland</a></div>
                                <div class="product-grid-rating"><i class="material-icons">star</i><a
                                        href="review.html">28 review</a></div>
                            </div>
                        </div>
                        <div class="product-grid-content">
                            <div class="product-grid-group">
                                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small></div>
                                <div class="product-grid-action"><button type="button" title="Compare"
                                        class="compare material-icons">compare</button><button type="button"
                                        title="Favorite" class="favorite material-icons">favorite</button></div>
                            </div>
                            <div class="product-grid-meta">
                                <h4><a href="inventory-single.html">Mercedez benz super mclaren</a></h4>
                                <ul>
                                    <li>delpara, narayanganj</li>
                                    <li>23h ago!</li>
                                </ul>
                            </div>
                            <ul class="product-grid-extra">
                                <li><i class="material-icons">construction</i><span>manual</span></li>
                                <li><i class="material-icons">settings</i><span>2000 km</span></li>
                                <li><i class="material-icons">local_gas_station</i><span>diesel</span></li>
                            </ul>
                            <div class="product-grid-btn"><a href="inventory-single.html"><i
                                        class="material-icons">visibility</i><span>details</span></a><a
                                    href="https://youtu.be/VWrJkx6O0L8" class="venobox" data-autoplay="true"
                                    data-vbtype="video"><i class="material-icons">videocam</i><span>video</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="product-grid-card">
                        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/03.jpg" alt="product">
                            <div class="product-grid-badge"><span class="badge new">new</span><span
                                    class="badge recom">recom</span></div>
                            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
                            </div>
                            <div class="posted-widget"><a href="#" title="Edit" class="material-icons edit">edit</a><a
                                    href="#" title="Delete" class="material-icons delete">delete</a></div>
                            <div class="product-grid-overlay">
                                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                                        href="profile.html">by autoland</a></div>
                                <div class="product-grid-rating"><i class="material-icons">star</i><a
                                        href="review.html">28 review</a></div>
                            </div>
                        </div>
                        <div class="product-grid-content">
                            <div class="product-grid-group">
                                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small></div>
                                <div class="product-grid-action"><button type="button" title="Compare"
                                        class="compare material-icons">compare</button><button type="button"
                                        title="Favorite" class="favorite material-icons">favorite</button></div>
                            </div>
                            <div class="product-grid-meta">
                                <h4><a href="inventory-single.html">Mercedez benz super mclaren</a></h4>
                                <ul>
                                    <li>delpara, narayanganj</li>
                                    <li>23h ago!</li>
                                </ul>
                            </div>
                            <ul class="product-grid-extra">
                                <li><i class="material-icons">construction</i><span>manual</span></li>
                                <li><i class="material-icons">settings</i><span>2000 km</span></li>
                                <li><i class="material-icons">local_gas_station</i><span>diesel</span></li>
                            </ul>
                            <div class="product-grid-btn"><a href="inventory-single.html"><i
                                        class="material-icons">visibility</i><span>details</span></a><a
                                    href="https://youtu.be/VWrJkx6O0L8" class="venobox" data-autoplay="true"
                                    data-vbtype="video"><i class="material-icons">videocam</i><span>video</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="product-grid-card">
                        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/04.jpg" alt="product">
                            <div class="product-grid-badge"><span class="badge new">new</span></div>
                            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
                            </div>
                            <div class="posted-widget"><a href="#" title="Edit" class="material-icons edit">edit</a><a
                                    href="#" title="Delete" class="material-icons delete">delete</a></div>
                            <div class="product-grid-overlay">
                                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                                        href="profile.html">by autoland</a></div>
                                <div class="product-grid-rating"><i class="material-icons">star</i><a
                                        href="review.html">28 review</a></div>
                            </div>
                        </div>
                        <div class="product-grid-content">
                            <div class="product-grid-group">
                                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small></div>
                                <div class="product-grid-action"><button type="button" title="Compare"
                                        class="compare material-icons">compare</button><button type="button"
                                        title="Favorite" class="favorite material-icons">favorite</button></div>
                            </div>
                            <div class="product-grid-meta">
                                <h4><a href="inventory-single.html">Mercedez benz super mclaren</a></h4>
                                <ul>
                                    <li>delpara, narayanganj</li>
                                    <li>23h ago!</li>
                                </ul>
                            </div>
                            <ul class="product-grid-extra">
                                <li><i class="material-icons">construction</i><span>manual</span></li>
                                <li><i class="material-icons">settings</i><span>2000 km</span></li>
                                <li><i class="material-icons">local_gas_station</i><span>diesel</span></li>
                            </ul>
                            <div class="product-grid-btn"><a href="inventory-single.html"><i
                                        class="material-icons">visibility</i><span>details</span></a><a
                                    href="https://youtu.be/VWrJkx6O0L8" class="venobox" data-autoplay="true"
                                    data-vbtype="video"><i class="material-icons">videocam</i><span>video</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="product-grid-card">
                        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/05.jpg" alt="product">
                            <div class="product-grid-badge"><span class="badge used">used</span></div>
                            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
                            </div>
                            <div class="posted-widget"><a href="#" title="Edit" class="material-icons edit">edit</a><a
                                    href="#" title="Delete" class="material-icons delete">delete</a></div>
                            <div class="product-grid-overlay">
                                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                                        href="profile.html">by autoland</a></div>
                                <div class="product-grid-rating"><i class="material-icons">star</i><a
                                        href="review.html">28 review</a></div>
                            </div>
                        </div>
                        <div class="product-grid-content">
                            <div class="product-grid-group">
                                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small></div>
                                <div class="product-grid-action"><button type="button" title="Compare"
                                        class="compare material-icons">compare</button><button type="button"
                                        title="Favorite" class="favorite material-icons">favorite</button></div>
                            </div>
                            <div class="product-grid-meta">
                                <h4><a href="inventory-single.html">Mercedez benz super mclaren</a></h4>
                                <ul>
                                    <li>delpara, narayanganj</li>
                                    <li>23h ago!</li>
                                </ul>
                            </div>
                            <ul class="product-grid-extra">
                                <li><i class="material-icons">construction</i><span>manual</span></li>
                                <li><i class="material-icons">settings</i><span>2000 km</span></li>
                                <li><i class="material-icons">local_gas_station</i><span>diesel</span></li>
                            </ul>
                            <div class="product-grid-btn"><a href="inventory-single.html"><i
                                        class="material-icons">visibility</i><span>details</span></a><a
                                    href="https://youtu.be/VWrJkx6O0L8" class="venobox" data-autoplay="true"
                                    data-vbtype="video"><i class="material-icons">videocam</i><span>video</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="product-grid-card">
                        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/06.jpg" alt="product">
                            <div class="product-grid-badge"><span class="badge new">new</span></div>
                            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
                            </div>
                            <div class="posted-widget"><a href="#" title="Edit" class="material-icons edit">edit</a><a
                                    href="#" title="Delete" class="material-icons delete">delete</a></div>
                            <div class="product-grid-overlay">
                                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                                        href="profile.html">by autoland</a></div>
                                <div class="product-grid-rating"><i class="material-icons">star</i><a
                                        href="review.html">28 review</a></div>
                            </div>
                        </div>
                        <div class="product-grid-content">
                            <div class="product-grid-group">
                                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small></div>
                                <div class="product-grid-action"><button type="button" title="Compare"
                                        class="compare material-icons">compare</button><button type="button"
                                        title="Favorite" class="favorite material-icons">favorite</button></div>
                            </div>
                            <div class="product-grid-meta">
                                <h4><a href="inventory-single.html">Mercedez benz super mclaren</a></h4>
                                <ul>
                                    <li>delpara, narayanganj</li>
                                    <li>23h ago!</li>
                                </ul>
                            </div>
                            <ul class="product-grid-extra">
                                <li><i class="material-icons">construction</i><span>manual</span></li>
                                <li><i class="material-icons">settings</i><span>2000 km</span></li>
                                <li><i class="material-icons">local_gas_station</i><span>diesel</span></li>
                            </ul>
                            <div class="product-grid-btn"><a href="inventory-single.html"><i
                                        class="material-icons">visibility</i><span>details</span></a><a
                                    href="https://youtu.be/VWrJkx6O0L8" class="venobox" data-autoplay="true"
                                    data-vbtype="video"><i class="material-icons">videocam</i><span>video</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="product-grid-card">
                        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/07.jpg" alt="product">
                            <div class="product-grid-badge"><span class="badge used">used</span><span
                                    class="badge featured">featured</span></div>
                            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
                            </div>
                            <div class="posted-widget"><a href="#" title="Edit" class="material-icons edit">edit</a><a
                                    href="#" title="Delete" class="material-icons delete">delete</a></div>
                            <div class="product-grid-overlay">
                                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                                        href="profile.html">by autoland</a></div>
                                <div class="product-grid-rating"><i class="material-icons">star</i><a
                                        href="review.html">28 review</a></div>
                            </div>
                        </div>
                        <div class="product-grid-content">
                            <div class="product-grid-group">
                                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small></div>
                                <div class="product-grid-action"><button type="button" title="Compare"
                                        class="compare material-icons">compare</button><button type="button"
                                        title="Favorite" class="favorite material-icons">favorite</button></div>
                            </div>
                            <div class="product-grid-meta">
                                <h4><a href="inventory-single.html">Mercedez benz super mclaren</a></h4>
                                <ul>
                                    <li>delpara, narayanganj</li>
                                    <li>23h ago!</li>
                                </ul>
                            </div>
                            <ul class="product-grid-extra">
                                <li><i class="material-icons">construction</i><span>manual</span></li>
                                <li><i class="material-icons">settings</i><span>2000 km</span></li>
                                <li><i class="material-icons">local_gas_station</i><span>diesel</span></li>
                            </ul>
                            <div class="product-grid-btn"><a href="inventory-single.html"><i
                                        class="material-icons">visibility</i><span>details</span></a><a
                                    href="https://youtu.be/VWrJkx6O0L8" class="venobox" data-autoplay="true"
                                    data-vbtype="video"><i class="material-icons">videocam</i><span>video</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="product-grid-card">
                        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/08.jpg" alt="product">
                            <div class="product-grid-badge"><span class="badge new">new</span></div>
                            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
                            </div>
                            <div class="posted-widget"><a href="#" title="Edit" class="material-icons edit">edit</a><a
                                    href="#" title="Delete" class="material-icons delete">delete</a></div>
                            <div class="product-grid-overlay">
                                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                                        href="profile.html">by autoland</a></div>
                                <div class="product-grid-rating"><i class="material-icons">star</i><a
                                        href="review.html">28 review</a></div>
                            </div>
                        </div>
                        <div class="product-grid-content">
                            <div class="product-grid-group">
                                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small></div>
                                <div class="product-grid-action"><button type="button" title="Compare"
                                        class="compare material-icons">compare</button><button type="button"
                                        title="Favorite" class="favorite material-icons">favorite</button></div>
                            </div>
                            <div class="product-grid-meta">
                                <h4><a href="inventory-single.html">Mercedez benz super mclaren</a></h4>
                                <ul>
                                    <li>delpara, narayanganj</li>
                                    <li>23h ago!</li>
                                </ul>
                            </div>
                            <ul class="product-grid-extra">
                                <li><i class="material-icons">construction</i><span>manual</span></li>
                                <li><i class="material-icons">settings</i><span>2000 km</span></li>
                                <li><i class="material-icons">local_gas_station</i><span>diesel</span></li>
                            </ul>
                            <div class="product-grid-btn"><a href="inventory-single.html"><i
                                        class="material-icons">visibility</i><span>details</span></a><a
                                    href="https://youtu.be/VWrJkx6O0L8" class="venobox" data-autoplay="true"
                                    data-vbtype="video"><i class="material-icons">videocam</i><span>video</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="product-grid-card">
                        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/09.jpg" alt="product">
                            <div class="product-grid-badge"><span class="badge used">used</span></div>
                            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
                            </div>
                            <div class="posted-widget"><a href="#" title="Edit" class="material-icons edit">edit</a><a
                                    href="#" title="Delete" class="material-icons delete">delete</a></div>
                            <div class="product-grid-overlay">
                                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                                        href="profile.html">by autoland</a></div>
                                <div class="product-grid-rating"><i class="material-icons">star</i><a
                                        href="review.html">28 review</a></div>
                            </div>
                        </div>
                        <div class="product-grid-content">
                            <div class="product-grid-group">
                                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small></div>
                                <div class="product-grid-action"><button type="button" title="Compare"
                                        class="compare material-icons">compare</button><button type="button"
                                        title="Favorite" class="favorite material-icons">favorite</button></div>
                            </div>
                            <div class="product-grid-meta">
                                <h4><a href="inventory-single.html">Mercedez benz super mclaren</a></h4>
                                <ul>
                                    <li>delpara, narayanganj</li>
                                    <li>23h ago!</li>
                                </ul>
                            </div>
                            <ul class="product-grid-extra">
                                <li><i class="material-icons">construction</i><span>manual</span></li>
                                <li><i class="material-icons">settings</i><span>2000 km</span></li>
                                <li><i class="material-icons">local_gas_station</i><span>diesel</span></li>
                            </ul>
                            <div class="product-grid-btn"><a href="inventory-single.html"><i
                                        class="material-icons">visibility</i><span>details</span></a><a
                                    href="https://youtu.be/VWrJkx6O0L8" class="venobox" data-autoplay="true"
                                    data-vbtype="video"><i class="material-icons">videocam</i><span>video</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="product-grid-card">
                        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/10.jpg" alt="product">
                            <div class="product-grid-badge"><span class="badge new">new</span></div>
                            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
                            </div>
                            <div class="posted-widget"><a href="#" title="Edit" class="material-icons edit">edit</a><a
                                    href="#" title="Delete" class="material-icons delete">delete</a></div>
                            <div class="product-grid-overlay">
                                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                                        href="profile.html">by autoland</a></div>
                                <div class="product-grid-rating"><i class="material-icons">star</i><a
                                        href="review.html">28 review</a></div>
                            </div>
                        </div>
                        <div class="product-grid-content">
                            <div class="product-grid-group">
                                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small></div>
                                <div class="product-grid-action"><button type="button" title="Compare"
                                        class="compare material-icons">compare</button><button type="button"
                                        title="Favorite" class="favorite material-icons">favorite</button></div>
                            </div>
                            <div class="product-grid-meta">
                                <h4><a href="inventory-single.html">Mercedez benz super mclaren</a></h4>
                                <ul>
                                    <li>delpara, narayanganj</li>
                                    <li>23h ago!</li>
                                </ul>
                            </div>
                            <ul class="product-grid-extra">
                                <li><i class="material-icons">construction</i><span>manual</span></li>
                                <li><i class="material-icons">settings</i><span>2000 km</span></li>
                                <li><i class="material-icons">local_gas_station</i><span>diesel</span></li>
                            </ul>
                            <div class="product-grid-btn"><a href="inventory-single.html"><i
                                        class="material-icons">visibility</i><span>details</span></a><a
                                    href="https://youtu.be/VWrJkx6O0L8" class="venobox" data-autoplay="true"
                                    data-vbtype="video"><i class="material-icons">videocam</i><span>video</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="product-grid-card">
                        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/11.jpg" alt="product">
                            <div class="product-grid-badge"><span class="badge used">used</span><span
                                    class="badge recom">recom</span></div>
                            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
                            </div>
                            <div class="posted-widget"><a href="#" title="Edit" class="material-icons edit">edit</a><a
                                    href="#" title="Delete" class="material-icons delete">delete</a></div>
                            <div class="product-grid-overlay">
                                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                                        href="profile.html">by autoland</a></div>
                                <div class="product-grid-rating"><i class="material-icons">star</i><a
                                        href="review.html">28 review</a></div>
                            </div>
                        </div>
                        <div class="product-grid-content">
                            <div class="product-grid-group">
                                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small></div>
                                <div class="product-grid-action"><button type="button" title="Compare"
                                        class="compare material-icons">compare</button><button type="button"
                                        title="Favorite" class="favorite material-icons">favorite</button></div>
                            </div>
                            <div class="product-grid-meta">
                                <h4><a href="inventory-single.html">Mercedez benz super mclaren</a></h4>
                                <ul>
                                    <li>delpara, narayanganj</li>
                                    <li>23h ago!</li>
                                </ul>
                            </div>
                            <ul class="product-grid-extra">
                                <li><i class="material-icons">construction</i><span>manual</span></li>
                                <li><i class="material-icons">settings</i><span>2000 km</span></li>
                                <li><i class="material-icons">local_gas_station</i><span>diesel</span></li>
                            </ul>
                            <div class="product-grid-btn"><a href="inventory-single.html"><i
                                        class="material-icons">visibility</i><span>details</span></a><a
                                    href="https://youtu.be/VWrJkx6O0L8" class="venobox" data-autoplay="true"
                                    data-vbtype="video"><i class="material-icons">videocam</i><span>video</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="product-grid-card">
                        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/12.jpg" alt="product">
                            <div class="product-grid-badge"><span class="badge new">new</span></div>
                            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
                            </div>
                            <div class="posted-widget"><a href="#" title="Edit" class="material-icons edit">edit</a><a
                                    href="#" title="Delete" class="material-icons delete">delete</a></div>
                            <div class="product-grid-overlay">
                                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                                        href="profile.html">by autoland</a></div>
                                <div class="product-grid-rating"><i class="material-icons">star</i><a
                                        href="review.html">28 review</a></div>
                            </div>
                        </div>
                        <div class="product-grid-content">
                            <div class="product-grid-group">
                                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small></div>
                                <div class="product-grid-action"><button type="button" title="Compare"
                                        class="compare material-icons">compare</button><button type="button"
                                        title="Favorite" class="favorite material-icons">favorite</button></div>
                            </div>
                            <div class="product-grid-meta">
                                <h4><a href="inventory-single.html">Mercedez benz super mclaren</a></h4>
                                <ul>
                                    <li>delpara, narayanganj</li>
                                    <li>23h ago!</li>
                                </ul>
                            </div>
                            <ul class="product-grid-extra">
                                <li><i class="material-icons">construction</i><span>manual</span></li>
                                <li><i class="material-icons">settings</i><span>2000 km</span></li>
                                <li><i class="material-icons">local_gas_station</i><span>diesel</span></li>
                            </ul>
                            <div class="product-grid-btn"><a href="inventory-single.html"><i
                                        class="material-icons">visibility</i><span>details</span></a><a
                                    href="https://youtu.be/VWrJkx6O0L8" class="venobox" data-autoplay="true"
                                    data-vbtype="video"><i class="material-icons">videocam</i><span>video</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="product-grid-card">
                        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/13.jpg" alt="product">
                            <div class="product-grid-badge"><span class="badge used">used</span></div>
                            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
                            </div>
                            <div class="posted-widget"><a href="#" title="Edit" class="material-icons edit">edit</a><a
                                    href="#" title="Delete" class="material-icons delete">delete</a></div>
                            <div class="product-grid-overlay">
                                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                                        href="profile.html">by autoland</a></div>
                                <div class="product-grid-rating"><i class="material-icons">star</i><a
                                        href="review.html">28 review</a></div>
                            </div>
                        </div>
                        <div class="product-grid-content">
                            <div class="product-grid-group">
                                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small></div>
                                <div class="product-grid-action"><button type="button" title="Compare"
                                        class="compare material-icons">compare</button><button type="button"
                                        title="Favorite" class="favorite material-icons">favorite</button></div>
                            </div>
                            <div class="product-grid-meta">
                                <h4><a href="inventory-single.html">Mercedez benz super mclaren</a></h4>
                                <ul>
                                    <li>delpara, narayanganj</li>
                                    <li>23h ago!</li>
                                </ul>
                            </div>
                            <ul class="product-grid-extra">
                                <li><i class="material-icons">construction</i><span>manual</span></li>
                                <li><i class="material-icons">settings</i><span>2000 km</span></li>
                                <li><i class="material-icons">local_gas_station</i><span>diesel</span></li>
                            </ul>
                            <div class="product-grid-btn"><a href="inventory-single.html"><i
                                        class="material-icons">visibility</i><span>details</span></a><a
                                    href="https://youtu.be/VWrJkx6O0L8" class="venobox" data-autoplay="true"
                                    data-vbtype="video"><i class="material-icons">videocam</i><span>video</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="product-grid-card">
                        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/14.jpg" alt="product">
                            <div class="product-grid-badge"><span class="badge new">new</span></div>
                            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
                            </div>
                            <div class="posted-widget"><a href="#" title="Edit" class="material-icons edit">edit</a><a
                                    href="#" title="Delete" class="material-icons delete">delete</a></div>
                            <div class="product-grid-overlay">
                                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                                        href="profile.html">by autoland</a></div>
                                <div class="product-grid-rating"><i class="material-icons">star</i><a
                                        href="review.html">28 review</a></div>
                            </div>
                        </div>
                        <div class="product-grid-content">
                            <div class="product-grid-group">
                                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small></div>
                                <div class="product-grid-action"><button type="button" title="Compare"
                                        class="compare material-icons">compare</button><button type="button"
                                        title="Favorite" class="favorite material-icons">favorite</button></div>
                            </div>
                            <div class="product-grid-meta">
                                <h4><a href="inventory-single.html">Mercedez benz super mclaren</a></h4>
                                <ul>
                                    <li>delpara, narayanganj</li>
                                    <li>23h ago!</li>
                                </ul>
                            </div>
                            <ul class="product-grid-extra">
                                <li><i class="material-icons">construction</i><span>manual</span></li>
                                <li><i class="material-icons">settings</i><span>2000 km</span></li>
                                <li><i class="material-icons">local_gas_station</i><span>diesel</span></li>
                            </ul>
                            <div class="product-grid-btn"><a href="inventory-single.html"><i
                                        class="material-icons">visibility</i><span>details</span></a><a
                                    href="https://youtu.be/VWrJkx6O0L8" class="venobox" data-autoplay="true"
                                    data-vbtype="video"><i class="material-icons">videocam</i><span>video</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="product-grid-card">
                        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/15.jpg" alt="product">
                            <div class="product-grid-badge"><span class="badge used">used</span></div>
                            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
                            </div>
                            <div class="posted-widget"><a href="#" title="Edit" class="material-icons edit">edit</a><a
                                    href="#" title="Delete" class="material-icons delete">delete</a></div>
                            <div class="product-grid-overlay">
                                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                                        href="profile.html">by autoland</a></div>
                                <div class="product-grid-rating"><i class="material-icons">star</i><a
                                        href="review.html">28 review</a></div>
                            </div>
                        </div>
                        <div class="product-grid-content">
                            <div class="product-grid-group">
                                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small></div>
                                <div class="product-grid-action"><button type="button" title="Compare"
                                        class="compare material-icons">compare</button><button type="button"
                                        title="Favorite" class="favorite material-icons">favorite</button></div>
                            </div>
                            <div class="product-grid-meta">
                                <h4><a href="inventory-single.html">Mercedez benz super mclaren</a></h4>
                                <ul>
                                    <li>delpara, narayanganj</li>
                                    <li>23h ago!</li>
                                </ul>
                            </div>
                            <ul class="product-grid-extra">
                                <li><i class="material-icons">construction</i><span>manual</span></li>
                                <li><i class="material-icons">settings</i><span>2000 km</span></li>
                                <li><i class="material-icons">local_gas_station</i><span>diesel</span></li>
                            </ul>
                            <div class="product-grid-btn"><a href="inventory-single.html"><i
                                        class="material-icons">visibility</i><span>details</span></a><a
                                    href="https://youtu.be/VWrJkx6O0L8" class="venobox" data-autoplay="true"
                                    data-vbtype="video"><i class="material-icons">videocam</i><span>video</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="product-grid-card">
                        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/16.jpg" alt="product">
                            <div class="product-grid-badge"><span class="badge featured">featured</span></div>
                            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
                            </div>
                            <div class="posted-widget"><a href="#" title="Edit" class="material-icons edit">edit</a><a
                                    href="#" title="Delete" class="material-icons delete">delete</a></div>
                            <div class="product-grid-overlay">
                                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                                        href="profile.html">by autoland</a></div>
                                <div class="product-grid-rating"><i class="material-icons">star</i><a
                                        href="review.html">28 review</a></div>
                            </div>
                        </div>
                        <div class="product-grid-content">
                            <div class="product-grid-group">
                                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small></div>
                                <div class="product-grid-action"><button type="button" title="Compare"
                                        class="compare material-icons">compare</button><button type="button"
                                        title="Favorite" class="favorite material-icons">favorite</button></div>
                            </div>
                            <div class="product-grid-meta">
                                <h4><a href="inventory-single.html">Mercedez benz super mclaren</a></h4>
                                <ul>
                                    <li>delpara, narayanganj</li>
                                    <li>23h ago!</li>
                                </ul>
                            </div>
                            <ul class="product-grid-extra">
                                <li><i class="material-icons">construction</i><span>manual</span></li>
                                <li><i class="material-icons">settings</i><span>2000 km</span></li>
                                <li><i class="material-icons">local_gas_station</i><span>diesel</span></li>
                            </ul>
                            <div class="product-grid-btn"><a href="inventory-single.html"><i
                                        class="material-icons">visibility</i><span>details</span></a><a
                                    href="https://youtu.be/VWrJkx6O0L8" class="venobox" data-autoplay="true"
                                    data-vbtype="video"><i class="material-icons">videocam</i><span>video</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-12">
                    <div class="bottom-paginate mb-50">
                        <p class="page-info">Showing 12 of 60 Results</p>
                        <ul class="pagination">
                            <li class="page-item"><a href="#" class="page-link material-icons">chevron_left</a></li>
                            <li class="page-item"><a href="#" class="page-link active">01</a></li>
                            <li class="page-item"><a href="#" class="page-link">02</a></li>
                            <li class="page-item"><a href="#" class="page-link">03</a></li>
                            <li class="page-item"><a href="#" class="page-link">...</a></li>
                            <li class="page-item"><a href="#" class="page-link">45</a></li>
                            <li class="page-item"><a href="#" class="page-link material-icons">chevron_right</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>