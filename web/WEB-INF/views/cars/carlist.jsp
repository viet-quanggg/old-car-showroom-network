<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="icon" href="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/favicon.png">
<link rel="stylesheet" href="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/fonts/typography/jost.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/fonts/icofont/icofont.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/fonts/material/icon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/vendor/venobox/venobox.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/vendor/slickslider/slick.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/vendor/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/css/ltr.min.css"/>
<section class="section-gap-100">
    <div style="background: url(${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/banner/single/01.jpg) no-repeat center / cover;">
        <div class="single-banner">
            <div class="container">
                <h2>Inventory List View</h2>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="<c:url value="/ocsn/index.do"/>">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">inventory-list</li>
                </ol>
            </div>
        </div>
    </div>
</section>

<style>
    .hidden-text {
        white-space: unset!important;
        overflow: hidden;
        text-overflow: ellipsis;
        line-height: 25px;
        -webkit-line-clamp: 3;
        height: 75px;
        display: -webkit-box;
        -webkit-box-orient: vertical;
    }
</style>

<section class="section-gap-100">
    <div class="container">
        <div class="row content-reverse">
            <div class="col-lg-4 col-xl-3">
                <div class="product-widget">
                    <h6 class="product-widget-title">Filter by Price</h6>
                    <form>
                        <div class="product-widget-group"><input type="text" placeholder="Min - 00"><input
                                type="text" placeholder="Max - 100K"></div><button class="product-widget-btn"><i
                                class="material-icons">search</i><span>search</span></button>
                    </form>
                </div>

                <div class="product-widget">
                    <h6 class="product-widget-title">Filter by colour</h6>
                    <form>
                        <ul class="product-widget-list">
                            <li>
                                <div class="product-widget-content"><input type="checkbox" id="clr1"><label
                                        for="clr1" class="product-widget-color green">green</label></div><span
                                    class="product-widget-number">(13)</span>
                            </li>
                            <li>
                                <div class="product-widget-content"><input type="checkbox" id="clr2"><label
                                        for="clr2" class="product-widget-color yellow">yellow</label></div><span
                                    class="product-widget-number">(65)</span>
                            </li>
                            <li>
                                <div class="product-widget-content"><input type="checkbox" id="clr3"><label
                                        for="clr3" class="product-widget-color orange">orange</label></div><span
                                    class="product-widget-number">(34)</span>
                            </li>
                            <li>
                                <div class="product-widget-content"><input type="checkbox" id="clr4"><label
                                        for="clr4" class="product-widget-color red">red</label></div><span
                                    class="product-widget-number">(67)</span>
                            </li>
                            <li>
                                <div class="product-widget-content"><input type="checkbox" id="clr5"><label
                                        for="clr5" class="product-widget-color black">black</label></div><span
                                    class="product-widget-number">(45)</span>
                            </li>
                            <li>
                                <div class="product-widget-content"><input type="checkbox" id="clr6"><label
                                        for="clr6" class="product-widget-color purple">purple</label></div><span
                                    class="product-widget-number">(52)</span>
                            </li>
                        </ul><button class="product-widget-btn"><i class="material-icons">delete</i><span>clear
                                filter</span></button>
                    </form>
                </div>

                <div class="product-widget">
                    <h6 class="product-widget-title">Filter by Brand</h6>
                    <form><input class="product-widget-search" type="text" placeholder="Search">
                        <ul class="product-widget-list product-widget-scroll">
                            <li>
                                <div class="product-widget-content"><input type="checkbox" id="brand1"><label
                                        for="brand1">tesla</label></div><span
                                    class="product-widget-number">(13)</span>
                            </li>
                            <li>
                                <div class="product-widget-content"><input type="checkbox" id="brand2"><label
                                        for="brand2">nissan</label></div><span
                                    class="product-widget-number">(28)</span>
                            </li>
                            <li>
                                <div class="product-widget-content"><input type="checkbox" id="brand3"><label
                                        for="brand3">mercedez</label></div><span
                                    class="product-widget-number">(35)</span>
                            </li>
                            <li>
                                <div class="product-widget-content"><input type="checkbox" id="brand4"><label
                                        for="brand4">audi</label></div><span
                                    class="product-widget-number">(35)</span>
                            </li>
                            <li>
                                <div class="product-widget-content"><input type="checkbox" id="brand5"><label
                                        for="brand5">toyota</label></div><span
                                    class="product-widget-number">(47)</span>
                            </li>
                            <li>
                                <div class="product-widget-content"><input type="checkbox" id="brand6"><label
                                        for="brand6">lamborghini</label></div><span
                                    class="product-widget-number">(59)</span>
                            </li>
                            <li>
                                <div class="product-widget-content"><input type="checkbox" id="brand7"><label
                                        for="brand7">bugatti</label></div><span
                                    class="product-widget-number">(64)</span>
                            </li>
                            <li>
                                <div class="product-widget-content"><input type="checkbox" id="brand8"><label
                                        for="brand8">ferrari</label></div><span
                                    class="product-widget-number">(77)</span>
                            </li>
                            <li>
                                <div class="product-widget-content"><input type="checkbox" id="brand9"><label
                                        for="brand9">porsche</label></div><span
                                    class="product-widget-number">(85)</span>
                            </li>
                            <li>
                                <div class="product-widget-content"><input type="checkbox" id="brand10"><label
                                        for="brand10">bmw</label></div><span
                                    class="product-widget-number">(85)</span>
                            </li>
                        </ul><button class="product-widget-btn"><i class="material-icons">delete</i><span>clear
                                filter</span></button>
                    </form>
                </div>
            </div>

            <div class="col-lg-8 col-xl-9">




                <form action="" method="GET">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="top-filter">
                                <div class="filter-show">
                                    <label class="filter-label">Show :</label>
                                    <select name="numberPerPage" onchange="this.form.submit()" class="form-select filter-select">
                                        <option value="8" ${numberPerPage == 8 ? 'selected' : ''}>8</option>
                                        <option value="12" ${numberPerPage == 12 ? 'selected' : ''}>12</option>
                                        <option value="24" ${numberPerPage == 24 ? 'selected' : ''}>24</option>
                                    </select></div>
                                <div class="filter-short">
                                    <label class="filter-label">Short by :</label>
                                    <select class="form-select filter-select" name="sort" onchange="this.form.submit()">
                                        <option selected>default</option>
                                        <option value="price">By Price</option>
                                        <option value="name">By Name</option>
                                    </select></div>
                                <div class="filter-action">
                                    <a href="<c:url value="/cars/cargrid.do"/>" title="Grid View" class="material-icons">grid_view</a>
                                    <a href="<c:url value="/cars/carlist.do"/>" title="List View" class="material-icons active">list_alt</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>

                <div class="row">

                    <c:forEach items="${listByPage}" var="item">
                        <div class="col">

                            <div class="product-list-card">
                                <div class="product-list-image">
                                    <img style="max-height: 220px; min-height: 220px; max-width: 310px;min-width: 310px" src="${pageContext.request.contextPath}${item.image.size() == 0 ? '' : item.image.get(0).url}" alt="product">
                                    <!--<div class="product-list-badge"><label class="badge new"></label></div>-->
                                </div>
                                <div class="product-list-content">
                                    <div class="product-list-group">
                                        <div class="product-list-meta">
                                            <h3><a href="inventory-single.html">${item.carName}</a></h3>
                                            <ul>
                                                <li>Create Date: ${item.createDate}</li>
                                                <!--<li>45 minute ago!</li>-->
                                            </ul>
                                        </div>
                                        <div class="product-list-price">
                                            <h3>${item.formatPrice} </h3>
                                        </div>
                                    </div>
                                    <ul class="product-list-info">
                                        <li><span>Year:</span><span>${item.carYear}</span></li>
                                        <li><span>Brand:</span><span>${item.brand.name}</span></li>
                                        <li><span>Condition:</span><span style="color: ${item.carCondition ? 'red' : 'green'}">${item.carCondition ? 'Sold' : 'Available'}</span></li>
                                        <li><span>Description:</span><span class="hidden-text">${item.carDescription}</span></li>


                                    </ul>
                                    <div class="product-list-action"><a href="<c:url value="/cars/carsingle.do"/>"><i
                                                class="material-icons">visibility</i><span>details</span></a><button
                                            type="button" class="favorite"><i
                                                class="material-icons">favorite</i><span>favorite</span></button></div>
                                </div>
                            </div>

                        </div>
                    </c:forEach>
                </div>
                <div class="row">
                    <div class="col-xl-13">
                        <div class="bottom-paginate mb-50">
                            <p class="page-info">Showing ${page} of ${numberOfPage} Results</p>
                            <ul class="pagination">
                                <li class="page-item"><a href="?page=${page > 1 ? page - 1 : page}" class="page-link material-icons">chevron_left</a>
                                </li>
                                <c:forEach begin="1" end="${numberOfPage}" var="i">
                                    <li class="page-item"><a href="?page=${i}" class="page-link ${i == page ? 'active' : ''}">${i}</a></li>
                                    </c:forEach>
                                <li class="page-item"><a href="?page=${page < numberOfPage ? page + 1 : page}" class="page-link material-icons">chevron_right</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>
