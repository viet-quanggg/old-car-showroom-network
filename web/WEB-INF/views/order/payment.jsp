<%-- 
   Document   : carsingle
   Created on : May 28, 2023, 11:06:12 AM
   Author     : _viet.quangg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<style>
    .product-single-feature-list li span {
        font-size: 20px;
    }
</style>
<section class="section-gap-100">
    <div style="background: url(${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/banner/single/01.jpg) no-repeat center / cover;">
        <div class="single-banner">
            <div class="container">
                <h1>${pdata.postTitle}</h1>
            </div>
        </div>
    </div>
</section>

<section class="mc-breadcrumb">

    <div class="container">
        <div class="mc-breadcrumb-group">
            <h2 class="mc-breadcrumb-title">payment</h2>
            <ul class="mc-breadcrumb-list">
                <li class="mc-breadcrumb-item"><a class="mc-breadcrumb-link" href="<c:url value="/ocsn/index.do"/>">home</a></li>
                <li class="mc-breadcrumb-item"><a class="mc-breadcrumb-link" href="<c:url value="/oder/pricingplan.do"/>">plan</a></li>
                <li class="mc-breadcrumb-item">profile</li>
            </ul>
        </div>
    </div>
</section>
<style>
    .modal {
        display: none;
        position: fixed;
        z-index: 1;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto;
        background-color: rgba(0, 0, 0, 0.4);
    }

    .modal-content {
        background-color: #fefefe;
        margin: 15% auto;
        padding: 20px;
        border: 1px solid #888;
        width: fit-content;
    }

    .dell-btn{
        color:#0d6efd
    }

    .dell-btn:hover{
        color:#0a58ca
    }
</style>
<section class="mc-breadcrumb">
    <div class ="row" style="display:flex;justify-content: center">
        <div class="col-xl-8">
            <div class="common-card" id="features">
                <div class="common-card-header">
                    <h2 class="common-card-header-title">Your receipt</h2>
                </div>
                <div class="product-single-feature-group" >
                    <ul class="product-single-feature-list ">
                        <li><span>Name:</span><span>${User.userName}</span></li>
                        <li><span>Plan Name:</span><span>${keikaku.planName}</span></li>
                        <li><span>limit:</span><span>${keikaku.planTime} months</span></li>
                        <li><span>Post:</span><span>${keikaku.planLimit}</span></li>
                        <li><span style="font-weight: bold">price:</span><span style="font-weight: bold;font-size:25px;">${keikaku.planPrice}$</span></li>

                    </ul>

                </div>
                <c:if test="${User != null}"> 
                    <div classs="col-xl-12">
                        <a class="price-action" onclick="document.getElementById('modal').style.display = 'block'" ">get
                            subscribe</a>
                    </div> 
                    <div id="modal" class="modal" >
                        <div class="modal-content" >
                            <div class="header-user" style="justify-content:center;display: flex; width: 100%;">
                                <img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/download.png"
                                     alt="user">                                                   
                            </div>                                             
                            <div style="justify-content:center;display: flex; width: 100%;">
                                <h2 style="color:greenyellow"> Payment Successful!</h2>
                            </div>
                            <div style="justify-content:center;display: flex; width: 100%;" >
                                <a class="btn btn-outline-success btn-sm"href="<c:url value="/plan/buyplan.do?planId=${keikaku.planId}"/>">OK</a>
                            </div>

                        </div>
                    </div>
                </c:if>
            </div>
        </div>
    </div>
</div>
</div>
</section>
