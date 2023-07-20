<%-- 
    Document   : index
    Created on : May 28, 2023, 12:05:04 AM
    Author     : _viet.quangg
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<body>
  
    <div class="mobile-menu"><a href="<c:url value="/login/register.do"/>"><i class="material-icons">person</i><span>account</span></a><a
            href="notify.html"><i class="material-icons">notifications</i><span>notify</span><sup>9</sup></a><a
            href="create-ads.html" title="sell vehicless"><i class="material-icons">storefront</i></a><a
            href="compare.html"><i class="material-icons">compare</i><span>compare</span><sup>3+</sup></a><a
            href="favorite.html"><i class="material-icons">favorite</i><span>favorite</span><sup>8</sup></a></div>
    <section class="section-gap-120 banner-slider slider-count">
        <div style="background: url(${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/banner/landing/ltr/01.jpg) no-repeat center / cover;">
            <div class="banner-overlay">
                <div class="container">
                    <div class="banner-content">
                        <h1>Looking for a reliable and convenient way to buy or sell a car?</h1>
                        <p>OCSN is an online automotive marketplace that helps users find great deals on new and used cars. 
                            They offer a wide range of features including price comparisons, dealer reviews, and vehicle history reports.</p>
                        <ul>
                            <li><i class="material-icons">email</i><span><small>contact
                                        email</small>daihocfpt@fpt.edu.vn</span></li>
                            <li><i class="material-icons">phone</i><span><small>contact number</small>028 7300 5588</span></li>
                        </ul><a href="<c:url value="/cars/carlist.do"/>" class="btn btn-inline"><i
                                class="material-icons">visibility</i><span>show listing</span></a>
                    </div>
                </div>
            </div>
        </div>
        <div style="background: url(${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/banner/landing/ltr/02.jpg) no-repeat center / cover;">
            <div class="banner-overlay">
                <div class="container">
                    <div class="banner-content">
                        <h1>best place to sell and buy a car</h1>
                        <p>Our platform brings together buyers and sellers from all over, 
                            creating a safe and easy-to-use marketplace for all your automotive needs. 
                            Whether you're searching for the perfect car to fit your lifestyle, 
                            or looking to sell your current vehicle quickly and easily, our user-friendly website has everything you need.</p>
                        <ul>
                            <li><i class="material-icons">email</i><span><small>contact
                                        email</small>daihocfpt@fpt.edu.vn</span></li>
                            <li><i class="material-icons">phone</i><span><small>contact number</small>028 7300 5588</span></li>
                        </ul><a href="<c:url value="/cars/carlist.do"/>" class="btn btn-inline"><i
                                class="material-icons">visibility</i><span>show listing</span></a>
                    </div>
                </div>
            </div>
        </div>
        <div style="background: url(${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/banner/landing/ltr/03.jpg) no-repeat center / cover;">
            <div class="banner-overlay">
                <div class="container">
                    <div class="banner-content">
                        <h1>Your one-stop-shop for all things automotive.</h1>
                        <p>With our intuitive search tools, you can easily find the exact make and model you're looking for, 
                            as well as filter your results by price range, 
                            brands, and other key factors.</p>
                        <ul>
                            <li><i class="material-icons">email</i><span><small>contact
                                        email</small>daihocfpt@fpt.edu.vn</span></li>
                            <li><i class="material-icons">phone</i><span><small>contact number</small>028 7300 5588</span></li>
                        </ul><a href="<c:url value="/cars/carlist.do"/>" class="btn btn-inline"><i
                                class="material-icons">visibility</i><span>show listing</span></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--    <section class="section-gap-95">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="section-head">
                            <div class="section-text">
                                <h2>find top categories</h2>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing</p>
                            </div><a href="<c:url value="/cars/carlist.do"/>" class="btn btn-inline"><i
                                    class="material-icons">travel_explore</i><span>browse all</span></a>
                        </div>
                    </div>
                </div>
                <div class="row row-cols-2 row-cols-sm-3 row-cols-md-4 row-cols-lg-5 row-cols-xl-5">
                    <div class="col"><a href="<c:url value="/cars/carlist.do"/>" class="category-card"><img
                                src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/category/minivan.png" alt="category"><span>minivan (24)</span></a></div>
                    <div class="col"><a href="<c:url value="/cars/carlist.do"/>" class="category-card"><img
                                src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/category/convertible.png" alt="category"><span>convertible (24)</span></a>
                    </div>
                    <div class="col"><a href="<c:url value="/cars/carlist.do"/>" class="category-card"><img
                                src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/category/coupe.png" alt="category"><span>coupe (24)</span></a></div>
                    <div class="col"><a href="<c:url value="/cars/carlist.do"/>" class="category-card"><img
                                src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/category/pickup.png" alt="category"><span>pickup (24)</span></a></div>
                    <div class="col"><a href="<c:url value="/cars/carlist.do"/>" class="category-card"><img
                                src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/category/sedan.png" alt="category"><span>sedan (24)</span></a></div>
                    <div class="col"><a href="<c:url value="/cars/carlist.do"/>" class="category-card"><img
                                src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/category/sports.png" alt="category"><span>sports (24)</span></a></div>
                    <div class="col"><a href="<c:url value="/cars/carlist.do"/>" class="category-card"><img
                                src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/category/suv.png" alt="category"><span>suv/muv (24)</span></a></div>
                    <div class="col"><a href="<c:url value="/cars/carlist.do"/>" class="category-card"><img
                                src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/category/wagon.png" alt="category"><span>wagon (24)</span></a></div>
                    <div class="col"><a href="<c:url value="/cars/carlist.do"/>" class="category-card"><img
                                src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/category/jeep.png" alt="category"><span>jeep (24)</span></a></div>
                    <div class="col"><a href="<c:url value="/cars/carlist.do"/>" class="category-card"><img
                                src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/category/Hatchback.html" alt="category"><span>Hatchback (24)</span></a></div>
                </div>
            </div>
        </section>-->
    <section class="section-gap-95">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="section-head">
                        <div class="section-text">
                            <h2>recent add vehicles</h2>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing</p>
                        </div><a href="<c:url value="/cars/carlist.do"/>" class="btn btn-inline"><i
                                class="material-icons">travel_explore</i><span>browse all</span></a>
                    </div>
                </div>
            </div>
            <jsp:useBean class="DB.CarFacade" id="carDAO" />                    
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-3 row-cols-xl-4">
                <c:forEach begin="0" end="7" items="${carDAO.activeCar}" var="item">
                    <div class="col">
                        <div class="product-grid-card">
                            <div class="product-grid-image"><img style="max-height: 200px; min-height: 200px"src="${pageContext.request.contextPath}${item.image.size() == 0 ? '' : item.image.get(0).url}" alt="feature">
                                <div class="product-grid-badge"><span class="badge new">new</span></div>
                                <!--                                <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
                                                                </div>-->
                                <!--                                <div class="product-grid-overlay">
                                                                    <div class="product-grid-vendor"><i class="material-icons">person</i><a
                                                                            href="profile.html">by FPTU</a></div>
                                                                    <div class="product-grid-rating"><i class="material-icons">star</i><a
                                                                            href="review.html">28 review</a></div>
                                                                </div>-->
                            </div>
                            <div class="product-grid-content">
                                <div class="product-grid-group">
                                    <div class="product-grid-price"><span>${item.formatPrice}/-</span><small>fixed</small></div>
                                    <div class="product-grid-action"><button type="button" title="Compare"
                                                                             class="compare material-icons">compare</button><button type="button"
                                                                             title="Favorite" class="favorite material-icons">favorite</button></div>
                                </div>
                                <div class="product-grid-meta">
                                    <h4><a href="inventory-single.html">${item.carName}</a></h4>
                                    <ul>
                                        <li><span>${item.car_seat}</span></li>
                                        <li>${item.createDate}</li>
                                    </ul>
                                </div>
                                <ul class="product-grid-extra">

                                    <li><i class="material-icons">settings</i><span>${item.odo} km</span></li>
                                    <li><i class="material-icons">local_gas_station</i><span>${item.engine}</span></li>
                                </ul>
                                <div class="product-grid-btn"><a href="<c:url value="/cars/carsingle.do?carId=${item.carID}"/>"><i
                                            class="material-icons">visibility</i><span>details</span></a>
                                    <a href="${pageContext.request.contextPath}/addToWish?id=${item.carID}" >
                                        <i class="material-icons">favorite</i><span>favorite</span>
                                    </a>
                                    <a href="${pageContext.request.contextPath}/addToCompare?id=${item.carID}" >
                                        <i class="material-icons">compare</i><span>compare</span>
                                    </a> 
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
<!--</section>
<section class="section-gap-120 feature-part">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="section-head">
                    <div class="section-text">
                        <h2>our featured listing</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing</p>
                    </div><a href="<c:url value="/cars/carlist.do"/>" class="btn btn-inline"><i
                            class="material-icons">travel_explore</i><span>browse all</span></a>
                </div>
            </div>
        </div>

        <div class="row product-feature-slider slider-arrow">
<c:forEach begin="1" end="4" items="${carDAO.car}" var="item">
    <div class="col">
        <div class="product-feature-card">
            <div class="product-feature-image"><img style="max-height:200px; min-height: 200px" src="${pageContext.request.contextPath}${item.image.size() == 0 ? '' : item.image.get(0).url}" alt="product"><a
                    href="<c:url value="/cars/carsingle.do?carId=${item.carID}"/>" class="product-feature-btn badge-hover"><i
                        class="material-icons">add</i><span class="badge arrow-right">more
                        details</span></a>
                <div class="product-feature-badge"><span class="badge new">new</span><span
                        class="badge featured">featured</span></div>
            </div>
            <div class="product-feature-meta">
                <h3><a href="inventory-single.html">${item.carName}</a></h3>
                <h4>${item.formatPrice}/- <span>negotiable</span></h4>
            </div>
        </div>
    </div>
</c:forEach>                

</div>
</div>
</section>
<section class="section-gap-95">
<div class="container">
<div class="row">
<div class="col-xl-12">
    <div class="section-head">
        <div class="section-text">
            <h2>Variety of car models listed</h2>
            <p>Dreams here</p>
        </div><a href="<c:url value="/cars/carlist.do"/>" class="btn btn-inline"><i
                class="material-icons">travel_explore</i><span>browse all</span></a>
    </div>
</div>
</div>
<div class="row">
<div class="col-xl-12">
    <div class="nav nav-pills browse-nav"><button type="button" data-bs-toggle="pill"
                                                  data-bs-target="#vendor" class="nav-link active"><i
                class="material-icons">store</i><span>top vendor</span></button><button type="button"
                                                                                data-bs-toggle="pill" data-bs-target="#ratings" class="nav-link"><i
                class="material-icons">star</i><span>top ratings</span></button><button type="button"
                                                                                data-bs-toggle="pill" data-bs-target="#engaged" class="nav-link"><i
                class="material-icons">perm_phone_msg</i><span>top engaged</span></button><button
            type="button" data-bs-toggle="pill" data-bs-target="#clicks" class="nav-link"><i
                class="material-icons">mouse</i><span>top clicks</span></button><button type="button"
                                                                                data-bs-toggle="pill" data-bs-target="#views" class="nav-link"><i
                class="material-icons">visibility</i><span>top views</span></button></div>
</div>
</div>
<div class="tab-pane fade show active" id="vendor">
<div class="row row-cols-xl-4">
<c:forEach begin="1" end="8" items="${carDAO.car}" var="item">
    <div class="col">
        <div class="product-grid-card">
            <div class="product-grid-image"><img style="max-height:200px; min-height: 200px" src="${pageContext.request.contextPath}${item.image.size() == 0 ? '' : item.image.get(0).url}" alt="feature">
                <div class="product-grid-badge"><span class="badge new">new</span></div>
                                                <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
                                                </div>
                <div class="product-grid-overlay">
                    <div class="product-grid-vendor"><i class="material-icons">person</i><a
                            href="profile.html">by autoland</a></div>
                    <div class="product-grid-rating"><i class="material-icons">star</i><a
                            href="review.html">28 review</a></div>
                </div>
            </div>
            <div class="product-grid-content">
                <div class="product-grid-group">
                    <div class="product-grid-price"><span>${item.formatPrice}/-</span><small>fixed</small></div>
                    <div class="product-grid-action"><button type="button" title="Compare"
                                                             class="compare material-icons">compare</button><button type="button"
                                                             title="Favorite" class="favorite material-icons">favorite</button></div>
                </div>
                <div class="product-grid-meta">
                    <h4><a href="<c:url value="/cars/carsingle.do?carId=${item.carID}"/>">${item.carName}</a></h4>
                    <ul>
                        <li><span>${item.car_seat}</span></li>
                        <li>${item.createDate}</li>
                    </ul>
                </div>
                <ul class="product-grid-extra">
                    
                    <li><i class="material-icons">settings</i><span>${item.odo} km</span></li>
                    <li><i class="material-icons">local_gas_station</i><span>${item.engine}</span></li>
                </ul>
                <div class="product-grid-btn"><a href="<c:url value="/cars/carsingle.do?carId=${item.carID}"/>"><i
                            class="material-icons">visibility</i><span>details</span></a>
                    <a href="${pageContext.request.contextPath}/addToWish?id=${item.carID}" >
                        <i class="material-icons">favorite</i><span>favorite</span>
                    </a>
                    <a href="${pageContext.request.contextPath}/addToCompare?id=${item.carID}" >
                        <i class="material-icons">compare</i><span>compare</span>
                    </a>  
                </div>
            </div>
        </div>
    </div>
</c:forEach>             
</div>
</div>
<div class="tab-pane fade" id="ratings">
<div class="row row-cols-xl-4">
<div class="col">
    <div class="product-grid-card">
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/20.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge new">new</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>fixed</small></div>
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
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/19.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge used">used</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small>
                </div>
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
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/18.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge new">new</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small>
                </div>
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
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/17.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge new">new</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small>
                </div>
                <div class="product-grid-action"><button type="button" title="Compare"
                                                         class="compare material-icons">compare</button><button type="button"
                                                         title="Favorite" class="favorite material-icons">favorite</button></div>
            </div>
            <div class="product-grid-meta">
                <h4><a href="inventory-single.html">Mercedez benz super mclaren</a></h4>
                <ul>
                    <li><span>${item.car_seat}</span></li>
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
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/16.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge used">used</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small>
                </div>
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
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/15.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge new">new</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small>
                </div>
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
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/14.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge new">new</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small>
                </div>
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
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/13.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge used">used</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small>
                </div>
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
</div>
<div class="tab-pane fade" id="engaged">
<div class="row row-cols-xl-4">
<div class="col">
    <div class="product-grid-card">
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/15.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge new">new</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>fixed</small></div>
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
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/16.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge used">used</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small>
                </div>
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
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/18.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge new">new</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small>
                </div>
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
            <div class="product-grid-btn"><a href="iny-single.html"><i
                        class="material-icons">visibility</i><span>details</span></a><a
                    href="https://youtu.be/VWrJkx6O0L8" class="venobox" data-autoplay="true"
                    data-vbtype="video"><i class="material-icons">videocam</i><span>video</span></a>
            </div>
        </div>
    </div>
</div>
<div class="col">
    <div class="product-grid-card">
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/20.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge new">new</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small>
                </div>
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
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/17.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge used">used</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small>
                </div>
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
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/10.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge new">new</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small>
                </div>
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
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/19.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge new">new</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small>
                </div>
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
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/20.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge used">used</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small>
                </div>
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
</div>
<div class="tab-pane fade" id="clicks">
<div class="row row-cols-xl-4">
<div class="col">
    <div class="product-grid-card">
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/13.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge new">new</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>fixed</small></div>
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
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/20.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge used">used</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small>
                </div>
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
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/12.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge new">new</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small>
                </div>
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
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/13.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge new">new</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small>
                </div>
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
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/15.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge used">used</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small>
                </div>
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
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/14.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge new">new</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small>
                </div>
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
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/16.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge new">new</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small>
                </div>
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
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/19.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge used">used</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small>
                </div>
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
</div>
<div class="tab-pane fade" id="views">
<div class="row row-cols-xl-4">
<div class="col">
    <div class="product-grid-card">
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/11.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge new">new</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>fixed</small></div>
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
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/12.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge used">used</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small>
                </div>
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
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/13.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge new">new</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small>
                </div>
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
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/14.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge new">new</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small>
                </div>
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
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/15.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge used">used</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small>
                </div>
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
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/16.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge new">new</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small>
                </div>
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
        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/17.jpg" alt="feature">
            <div class="product-grid-badge"><span class="badge new">new</span></div>
            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
            </div>
            <div class="product-grid-overlay">
                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                        href="profile.html">by autoland</a></div>
                <div class="product-grid-rating"><i class="material-icons">star</i><a
                        href="review.html">28 review</a></div>
            </div>
        </div>
        <div class="product-grid-content">
            <div class="product-grid-group">
                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small>
                </div>
                <div class="product-grid-action"><button type="button" title="Compare"
                                                         class="compare material-icons">compare</button><button type="button"
                                                         title="Favorite" class="favorite material-icons">favorite</button></div>
            </div>
            <div class="product-grid-meta">
                <h4><a href="inventory-single.html">Mercedez benz super mclaren</a></h4>
                <ul>
                    <li>delpara, narayanganj</li>
                    <li>23h ago!</li>
                </ul>-->
<!--                            </div>
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
                        <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/18.jpg" alt="feature">
                            <div class="product-grid-badge"><span class="badge used">used</span></div>
                            <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
                            </div>
                            <div class="product-grid-overlay">
                                <div class="product-grid-vendor"><i class="material-icons">person</i><a
                                        href="profile.html">by autoland</a></div>
                                <div class="product-grid-rating"><i class="material-icons">star</i><a
                                        href="review.html">28 review</a></div>
                            </div>
                        </div>
                        <div class="product-grid-content">
                            <div class="product-grid-group">
                                <div class="product-grid-price"><span>$18,759/-</span><small>negotiable</small>
                                </div>
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
        </div>
    </div>
</section>-->
<c:if test="${blist != null && !blist.isEmpty()}">
    <section class="section-gap-95">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="section-head">
                        <div class="section-text">
                            <h2>browse by brands</h2>
                            <!--                        <p>Find your want-to-buy car based on brands</p>-->
                        </div><a href="<c:url value="/cars/carlist.do"/>" class="btn btn-inline"><i
                                class="material-icons">travel_explore</i><span>browse all</span></a>
                    </div>
                </div>
            </div>
            <div class="row row-cols-2 row-cols-sm-3 row-cols-md-4 row-cols-lg-5 row-cols-xl-5">
                <c:forEach items="${blist}" var="branditem">
                    <div class="col"><a class="brand-card" href="<c:url value="/cars/carlist.do?bid=${branditem.id}"/>">
                            <img src="https://www.carlogos.org/car-logos/${branditem.name.toLowerCase()}-logo.png"  onerror="this.src='https://www.supercars.net/blog/wp-content/uploads/2019/12/${branditem.name}-Logo.png'" alt="${branditem.name}">
                            <h6>${branditem.name}</h6>

                            <h6>(${branditem.count}) ${branditem.name}</h6>

                        </a></div>
                    </c:forEach>
        <!--            <div class="col"><a class="brand-card" href="<c:url value="/cars/carlist.do"/>"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/brand/01.png"
                                                                                                         alt="brand">
                            <h6>tesla</h6>
                            <p>(24) vehicles</p>
                        </a></div>
                    <div class="col"><a class="brand-card" href="<c:url value="/cars/carlist.do"/>"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/brand/02.png"
                                                                                                         alt="brand">
                            <h6>nissan</h6>
                            <p>(24) vehicles</p>
                        </a></div>
                    <div class="col"><a class="brand-card" href="<c:url value="/cars/carlist.do"/>"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/brand/03.png"
                                                                                                         alt="brand">
                            <h6>mercedes</h6>
                            <p>(24) vehicles</p>
                        </a></div>
                    <div class="col"><a class="brand-card" href="<c:url value="/cars/carlist.do"/>"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/brand/04.png"
                                                                                                         alt="brand">
                            <h6>toyota</h6>
                            <p>(24) vehicles</p>
                        </a></div>
                    <div class="col"><a class="brand-card" href="<c:url value="/cars/carlist.do"/>"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/brand/05.png"
                                                                                                         alt="brand">
                            <h6>audi</h6>
                            <p>(24) vehicles</p>
                        </a></div>
                    <div class="col"><a class="brand-card" href="<c:url value="/cars/carlist.do"/>"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/brand/06.png"
                                                                                                         alt="brand">
                            <h6>lamborghini</h6>
                            <p>(24) vehicles</p>
                        </a></div>
                    <div class="col"><a class="brand-card" href="<c:url value="/cars/carlist.do"/>"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/brand/07.png"
                                                                                                         alt="brand">
                            <h6>bugatti</h6>
                            <p>(24) vehicles</p>
                        </a></div>
                    <div class="col"><a class="brand-card" href="<c:url value="/cars/carlist.do"/>"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/brand/08.png"
                                                                                                         alt="brand">
                            <h6>ferrari</h6>
                            <p>(24) vehicles</p>
                        </a></div>
                    <div class="col"><a class="brand-card" href="<c:url value="/cars/carlist.do"/>"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/brand/09.png"
                                                                                                         alt="brand">
                            <h6>bmw</h6>
                            <p>(24) vehicles</p>
                        </a></div>
                    <div class="col"><a class="brand-card" href="<c:url value="/cars/carlist.do"/>"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/brand/10.png"
                                                                                                         alt="brand">
                            <h6>porsche</h6>
                            <p>(24) vehicles</p>
                        </a></div>-->
            </div>
        </div>
    </section>
</c:if>
<section class="section-gap-95">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="section-head">
                    <div class="section-text">
                        <h2>find in nearest cities</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing</p>
                    </div><a href="<c:url value="/cars/carlist.do"/>" class="btn btn-inline"><i
                            class="material-icons">travel_explore</i><span>browse all</span></a>
                </div>
            </div>
        </div>
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-4 city-card-group">
            <div class="col">
                <div class="city-card"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/city/newyork.jpg" alt="city">
                    <div class="city-overlay"><a href="<c:url value="/cars/carlist.do"/>" class="material-icons">add</a>
                        <h3><a href="<c:url value="/cars/carlist.do"/>">new york</a></h3>
                        <p>35 vehicles</p>
                    </div>
                </div>
            </div>
            <!--                <div class="col">
                                <div class="city-card"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/city/losangeles.jpg" alt="city">
                                    <div class="city-overlay"><a href="<c:url value="/cars/carlist.do"/>" class="material-icons">add</a>
                                        <h3><a href="<c:url value="/cars/carlist.do"/>">los angeles</a></h3>
                                        <p>76 vehicles</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="city-card"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/city/chicago.jpg" alt="city">
                                    <div class="city-overlay"><a href="<c:url value="/cars/carlist.do"/>" class="material-icons">add</a>
                                        <h3><a href="<c:url value="/cars/carlist.do"/>">chicago</a></h3>
                                        <p>28 vehicles</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="city-card"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/city/houston.jpg" alt="city">
                                    <div class="city-overlay"><a href="<c:url value="/cars/carlist.do"/>" class="material-icons">add</a>
                                        <h3><a href="<c:url value="/cars/carlist.do"/>">houston</a></h3>
                                        <p>14 vehicles</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="city-card"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/city/dallas.jpg" alt="city">
                                    <div class="city-overlay"><a href="<c:url value="/cars/carlist.do"/>" class="material-icons">add</a>
                                        <h3><a href="<c:url value="/cars/carlist.do"/>">dallas</a></h3>
                                        <p>42 vehicles</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="city-card"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/city/columbus.jpg" alt="city">
                                    <div class="city-overlay"><a href="<c:url value="/cars/carlist.do"/>" class="material-icons">add</a>
                                        <h3><a href="<c:url value="/cars/carlist.do"/>">columbus</a></h3>
                                        <p>73 vehicles</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="city-card"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/city/phoenix.jpg" alt="city">
                                    <div class="city-overlay"><a href="<c:url value="/cars/carlist.do"/>" class="material-icons">add</a>
                                        <h3><a href="<c:url value="/cars/carlist.do"/>">phoenix</a></h3>
                                        <p>59 vehicles</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="city-card"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/city/sandiego.jpg" alt="city">
                                    <div class="city-overlay"><a href="<c:url value="/cars/carlist.do"/>" class="material-icons">add</a>
                                        <h3><a href="<c:url value="/cars/carlist.do"/>">sandiego</a></h3>
                                        <p>84 vehicles</p>
                                    </div>
                                </div>
                            </div>-->
        </div>
    </div>
</section>
<section class="section-gap-120">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="section-head">
                    <div class="section-text">
                        <h2>how we best for you</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing</p>
                    </div><a href="<c:url value="/ocsn/aboutus.do"/>" class="btn btn-inline"><i
                            class="material-icons">details</i><span>more details</span></a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-xl-6">
                <div class="about-media"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/bg/video.jpg" alt="video">
                    <div class="about-overlay"><a href="https://youtu.be/TboWOSW7qCI" class="venobox material-icons"
                                                  data-autoplay="true" data-vbtype="video">play_arrow</a></div>
                </div>
            </div>
            <div class="col-lg-6 col-xl-6">
                <div class="about-content">
                    <h3>Ghurnek has been standing on the trust of customers for the last 10 years</h3>
                    <p>Welcome to our website, the ultimate destination for all your car buying and selling needs! 
                        Whether you're looking to purchase a new vehicle or sell your current one, we've got you covered. 
                        Our platform connects buyers and sellers from all over, making it easy to find the perfect ride at a competitive price. With our user-friendly search tools, 
                        secure payment system, and helpful customer support team, you can enjoy a stress-free and convenient car buying or selling experience. 
                        So why wait? Sign up today and join the thousands of satisfied customers who have already turned to us for their automotive needs!</p>
                </div>
            </div>
        </div>
        <div class="row row-cols-1 row-cols-sm-2 row-cols-xl-4">
            <div class="col">
                <div class="funfactor-card"><i class="material-icons">drive_eta</i>
                    <h4><span class="funfactor-text">stock vehicles</span><span class="funfactor-data">2355</span>
                    </h4>
                </div>
            </div>
            <div class="col">
                <div class="funfactor-card"><i class="material-icons">flag</i>
                    <h4><span class="funfactor-text">sold vehicles</span><span class="funfactor-data">7895</span>
                    </h4>
                </div>
            </div>
            <div class="col">
                <div class="funfactor-card"><i class="material-icons">people</i>
                    <h4><span class="funfactor-text">happy clients</span><span class="funfactor-data">6567</span>
                    </h4>
                </div>
            </div>
            <div class="col">
                <div class="funfactor-card"><i class="material-icons">forum</i>
                    <h4><span class="funfactor-text">total reviews</span><span class="funfactor-data">5467</span>
                    </h4>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="section-gap-120">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="section-head">
                    <div class="section-text">
                        <h2>our ads pricing plans</h2>
                        <p>We provided to you 3 most suitable plans for each user's need</p>
                    </div><a href="<c:url value="/order/pricingplan.do"/>" class="btn btn-inline"><i
                            class="material-icons">details</i><span>more details</span></a>
                </div>
            </div>
        </div>
        <div class="row price-slider slider-arrow">
            <c:forEach items="${plan}" var="plan">           
                <div class="col">
                    <div class="price-card"><i class="price-icon material-icons">task_alt</i>
                        <h3 class="price-title">${plan.planName}</h3>
                        <p class="price-subtitle">Choose what most suitable for your need</p>
                        <ul class="price-list">
                            <li class="price-item"><span>Plan Period: ${plan.planTime} months</span></li>
                            <li class="price-item"><del>Third Parties Ads</del></li>
                            <li class="price-item"><del>Surcharge</del></li>
                            <li class="price-item"><span>Post Limit: ${(plan.planLimit != 0) ? plan.planLimit : "infinite"} Posts</span></li>
                            <li class="price-item"><span>Full Support From OCSN</span></li>
                        </ul>
                        <h4 class="price-amount">$${plan.planPrice}</h4>
                        <c:if test="${User == null}">
                            <h5 class="price-mode">per advertise post</h5><a class="price-action" href="<c:url value="/login/register.do"/>">
                                register</a>
                            </c:if>
                            <c:if test="${User != null}"> 
                            <h5 class="price-mode">per advertise post</h5><a class="price-action"href="<c:url value="/plan/payment.do?planId=${plan.planId}"/>" >get
                                subscribe</a>

                        </c:if> 
                        </div>
                    </div>
                </c:forEach>         
                <!--                <div class="col">
                                    <div class="price-card active"><i class="price-icon material-icons">task_alt</i>
                                        <h3 class="price-title">business plan</h3>
                                        <p class="price-subtitle">Perfect for growing ads</p>
                                        <ul class="price-list">
                                            <li class="price-item"><span>first pricing feature type</span></li>
                                            <li class="price-item"><del>second pricing feature type</del></li>
                                            <li class="price-item"><span>third pricing feature type</span></li>
                                            <li class="price-item"><span>four pricing feature type</span></li>
                                            <li class="price-item"><span>five pricing feature type</span></li>
                                        </ul>
                                        <h4 class="price-amount">$49/-</h4>
                                        <h5 class="price-mode">per advertise post</h5><a class="price-action" href="<c:url value="/login/register.do"/>">get
                                            register</a><small class="price-demand">most popular</small>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="price-card"><i class="price-icon material-icons">task_alt</i>
                                        <h3 class="price-title">premium plan</h3>
                                        <p class="price-subtitle">Perfect for quick sales</p>
                                        <ul class="price-list">
                                            <li class="price-item"><span>first pricing feature type</span></li>
                                            <li class="price-item"><span>second pricing feature type</span></li>
                                            <li class="price-item"><span>third pricing feature type</span></li>
                                            <li class="price-item"><span>four pricing feature type</span></li>
                                            <li class="price-item"><span>five pricing feature type</span></li>
                                        </ul>
                                        <h4 class="price-amount">$68/-</h4>
                                        <h5 class="price-mode">per advertise post</h5><a class="price-action" href="r<c:url value="/login/register.do"/>">get
                                            register</a>
                                    </div>
                                </div>-->
            </div>
        </div>
</section>
<section class="section-gap-120 review-part">

</section>
<section class="section-gap-120">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="section-head">
                    <div class="section-text">
                        <h2>top search keywords</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing</p>
                    </div><a href="<c:url value="/cars/carlist.do"/>" class="btn btn-inline"><i
                            class="material-icons">travel_explore</i><span>browse all</span></a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-12">
                <ul class="keyword-list">
                    <li><a href="<c:url value="/cars/carlist.do"/>">tesla model 3</a></li>
                    <li><a href="<c:url value="/cars/carlist.do"/>">lamborghini</a></li>
                    <li><a href="<c:url value="/cars/carlist.do"/>">mercedes-benz</a></li>
                    <li><a href="<c:url value="/cars/carlist.do"/>">nissan qashqai</a></li>
                    <li><a href="<c:url value="/cars/carlist.do"/>">bmw 3 series</a></li>
                    <li><a href="<c:url value="/cars/carlist.do"/>">toyota supra</a></li>
                    <li><a href="<c:url value="/cars/carlist.do"/>">ferrari 488</a></li>
                    <li><a href="<c:url value="/cars/carlist.do"/>">bugatti chiron</a></li>
                    <li><a href="<c:url value="/cars/carlist.do"/>">audi rs7</a></li>
                    <li><a href="<c:url value="/cars/carlist.do"/>">porsche taycan</a></li>
                    <li><a href="<c:url value="/cars/carlist.do"/>">toyota chr</a></li>
                    <li><a href="<c:url value="/cars/carlist.do"/>">tesla roadster</a></li>
                    <li><a href="<c:url value="/cars/carlist.do"/>">nissan</a></li>
                    <li><a href="<c:url value="/cars/carlist.do"/>">minibus toyota</a></li>
                    <li><a href="<c:url value="/cars/carlist.do"/>">tata tiago</a></li>
                    <li><a href="<c:url value="/cars/carlist.do"/>">lamborghini aventador</a></li>
                    <li><a href="<c:url value="/cars/carlist.do"/>">ferrari 812 superfast</a></li>
                </ul>
            </div>
        </div>
    </div>
</section>
<section class="section-gap-95">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="section-head">
                    <div class="section-text">
                        <h2>our recent articles</h2>
                        <p>Our recent blogs</p>
                    </div><a href="<c:url value="/blog/bloggrid.do"/>" class="btn btn-inline"><i
                            class="material-icons">travel_explore</i><span>browse all</span></a>
                </div>
            </div>
        </div>
        <div class="row blog-slider slider-arrow">
            <c:forEach var="blog" begin="0" end="3" items="${blog}">
                <div class="col">
                    <div class="blog-grid-card">
                        <div class="blog-grid-media"><img src="${blog.blogImage}" alt="blog">
                            <ul class="blog-grid-widget">
                                <li><i class="material-icons">forum</i><span>3</span></li>
                                <li><i class="material-icons">send</i><span>2</span></li>
                            </ul>
                        </div>
                        <div class="blog-grid-content">
                            <ul class="blog-grid-meta">
                                <li><i class="material-icons">person</i><span>post by <a
                                            href="blog-single.html">${blog.userName}</a></span></li>
                                <li><i class="material-icons">event</i><span>${blog.blogDate}</span></li>
                            </ul>
                            <h3 class="blog-grid-name"><a href="<c:url value="/blog/blogsingle.do?bid=${blog.blogId}"/>">${blog.blogTitle}</a></h3>
                            <p class="blog-grid-descrip">${blog.blogDetail}...<a href="<c:url value="/blog/blogsingle.do?bid=${blog.blogId}"/>">read more</a>
                            </p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    </div>
</section>

</body>