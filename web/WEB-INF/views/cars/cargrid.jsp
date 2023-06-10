<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>

<section class="section-gap-100">
    <div style="background: url(${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/banner/single/01.jpg) no-repeat center / cover;">
        <div class="single-banner">
            <div class="container">
                <h2>Inventory Grid View</h2>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="<c:url value="/ocsn/index.do"/>">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">inventory-grid</li>
                </ol>
            </div>
        </div>
    </div>
</section>
<section class="section-gap-100">
    <div class="container">
        <div class="row content-reverse">
            <jsp:include page="common/filter.jsp" />

            <div class="col-lg-8 col-xl-9">
                <jsp:include page="common/subnav.jsp" />

                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-2 row-cols-xl-3">
                    <c:if test="${data.isEmpty()}">
                        <h2 class="text-danger" style="text-align: center">Not Found !</h2>
                    </c:if>

                    <c:if test="${!data.isEmpty()}">
                        <c:forEach items="${data}" var="item">
                            <div class="col">
                                <div class="product-grid-card">
                                    <div class="product-grid-image"><img style='max-height: 240px; min-height: 240px;max-width: 320px; min-width: 320px' src="${pageContext.request.contextPath}${item.image.size() != 0 ? item.image.get(0).url : ''}" alt="product">
                                        <div class="product-grid-badge"><span class="badge new" style="color: ${item.carCondition ? 'red' : 'green'}">${item.carCondition ? 'Sold' : 'Available'}</span></div>
                                        <div class="product-grid-hints"><i
                                                class="material-icons">collections</i><span>${item.image.size()}</span></div>

                                    </div>
                                    <div class="product-grid-content">
                                        <div class="product-grid-group">
                                            <div class="product-grid-price"><span>${item.formatPrice} </span>
                                            </div>
                                            <div class="product-grid-action">
                                                <button type="button" title="Favorite" class="favorite material-icons">favorite</button>
                                            </div>
                                        </div>
                                        <div class="product-grid-meta">
                                            <h4><a href="inventory-single.html">${item.carName}</a></h4>
                                            <ul>
                                                <li>Brand: ${item.brand.name}</li>
                                                <li>Color: ${item.color.color}</li>
                                                <li>Year: ${item.carYear}</li>

                                            </ul>
                                        </div>
                                        <ul class="product-grid-extra">
                                            <li><i class="material-icons">construction</i><span>manual</span></li>
                                            <li><i class="material-icons">settings</i><span>2000 km</span></li>
                                            <li><i class="material-icons">local_gas_station</i><span>diesel</span></li>
                                        </ul>
                                        <div class="product-grid-btn">
                                            <a href="<c:url value="/cars/carsingle.do?carId=${item.carID}"/>">
                                                <i class="material-icons">visibility</i><span>details</span></a>
                                            <a href="<c:url value="/addToWish?id=${item.carID}" />" >
                                                <i class="material-icons">favorite</i><span>favorite</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </c:if>

                </div>
                <c:if test="${!data.isEmpty()}">
                    <jsp:include page="common/pagination.jsp" />

                </c:if>
            </div>
        </div>
    </div>
</section>
