<%-- 
    Document   : ordermanager
    Created on : Jun 20, 2023, 7:48:38 PM
    Author     : Admin
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
                            <c:if test="${User.userImage == null}">
                                <div class="user-banner-profile-avatar">
                                    <a><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/user.png" alt="avatar"></a>
                                </div>
                            </c:if>
                            <c:if test="${User.userImage != null}">
                                <div class="user-banner-profile-avatar"><a>
                                        <img src="${User.getUserImage()}" onerror="this.src='"${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/user.png'" alt="avatar"></a>
                                </div>
                            </c:if>
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
                                <li><a href="<c:url value="/order/postedad.do"/>">posted car</a></li>
                                </c:if>
                                <c:if test="${ User.userRole == 1 || User.userRole == 2}">
                                <li><a href="<c:url value="/order/orderlist.do"/>" >Change appointment</a></li>
                                </c:if>
                                <c:if test="${User.userRole == 2 || User.userRole == 1}">
                                <li><a href="<c:url value="/order/ordermanager.do"/>" class="active" >Order Manager</a></li>
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
                                </c:if>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="mc-breadcrumb">
    <section class="section-gap-75">
        <div class="container">
            <div class="mc-breadcrumb-group">
                <h2 class="mc-breadcrumb-title">Order Manager</h2>
                <ul class="mc-breadcrumb-list">
                    <li class="mc-breadcrumb-item"><a class="mc-breadcrumb-link" href="<c:url value="/ocsn/index.do"/>">home</a></li>
                    <li class="mc-breadcrumb-item">Order Manager  </li>
                </ul>
            </div>
        </div>
    </section>

    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="form-group mb-0">
                    <div class="input-group">
                        <form action="<c:url value="/order/ordermanager.do"/>" method="post">
                            <input id="search" name="search" class="form-control form-control-lg" type="text" placeholder="Search">
                            <button class="form-btn" type="submit" name="op" value="search"><span>Search</span></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</section>

<section class="section-gap-100">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">

                <table class="table">
                    <thead>
                        <tr>
                            <th>User ID</th>
                            <th>User Name</th>
                            <th>Order ID</th>
                            <th>Car Name</th>
                            <th>Status</th>
                            <th>Car Price</th>
                            <th>Order Date</th>
                            <th>Edit</th>
                            <th>Submit</th>
                        </tr>
                    </thead>

                    <tbody>

                        <c:forEach var="orderlist" items="${orders}">

                            <tr>
                        <form action="<c:url value="/order/ordermanager.do"/>" method="post">
                            <input type="hidden" name="orderId" id="orderId" value="${orderlist.orderId}">
                            <td>${orderlist.userId}</td>
                            <td>${orderlist.userName}</td>
                            <td>${orderlist.orderId}</td>
                            <td>${orderlist.carName}</td>
                            <td>${orderlist.orderStatus}</td>
                            <td>${orderlist.getFormatPrice()}</td>
                            <td>${orderlist.createdDate}</td> 
<!--                            <td>${orderlist.userEmail}</td>-->
                            <td >
                                <input type="hidden" name="Email" value="${orderlist.userEmail}"/>
                                <input type="hidden" name="orderId" value="${orderlist.orderId}">
                                <select class="form-select" name="op">
                                    <option selected>Select</option>
                                    <option class="form-check-label" value="denied" >Cancelled</option>
                                    <option class="form-check-label" value="pending">Pending</option>
                                    <option class="form-check-label" value="success">Complete</option>
                                    <option class="form-check-label" value="inprocess">Processing</option>
                                    <!--                                    <option class="form-check-label" value="delete">DELETE</option>-->

                                </select>
                                <input type="hidden" name="orderId" value="${orderlist.orderId}">
                            </td>
                            <td >
                                <input type="hidden" name="orderId" id="orderId" value="${orderlist.orderId}">
                                <div class="row">
                                    <div class="col">
                                        <button class="form-btn" type="submit"><span>SUBMIT</span></button>
                                    </div>
                                    <div class="col">
                                        <a class="form-btn" href="<c:url value="/order/delete.do?id=${orderlist.orderId}"/>"><span>DELETE</span></a>
                                    </div>
                                </div>
                                <!--                                <button A href="<c:url value="/order/${op}.do?id=${orderlist.orderId}"/>">SUBMIT</button>-->

                                <script>
                                    const selectElement = document.querySelector('.form-select');
                                    const submitLink = document.querySelector('.form-btn');

                                    selectElement.addEventListener('change', (event) => {
                                        const opValue = event.target.value;
                                        const currentHref = submitLink.getAttribute('href');
                                        const newHref = currentHref.replace('${op}', opValue);
                                        submitLink.setAttribute('href', newHref);
                                    });
                                </script>
                            </td>
                            <!--                            <td class="product-list-action">
                                                            <a  href="<c:url value="/order/denied.do?id=${orderlist.orderId}"/>"><span>CANCEL</span></a>
                                                            <a href="<c:url value="/order/pending.do?id=${orderlist.orderId}"/>"><span>PENDING</span></a>
                                                            <a href="<c:url value="/order/success.do?id=${orderlist.orderId}"/>"><span>COMPLETE</span></a>
                            
                                                        </td>
                                                        <td class="product-list-action">
                                                            <a  href="<c:url value="/order/inprocess.do?id=${orderlist.orderId}"/>"><span>IN PROCESS</span></a>
                                                            <a  href="<c:url value="/order/delete.do?id=${orderlist.orderId}"/>"><span>CANCEL</span></a>
                                                        </td>-->
                            <!--                            <td>
                                                            <form action="<c:url value="/order/ordermanager.do"/>" method="POST">
                                                                <select class="form-select" name="op_${order.orderId}">
                                                                    <option value="denied" ${order.orderStatus == 'denied' ? 'selected' : ''}>CANCEL</option>
                                                                    <option value="pending" ${order.orderStatus == 'pending' ? 'selected' : ''}>PENDING</option>
                                                                    <option value="success" ${order.orderStatus == 'success' ? 'selected' : ''}>COMPLETE</option>
                                                                    <option value="inprocess" ${order.orderStatus == 'inprocess' ? 'selected' : ''}>IN PROCESS</option>
                                                                    <option value="delete">DELETE</option>
                                                                </select>
                                                                <input type="hidden" name="orderId" value="${order.orderId}">
                                                                <button class="form-btn" type="submit">SUBMIT</button>
                                                            </form>
                                                        </td>-->
                        </form>
                        </tr>

                    </c:forEach>
                    </tbody>
                </table>

            </div>
        </div>
    </div>
</section>