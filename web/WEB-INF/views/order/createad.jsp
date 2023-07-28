<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<section class="section-gap-75">
    <div style="background: url(${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/banner/single/02.jpg) no-repeat center / cover;">
        <div class="user-banner">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 col-xl-8">
                        <div class="user-banner-profile">
                            <div class="user-banner-profile-avatar"><a href="<c:url value="/views/login/profile.do"/>"><img
                                        src="${User.getUserImage()}" onerror="this.src='${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/user.png'" alt="avatar"></a></div>
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
                            <li><a href="<c:url value="/login/profile.do"/>" class="">profile</a></li>
                            <li><a href="<c:url value="/login/update_profile.do"/>" class="inactive">update profile</a></li>
                                <c:if test="${User.userRole == 0 || User.userRole == 1}">
                                <li><a href="<c:url value="/order/createad.do"/>"class="active">create car</a></li>
                                </c:if>
                                <c:if test="${User.userRole == 0 || User.userRole == 1}">
                                <li><a href="<c:url value="/order/postedad.do"/>">posted car</a></li>
                                </c:if>
                                <c:if test="${User.userRole == 2 || User.userRole == 1}">
                                <li><a href="<c:url value="/order/ordermanager.do"/>">Order Manager</a></li>
                                </c:if>
                                <c:if test="${ User.userRole == 1}">
                                <li><a href="<c:url value="/admin/userlist.do"/>">User List</a></li>
                                </c:if>
                                <c:if test="${ User.userRole == 0}">
                                <li><a href="<c:url value="/order/orderlist.do"/>">Order List</a></li>
                                <li><a href="<c:url value="/order/favorite.do"/>">favorite</a></li>
                                <li><a href="<c:url value="/cars/compare.do"/>">compares</a></li>
                                <li><a href="<c:url value="/blog/bloglistuser.do?uid=${User.userID}"/>">Your Blog</a></li> 
                            </c:if>
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
            <h2 class="mc-breadcrumb-title">Create A Post</h2>
            <ul class="mc-breadcrumb-list">
                <li class="mc-breadcrumb-item"><a class="mc-breadcrumb-link" href="<c:url value="/ocsn/index.do"/>">home</a></li>
                <li class="mc-breadcrumb-item"><a class="mc-breadcrumb-link" href="dashboard.html">dashboard</a>
                </li>
                <li class="mc-breadcrumb-item">create-ads</li>
            </ul>
        </div>
    </div>
</section>

<section class="section-gap-75">

    <div class="container">
        <div class="col-lg-12 col-xl-12">
            <div style="margin-bottom:10px"> <h3 style="color:red">${errormess}</h3></div>
            <form class="create-ads-form" action="<c:url value="/order/create_handler.do"/>">
                <div class="common-card active">
                    <input type="hidden" value="${postId}" name="postId" id="postId">
                    <input type="hidden" value="${carId}" name="carId" id="carId">
                    <input type="hidden" value="${carShowroom}" name="carShowroom" id="carShowroom">
                    <input type="hidden" value="${carCondition}" name="carCondition" id="carCondition">
                    <div class="common-card-header">
                        <h4 class="common-card-header-title">vehicle information</h4>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group"><label class="form-label" for = "title">Title <span>*</span></label><input name ="title" id ="title"
                                                                                                                               type="text" class="form-control" value="${title}"></div>
                            <div style="color: red">${errorVT}</div>
                        </div>
                        <div class="col-12 ">
                            <div class="form-group"><label class="form-label" for ="carname">Vehicle Name
                                    <span>*</span></label><input name = "carname" id="carname" type="text" class="form-control" value="${carname}"></div>
                            <div style="color: red">${errorVN}</div>
                        </div>
                        <div class="col-12 col-sm-12 col-md-6 col-lg-12 col-xl-6">
                            <div class="form-group"><label class="form-label" for="carprice">Price
                                    <span>*</span></label><input name="carprice" id="carprice" type="text" class="form-control" value="${carprice}"></div>
                            <div style="color: red">${errorVP}</div>
                        </div>

                        <div class="col-12 col-sm-12 col-md-6 col-lg-12 col-xl-6">
                            <div class="form-group"><label class="form-label" for="odo">Mileage
                                    <span>*</span></label><input name="odo" id="odo" type="text" class="form-control" value="${odo}"></div>
                            <div style="color: red">${errorVOD}</div>
                        </div>

                        <div class="col-12 col-sm-12 col-md-6 col-lg-12 col-xl-6">
                            <div class="form-group"><label class="form-label" for ="brandid">Brand <span>*</span></label><select
                                    name="brandid" id="brandid" class="form-select">
                                    <option value="" disabled selected>Select a Brand</option>
                                    <c:forEach items="${blist}" var="branditem">
                                        <option value ="${branditem.id}" ${brandid == branditem.id ? 'selected' : ''}>${branditem.name}</option>
                                    </c:forEach>
                                </select></div>
                            <div style="color: red">${errorVB}</div>
                        </div>
                        <div class="col-12 col-sm-12 col-md-6 col-lg-12 col-xl-6">
                            <div class="form-group"><label class="form-label" for ="colorid">Color <span>*</span></label><select
                                    name="colorid" id="colorid" class="form-select">
                                    <option value="" disabled selected>Select a Color</option>
                                    <c:forEach items="${clist}" var="coloritem">
                                        <option value ="${coloritem.id}" ${colorid == coloritem.id ? 'selected' : ''}>${coloritem.color}</option>
                                    </c:forEach>
                                </select></div>
                            <div style="color: red">${errorVC}</div>
                        </div>

                        <div class="col-12 col-sm-12 col-md-6 col-lg-12 col-xl-4">
                            <div class="form-group"><label class="form-label" for="caryear">Year 
                                    <span>*</span></label><select id="caryear" name="caryear" class="form-select">
                                    <option value="" disabled selected>Select a year</option>

                                    <c:forEach begin="1900" end="2022" var="yearchoices">
                                        <option value="${yearchoices}" ${caryear == yearchoices ? 'selected' : ''}>${yearchoices}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div style="color: red">${errorVY}</div>
                        </div>
                        <div class="col-12 col-sm-12 col-md-6 col-lg-12 col-xl-4">
                            <div class="form-group"><label class="form-label" for="car_seat">Seat 
                                    <span>*</span></label><select id="car_seat" name="car_seat" class="form-select">
                                    <option value="" disabled selected>Select a number</option>

                                    <c:forEach begin="3" end="8" var="seatnumbers">
                                        <option value="${seatnumbers}" ${car_seat == seatnumbers ? 'selected' : ''}>${seatnumbers}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div style="color: red">${errorVCS}</div>
                        </div>
                        <div class="col-12 col-sm-12 col-md-6 col-lg-12 col-xl-4">
                            <div class="form-group"><label class="form-label" for="engine">Fuel Type 
                                    <span>*</span></label><select id="engine" name="engine" class="form-select">
                                    <option value="" disabled selected>Select a fuel type</option>
                                    <option value="Gasoline" ${engine == "Gasoline" ? 'selected' : ''}>Gasoline</option>
                                    <option value="Diesel" ${engine == "Diesel" ? 'selected' : ''}>Diesel</option>
                                    <option value="Ethanol" ${engine == "Ethanol" ? 'selected' : ''}>Ethanol</option>
                                    <option value="Biodiesel" ${engine == "Biodiesel" ? 'selected' : ''}>Biodiesel</option>
                                    <option value="Hydrogen" ${engine == "Hydrogen" ? 'selected' : ''}>Hydrogen</option>
                                </select>
                            </div>
                            <div style="color: red">${errorVE}</div>
                        </div>


                        <div class="col-12">
                            <div class="form-group mb-0"><label class="form-label" for="description">vehicle description
                                    <span>*</span></label><textarea id="description" name="description" class="form-control" value="${description}">${description}</textarea></div>
                            <div style="color: red">${errorVD}</div>
                        </div>
                        <div class="col-12">
                            <div class="form-group mb-0"><label class="form-label" for="description">other information
                                </label><textarea id="otherin" name="otherin" class="form-control" value="${otherin}">${otherin}</textarea></div>

                        </div>
                        <br>
                        <div style="margin-top: 10px;">
                            <button type="submit" name="op" id="op" value="createcar" class="form-btn">Submit</button>
                        </div>
                    </div>

                </div>
            </form>
        </div>

        <!--        <div  class="col-lg-12 col-xl-12">
                    <form class="create-ads-form" action="<c:url value="/order/image_hanlder.do"/>">  
                        <div class="common-card active">
                            <div class="common-card-header">
                                <h4 class="common-card-header-title">Media</h4>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group mb-0" style="margin-top: 21px; display:block; align-items: center"><label class="form-label" for="images">Media
                                            </label></div>
                                        <input type="file" id="images" name="images" class="form-control" multiple>
                                </div>
                                <div style="margin-top: 10px;">
                                    <button type="submit" name="op" id="op" value="update" class="form-btn">Submit</button>
                                </div>
                            </div>
                    </form>
                </div>
        -->        </div>  
</section>