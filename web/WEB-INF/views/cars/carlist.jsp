<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

<jsp:useBean class="Common.CommonForJSP" id="common"/>

<section class="section-gap-100">
    <div class="container">
        <div class="row content-reverse">
            <jsp:include page="common/filter.jsp" />

            <div class="col-lg-8 col-xl-9">

                <jsp:include page="common/subnav.jsp" />

                <div class="row">
                    <c:if test="${data.isEmpty()}">
                        <h2 class="text-danger" style="text-align: center">Not Found !</h2>
                    </c:if>

                    <c:if test="${!data.isEmpty()}">
                        <c:forEach items="${data}" var="item">
                            <div class="col">

                                <div class="product-list-card">
                                    <div class="product-list-image">
                                        <img style="max-height: 220px; min-height: 220px; max-width: 310px;min-width: 310px" src="${pageContext.request.contextPath}${item.image.size() == 0 ? '' : item.image.get(0).url}" alt="product">
                                    </div>
                                    <div class="product-list-content">
                                        <div class="product-list-group">
                                            <div class="product-list-meta">
                                                <h3><a href="inventory-single.html">${item.carName}</a></h3>
                                                <ul>
                                                    <li>Create Date: ${common.getFormatDate(item.createDate, 'dd-MM-yyyy')}</li>
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
                                        <div class="product-list-action">
                                            <a href="<c:url value="/cars/carsingle.do?carId=${item.carID}"/>"><i
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
                    </c:if>

                    <c:if test="${data.isEmpty()}">

                    </c:if>

                </div>


                <c:if test="${!data.isEmpty()}">
                    <jsp:include page="common/pagination.jsp" />

                </c:if>
            </div>
        </div>
    </div>
</section>
