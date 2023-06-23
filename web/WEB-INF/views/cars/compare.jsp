


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<section class="section-gap-75">
    <div style="background: url(${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/banner/single/02.jpg) no-repeat center / cover;">

    </div>
</section>
<section class="mc-breadcrumb">
    <div class="container">
        <div class="mc-breadcrumb-group">
            <h2 class="mc-breadcrumb-title">compares</h2>
            <ul class="mc-breadcrumb-list">
                <li class="mc-breadcrumb-item">
                    <a class="mc-breadcrumb-link" href="${pageContext.request.contextPath}/">home</a>
                <li class="mc-breadcrumb-item"><a class="mc-breadcrumb-link" href="<c:url value="/cars/carlist.do"/>">list cars</a></li>
                </li>
                <li class="mc-breadcrumb-item">compare</li>
            </ul>
        </div>
    </div>
</section>
<jsp:useBean class="Common.CommonForJSP" id="common"/>
<div class="section-gap-100">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="table-responsive-md">
                    <table class="table table-bordered mb-0 compare-table">
                        <thead>
                            <tr>
                                <th>comparison</th>
                                    <c:forEach items="${data.items}" var="item">
                                    <th>${item.car.carName}</th>
                                    </c:forEach>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th>images</th>
                                    <c:forEach items="${data.items}" var="item">
                                    <td>
                                        <img style="min-height: 240px; max-height: 240px" class="compare-table-img" src="${pageContext.request.contextPath}${item.car.image.size() != 0 ? item.car.image.get(0).url : ''}" alt="product">
                                    </td>
                                </c:forEach>


                            </tr>
                            <tr>
                                <th>Condition</th>
                                    <c:forEach items="${data.items}" var="item">
                                    <td>
                                        <span class="badge new">${carCondition ? 'Sold' : 'Available'}</span>
                                    </td>
                                </c:forEach>

                            </tr>
                            <tr>
                                <th>Brand</th>                                                                    
                                    <c:forEach items="${data.items}" var="item">

                                    <td>
                                        <span class="compare-table-text">${item.car.brand.name}</span>
                                    </td>                                        

                                </c:forEach>
                            </tr>
                            
                            <tr>
                                <th>Year Release</th>                                                                    
                                    <c:forEach items="${data.items}" var="item">
                                    <td><span class="compare-table-text">${item.car.carYear}</span></td>
                                    </c:forEach>
                            </tr>


                            <tr>
                                <th>Price</th>                                                                    
                                    <c:forEach items="${data.items}" var="item">

                                    <td><span class="compare-table-price">${item.car.formatPrice}</span></td>
                                    <!--                                   //common.getFormatPrice(item.car.carPrice)-->
                                </c:forEach>
                            </tr>


                            <tr>
                                <th>action</th>
                                    <c:forEach items="${data.items}" var="item">
                                    <td>
                                        <a href="${pageContext.request.contextPath}/cars/removeCompare.do?id=${item.car.carID}" class="compare-table-remove">remove</a>
                                    </td>
                                    <!--                                    Remove wish-->
                                </c:forEach>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>