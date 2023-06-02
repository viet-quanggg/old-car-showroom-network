<%-- 
    Document   : favorite
    Created on : May 28, 2023, 11:26:49 AM
    Author     : _viet.quangg
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
                                <div class="user-banner-profile-avatar"><a href="profile.html"><img
                                            src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/avatar/01.jpg" alt="avatar"></a></div>
                                <div class="user-banner-profile-meta">
                                    <div class="user-banner-profile-name">
                                        <h3><a href="profile.html">person name</a></h3><span>individual</span>
                                    </div>
                                    <ul class="user-banner-profile-contact-list">
                                        <li><i class="material-icons">phone_in_talk</i><span>+91 987-654-3210</span>
                                        </li>
                                        <li><i class="material-icons">feed</i><span>support@example.com</span></li>
                                        <li><i class="material-icons">public</i><span>exampleGhurnek.com</span></li>
                                        <li><i class="material-icons">map</i><span>1Hd- 50, 010 Avenue, NY 90001 United
                                                States</span></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-5 col-xl-4">
                            <ul class="user-banner-data">
                                <li class="ads"><i class="material-icons">store</i>
                                    <h3>4334</h3>
                                    <p>total advertise</p>
                                </li>
                                <li class="star"><i class="material-icons">star</i>
                                    <h3>2112</h3>
                                    <p>total ratings</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-12">
                            <ul class="user-banner-menu-list">
                                <li><a href="dashboard.html">dashboard</a></li>
                                <li><a href="profile.html">profile</a></li>
                                <li><a href="create-ads.html">create ads</a></li>
                                <li><a href="posted-ads.html">posted ads</a></li>
                                <li><a href="favorite.html" class="active">favorites</a></li>
                                <li><a href="compare.html">compares</a></li>
                                <li><a href="review.html">reviews</a></li>
                                <li><a href="notify.html">notify</a></li>
                                <li><a href="setting.html">settings</a></li>
                                <li><a href="login.html">logout</a></li>
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
                <h2 class="mc-breadcrumb-title">user favourites</h2>
                <ul class="mc-breadcrumb-list">
                    <li class="mc-breadcrumb-item"><a class="mc-breadcrumb-link" href="<c:url value="/ocsn/index.do"/>">home</a></li>
                    <li class="mc-breadcrumb-item"><a class="mc-breadcrumb-link" href="dashboard.html">dashboard</a>
                    </li>
                    <li class="mc-breadcrumb-item">favorite</li>
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
                        <li class="favorite-item">
                            <div class="favorite-media"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/01.jpg" alt="product">
                                <div class="favorite-badge"><label class="badge new">new</label><label
                                        class="badge featured">featured</label></div>
                                <div class="favorite-hints"><i class="material-icons">collections</i><span>5</span>
                                </div>
                            </div>
                            <div class="favorite-info">
                                <h3><a href="inventory-single.html">Mercedez benz super mclaren</a></h3>
                                <ul>
                                    <li><i class="material-icons">store</i><a href="profile.html">by autoland</a></li>
                                    <li><i class="material-icons">watch_later</i><span>posted 25m ago</span></li>
                                    <li><i class="material-icons">bookmark_add</i><span>individual</span></li>
                                    <li><i class="material-icons">fmd_good</i><span>delpara, narayanganj</span></li>
                                    <li><i class="material-icons">stars</i><a href="review.html">4.9/18 reviews</a></li>
                                </ul>
                                <h5>$18,759/- <small>negotiable</small></h5>
                            </div>
                            <div class="favorite-widget"><button type="button" title="Favorite"
                                    class="favorite active"><i class="material-icons">favorite</i></button><button
                                    type="button" title="Compare" class="compare"><i
                                        class="material-icons">compare</i></button><a href="inventory-single.html"
                                    title="Details"><i class="material-icons">visibility</i></a><a
                                    href="https://youtu.be/VWrJkx6O0L8" title="Video" class="venobox"
                                    data-autoplay="true" data-vbtype="video"><i class="material-icons">videocam</i></a>
                            </div><a href="#" class="favorite-close"><i class="material-icons">close</i></a>
                        </li>
                        <li class="favorite-item">
                            <div class="favorite-media"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/02.jpg" alt="product">
                                <div class="favorite-badge"><label class="badge used">used</label></div>
                                <div class="favorite-hints"><i class="material-icons">collections</i><span>5</span>
                                </div>
                            </div>
                            <div class="favorite-info">
                                <h3><a href="inventory-single.html">Mercedez benz super mclaren</a></h3>
                                <ul>
                                    <li><i class="material-icons">store</i><a href="profile.html">by autoland</a></li>
                                    <li><i class="material-icons">watch_later</i><span>posted 25m ago</span></li>
                                    <li><i class="material-icons">bookmark_add</i><span>dealership</span></li>
                                    <li><i class="material-icons">fmd_good</i><span>delpara, narayanganj</span></li>
                                    <li><i class="material-icons">stars</i><a href="review.html">4.9/18 reviews</a></li>
                                </ul>
                                <h5>$18,759/- <small>fixed</small></h5>
                            </div>
                            <div class="favorite-widget"><button type="button" title="Favorite"
                                    class="favorite active"><i class="material-icons">favorite</i></button><button
                                    type="button" title="Compare" class="compare"><i
                                        class="material-icons">compare</i></button><a href="inventory-single.html"
                                    title="Details"><i class="material-icons">visibility</i></a><a
                                    href="https://youtu.be/VWrJkx6O0L8" title="Video" class="venobox"
                                    data-autoplay="true" data-vbtype="video"><i class="material-icons">videocam</i></a>
                            </div><a href="#" class="favorite-close"><i class="material-icons">close</i></a>
                        </li>
                        <li class="favorite-item">
                            <div class="favorite-media"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/03.jpg" alt="product">
                                <div class="favorite-badge"><label class="badge new">new</label><label
                                        class="badge recom">recom</label></div>
                                <div class="favorite-hints"><i class="material-icons">collections</i><span>5</span>
                                </div>
                            </div>
                            <div class="favorite-info">
                                <h3><a href="inventory-single.html">Mercedez benz super mclaren</a></h3>
                                <ul>
                                    <li><i class="material-icons">store</i><a href="profile.html">by autoland</a></li>
                                    <li><i class="material-icons">watch_later</i><span>posted 25m ago</span></li>
                                    <li><i class="material-icons">bookmark_add</i><span>individual</span></li>
                                    <li><i class="material-icons">fmd_good</i><span>delpara, narayanganj</span></li>
                                    <li><i class="material-icons">stars</i><a href="review.html">4.9/18 reviews</a></li>
                                </ul>
                                <h5>$18,759/- <small>negotiable</small></h5>
                            </div>
                            <div class="favorite-widget"><button type="button" title="Favorite"
                                    class="favorite active"><i class="material-icons">favorite</i></button><button
                                    type="button" title="Compare" class="compare"><i
                                        class="material-icons">compare</i></button><a href="inventory-single.html"
                                    title="Details"><i class="material-icons">visibility</i></a><a
                                    href="https://youtu.be/VWrJkx6O0L8" title="Video" class="venobox"
                                    data-autoplay="true" data-vbtype="video"><i class="material-icons">videocam</i></a>
                            </div><a href="#" class="favorite-close"><i class="material-icons">close</i></a>
                        </li>
                        <li class="favorite-item">
                            <div class="favorite-media"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/04.jpg" alt="product">
                                <div class="favorite-badge"><label class="badge used">used</label><label
                                        class="badge featured">featured</label></div>
                                <div class="favorite-hints"><i class="material-icons">collections</i><span>5</span>
                                </div>
                            </div>
                            <div class="favorite-info">
                                <h3><a href="inventory-single.html">Mercedez benz super mclaren</a></h3>
                                <ul>
                                    <li><i class="material-icons">store</i><a href="profile.html">by autoland</a></li>
                                    <li><i class="material-icons">watch_later</i><span>posted 25m ago</span></li>
                                    <li><i class="material-icons">bookmark_add</i><span>dealership</span></li>
                                    <li><i class="material-icons">fmd_good</i><span>delpara, narayanganj</span></li>
                                    <li><i class="material-icons">stars</i><a href="review.html">4.9/18 reviews</a></li>
                                </ul>
                                <h5>$18,759/- <small>fixed</small></h5>
                            </div>
                            <div class="favorite-widget"><button type="button" title="Favorite"
                                    class="favorite active"><i class="material-icons">favorite</i></button><button
                                    type="button" title="Compare" class="compare"><i
                                        class="material-icons">compare</i></button><a href="inventory-single.html"
                                    title="Details"><i class="material-icons">visibility</i></a><a
                                    href="https://youtu.be/VWrJkx6O0L8" title="Video" class="venobox"
                                    data-autoplay="true" data-vbtype="video"><i class="material-icons">videocam</i></a>
                            </div><a href="#" class="favorite-close"><i class="material-icons">close</i></a>
                        </li>
                        <li class="favorite-item">
                            <div class="favorite-media"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/05.jpg" alt="product">
                                <div class="favorite-badge"><label class="badge new">new</label></div>
                                <div class="favorite-hints"><i class="material-icons">collections</i><span>5</span>
                                </div>
                            </div>
                            <div class="favorite-info">
                                <h3><a href="inventory-single.html">Mercedez benz super mclaren</a></h3>
                                <ul>
                                    <li><i class="material-icons">store</i><a href="profile.html">by autoland</a></li>
                                    <li><i class="material-icons">watch_later</i><span>posted 25m ago</span></li>
                                    <li><i class="material-icons">bookmark_add</i><span>individual</span></li>
                                    <li><i class="material-icons">fmd_good</i><span>delpara, narayanganj</span></li>
                                    <li><i class="material-icons">stars</i><a href="review.html">4.9/18 reviews</a></li>
                                </ul>
                                <h5>$18,759/- <small>negotiable</small></h5>
                            </div>
                            <div class="favorite-widget"><button type="button" title="Favorite"
                                    class="favorite active"><i class="material-icons">favorite</i></button><button
                                    type="button" title="Compare" class="compare"><i
                                        class="material-icons">compare</i></button><a href="inventory-single.html"
                                    title="Details"><i class="material-icons">visibility</i></a><a
                                    href="https://youtu.be/VWrJkx6O0L8" title="Video" class="venobox"
                                    data-autoplay="true" data-vbtype="video"><i class="material-icons">videocam</i></a>
                            </div><a href="#" class="favorite-close"><i class="material-icons">close</i></a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-12">
                    <div class="bottom-paginate">
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