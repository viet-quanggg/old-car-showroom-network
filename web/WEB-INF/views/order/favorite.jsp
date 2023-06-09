

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section class="section-gap-75">
    <div style="background: url(${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/banner/single/02.jpg) no-repeat center / cover;">
        <div class="user-banner">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 col-xl-8">
                        <div class="user-banner-profile">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="mc-breadcrumb">
    <div class="container">
        <div class="mc-breadcrumb-group">
            <h2 class="mc-breadcrumb-title">Wishlist</h2>
            <ul class="mc-breadcrumb-list">
                <li class="mc-breadcrumb-item"><a class="mc-breadcrumb-link" href="<c:url value="/ocsn/index.do"/>">home</a></li>
                <li class="mc-breadcrumb-item">Wishlist  </li>
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
                    <c:forEach items="${data.items}" var="item">
                        <li class="favorite-item">
                            <div class="favorite-media"><img style="min-height: 200px; max-height: 200px;" src="${pageContext.request.contextPath}${item.car.image.size() > 0 ? item.car.image.get(0).url : ''}" alt="product">
                                <div class="favorite-badge"><label class="badge new">new</label></div>
                                <div class="favorite-hints"><i class="material-icons">collections</i><span>${item.car.image.size()}</span>
                                </div>
                            </div>
                            <div class="favorite-info">
                                <h3><a href="inventory-single.html">${item.car.carName}</a></h3>
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