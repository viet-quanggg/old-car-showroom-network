<%-- 
    Document   : table
    Created on : Jun 5, 2023, 10:46:55 AM
    Author     : _viet.quangg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<html lang="en">

    <!-- Mirrored from demos.creative-tim.com/material-dashboard/pages/tables.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 05 Jun 2023 01:52:24 GMT -->
    <!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath}/material-dashboard/demos.creative-tim.com/material-dashboard/assets/img/apple-icon.png">
        <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/material-dashboard/demos.creative-tim.com/material-dashboard/assets/img/favicon.png">
        <title>
            Material Dashboard 2 by Creative Tim
        </title>


        <link rel="canonical" href="<c:url value="/layouts/dashboard.jsp"/>" />

        <meta name="keywords" content="creative tim, html dashboard, html css dashboard, web dashboard, bootstrap 5 dashboard, bootstrap 5, css3 dashboard, bootstrap 5 admin, Material Dashboard bootstrap 5 dashboard, frontend, responsive bootstrap 5 dashboard, free dashboard, free admin dashboard, free bootstrap 5 admin dashboard">
        <meta name="description" content="Material Dashboard 2 is a beautiful Bootstrap 5 admin dashboard with a large number of components, designed to look beautiful and organized. If you are looking for a tool to manage and visualize data about your business, this dashboard is the thing for you.">

        <meta name="twitter:card" content="product">
        <meta name="twitter:site" content="@creativetim">
        <meta name="twitter:title" content="Material Dashboard 2 by Creative Tim">
        <meta name="twitter:description" content="Material Dashboard 2 is a beautiful Bootstrap 5 admin dashboard with a large number of components, designed to look beautiful and organized. If you are looking for a tool to manage and visualize data about your business, this dashboard is the thing for you.">
        <meta name="twitter:creator" content="@creativetim">
        <meta name="twitter:image" content="${pageContext.request.contextPath}/material-dashboard/s3.amazonaws.com/creativetim_bucket/products/450/original/material-dashboard.jpg">

        <meta property="fb:app_id" content="655968634437471">
        <meta property="og:title" content="Material Dashboard 2 by Creative Tim" />
        <meta property="og:type" content="article" />
        <meta property="og:url" content="dashboard.html" />
        <meta property="og:image" content="${pageContext.request.contextPath}/material-dashboard/s3.amazonaws.com/creativetim_bucket/products/450/original/material-dashboard.jpg" />
        <meta property="og:description" content="Material Dashboard 2 is a beautiful Bootstrap 5 admin dashboard with a large number of components, designed to look beautiful and organized. If you are looking for a tool to manage and visualize data about your business, this dashboard is the thing for you." />
        <meta property="og:site_name" content="Creative Tim" />

        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />

        <link href="${pageContext.request.contextPath}/material-dashboard/demos.creative-tim.com/material-dashboard/assets/css/nucleo-icons.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/material-dashboard/demos.creative-tim.com/material-dashboard/assets/css/nucleo-svg.css" rel="stylesheet" />

        <script src="${pageContext.request.contextPath}/material-dashboard/kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>

        <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">

        <link id="pagestyle" href="${pageContext.request.contextPath}/material-dashboard/demos.creative-tim.com/material-dashboard/assets/css/material-dashboard.mine63c.css?v=3.1.0" rel="stylesheet" />

        <style>
            .async-hide {
                opacity: 0 !important
            }
        </style>
        <script>
            (function (a, s, y, n, c, h, i, d, e) {
                s.className += ' ' + y;
                h.start = 1 * new Date;
                h.end = i = function () {
                    s.className = s.className.replace(RegExp(' ?' + y), '')
                };
                (a[n] = a[n] || []).hide = h;
                setTimeout(function () {
                    i();
                    h.end = null
                }, c);
                h.timeout = c;
            })(window, document.documentElement, 'async-hide', 'dataLayer', 4000, {
                'GTM-K9BGS8K': true
            });
        </script>

        <script>
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
                a = s.createElement(o),
                        m = s.getElementsByTagName(o)[0];
                a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '${pageContext.request.contextPath}/material-dashboard/www.google-analytics.com/analytics.js', 'ga');
            ga('create', 'UA-46172202-22', 'auto', {
                allowLinker: true
            });
            ga('set', 'anonymizeIp', true);
            ga('require', 'GTM-K9BGS8K');
            ga('require', 'displayfeatures');
            ga('require', 'linker');
            ga('linker:autoLink', ["2checkout.com", "avangate.com"]);
        </script>


        <script>
            (function (w, d, s, l, i) {
                w[l] = w[l] || [];
                w[l].push({
                    'gtm.start': new Date().getTime(),
                    event: 'gtm.js'
                });
                var f = d.getElementsByTagName(s)[0],
                        j = d.createElement(s),
                        dl = l != 'dataLayer' ? '&l=' + l : '';
                j.async = true;
                j.src =
                        '${pageContext.request.contextPath}/material-dashboard/www.googletagmanager.com/gtm5445.html?id=' + i + dl;
                f.parentNode.insertBefore(j, f);
            })(window, document, 'script', 'dataLayer', 'GTM-NKDMSK6');
        </script>



        <script defer data-site="demos.creative-tim.com" src="${pageContext.request.contextPath}/material-dashboard/api.nepcha.com/js/nepcha-analytics.js"></script>
    </head>
    <body class="g-sidenav-show  bg-gray-200">


        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>

        <aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3   bg-gradient-dark" id="sidenav-main">
            <div class="sidenav-header">
                <i class="fas fa-times p-3 cursor-pointer text-white opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
                <a class="navbar-brand m-0" href="<c:url value="/ocsn/index.do"/>" target="_blank">
                    <img src="${pageContext.request.contextPath}/material-dashboard/demos.creative-tim.com/material-dashboard/assets/img/logo-ct.png" class="navbar-brand-img h-100" alt="main_logo">
                    <span class="ms-1 font-weight-bold text-white">Admin Dashboard</span>
                </a>
            </div>
            <hr class="horizontal light mt-0 mb-2">
            <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link text-white " href="<c:url value="/admin/dashboard.do"/>">
                            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                                <i class="material-icons opacity-10">dashboard</i>
                            </div>
                            <span class="nav-link-text ms-1">Dashboard</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white active bg-gradient-primary" href="<c:url value="/admin/table.do"/>">
                            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                                <i class="material-icons opacity-10">table_view</i>
                            </div>
                            <span class="nav-link-text ms-1">Tables</span>
                        </a>
                    </li>
                    <li class="nav-item mt-3">
                        <h6 class="ps-4 ms-2 text-uppercase text-xs text-white font-weight-bolder opacity-8">Account pages</h6>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white " href="profile.html">
                            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                                <i class="material-icons opacity-10">person</i>
                            </div>
                            <span class="nav-link-text ms-1">Profile</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white " href="sign-in.html">
                            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                                <i class="material-icons opacity-10">login</i>
                            </div>
                            <span class="nav-link-text ms-1">Sign In</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="sidenav-footer position-absolute w-100 bottom-0 ">
                <div class="mx-3">
                    <a class="btn btn-outline-primary mt-4 w-100" href="https://www.creative-tim.com/learning-lab/bootstrap/overview/material-dashboard?ref=sidebarfree" type="button">Documentation</a>
                    <a class="btn bg-gradient-primary w-100" href="https://www.creative-tim.com/product/material-dashboard-pro?ref=sidebarfree" type="button">Upgrade to pro</a>
                </div>
            </div>
        </aside>
        <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">

            <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" data-scroll="true">
                <div class="container-fluid py-1 px-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
                            <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="javascript:;">Pages</a></li>
                            <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Tables</li>
                        </ol>
                        <h6 class="font-weight-bolder mb-0">Tables</h6>
                    </nav>
                </div>
            </nav>

            <div class="container-fluid py-4">
                <div class="row">
                    <div class="col-12">
                        <div class="card my-4">
                            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                                <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                                    <h6 class="text-white text-capitalize ps-3">Staff Information</h6>
                                    <a href = "<c:url value="/admin/table.do"/>" class="text-white text-capitalize ps-3">Staff List</a>
                                    <div class="ps-3 text-dark" >${message}</div>
                                </div>
                            </div>
                            <div class="card-body px-0 pb-2">
                                <div class="table-responsive p-0">
                                    <table class="table align-items-center mb-0">
                                        <thead>
                                            <tr>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Staff Email</th>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Password</th>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Staff Name</th>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Phone Number</th>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Address</th>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Image</th>
                                                <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Function</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <form action="<c:url value="/admin/update_handler.do"/>" method="POST">

                                            <c:forEach items="${uUser}" var="uUser">
                                                <tr>
                                                    <td>
                                                        <div class="d-flex px-2 py-1">
                                                            <input type="text" class="form-text" id="userId" name="uid" value="${uUser.userID}" hidden="">
                                                            <input type="email" class="form-text" id="userEmail" name="userEmail" value="${uUser.userEmail}">
                                                        </div>
                                                        <div class="d-flex px-2 py-1" style="color: red">${errorE}</div>
                                                    </td>
                                                    <td>
                                                        <div>
                                                            <input type="password" class="form-text" value="" name="userPass" id="userPassword">
                                                            <div style="color: red">${errorPa}</div><br/>
                                                            <input type="password" class="form-text" value="" name="re_pass" id="userPassword"><br/>
                                                            <div style="color: red">${errorR}</div>
                                                            <div/>
                                                    </td>
                                                    <td class="align-middle text-center">
                                                        <div class="d-flex px-2 py-1">
                                                            <input type="text" class="form-text" id="userName" name="userName" value="${uUser.userName}">
                                                        </div>
                                                        <div class="d-flex px-2 py-1" style="color: red">${errorN}</div>
                                                    </td>
                                                    <td class="align-middle text-center">
                                                        <div class="d-flex px-2 py-1">
                                                            <input type="number" class="form-text" id="userPhone" name="userPhone"  value="${uUser.userPhone}">
                                                        </div>
                                                        <div class="d-flex px-2 py-1" style="color: red">${errorPh}</div>
                                                    </td>

                                                    <td class="align-middle text-center">
                                                        <div class="d-flex px-2 py-1">
                                                            <input type="text" class="form-text" id="userAddress" name="userAddress"  value="${uUser.userAddress}">
                                                        </div>
                                                        <div class="d-flex px-2 py-1" style="color: red">${errorA}</div></div>
                                                    </td>
                                                    <td class="align-middle text-center">
                                                        <div class="d-flex px-2 py-1">
                                                            <input type="file" class="form-text" id="userImage" name="userImage"  value="">
                                                            <div/>
                                                    </td>
                                                    <td class="align-middle text-center">
                                                        <button type="submit" name="op" value="update" class="form-btn">Save</button>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </form>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="card my-4">
                            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                                <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                                    <h6 class="text-white text-capitalize ps-3">Current Staff</h6>
                                </div>
                            </div>
                            <div class="card-body px-0 pb-2">
                                <div class="table-responsive p-0">
                                    <table class="table align-items-center justify-content-center mb-0">
                                        <thead>
                                            <tr>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">ID | Staff Name</th>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Phone Number</th>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Address</th>
                                                <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Employed</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${uUser}" var="uUser">
                                                <tr>
                                                    <td>
                                                        <div class="d-flex px-2 py-1">
                                                            <div class="d-flex px-2 py-1">
                                                                <h6 class="mb-0 text-sm">${uUser.userID} | </h6>
                                                            </div>
                                                            <div class="d-flex flex-column justify-content-center">
                                                                <h6 class="mb-0 text-sm"> ${uUser.userName}</h6>
                                                                <p class="text-xs text-secondary mb-0"><a class="__cf_email__"">${uUser.userEmail}</a></p>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="d-flex px-2 py-1">
                                                            <p class="text-xs font-weight-bold mb-0">${uUser.userPhone}</p>
                                                            <div/>
                                                    </td>
                                                    <td class="align-middle text-center text-sm">
                                                        <div class="d-flex px-2 py-1">
                                                            <p class="text-xs font-weight-bold mb-0">${uUser.userAddress}</p>
                                                            <div/>
                                                    </td>
                                                    <td class="align-middle text-center">

                                                        <span class="text-secondary text-xs font-weight-bold">${uUser.timeCreated}</span>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <footer class="footer py-4  ">
                    <div class="container-fluid">
                        <div class="row align-items-center justify-content-lg-between">
                            <div class="col-lg-6 mb-lg-0 mb-4">
                                <div class="copyright text-center text-sm text-muted text-lg-start">
                                    © <script data-cfasync="false" src="${pageContext.request.contextPath}/material-dashboard/demos.creative-tim.com/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>
            document.write(new Date().getFullYear())
                                    </script>,
                                    made with <i class="fa fa-heart"></i> by
                                    <a href="https://www.creative-tim.com/" class="font-weight-bold" target="_blank">Creative Tim</a>
                                    for a better web.
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <ul class="nav nav-footer justify-content-center justify-content-lg-end">
                                    <li class="nav-item">
                                        <a href="https://www.creative-tim.com/" class="nav-link text-muted" target="_blank">Creative Tim</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="https://www.creative-tim.com/presentation" class="nav-link text-muted" target="_blank">About Us</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="https://www.creative-tim.com/blog" class="nav-link text-muted" target="_blank">Blog</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="https://www.creative-tim.com/license" class="nav-link pe-0 text-muted" target="_blank">License</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </main>
        <div class="fixed-plugin">
            <a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
                <i class="material-icons py-2">settings</i>
            </a>
            <div class="card shadow-lg">
                <div class="card-header pb-0 pt-3">
                    <div class="float-start">
                        <h5 class="mt-3 mb-0">Material UI Configurator</h5>
                        <p>See our dashboard options.</p>
                    </div>
                    <div class="float-end mt-4">
                        <button class="btn btn-link text-dark p-0 fixed-plugin-close-button">
                            <i class="material-icons">clear</i>
                        </button>
                    </div>

                </div>
                <hr class="horizontal dark my-1">
                <div class="card-body pt-sm-3 pt-0">

                    <div>
                        <h6 class="mb-0">Sidebar Colors</h6>
                    </div>
                    <a href="javascript:void(0)" class="switch-trigger background-color">
                        <div class="badge-colors my-2 text-start">
                            <span class="badge filter bg-gradient-primary active" data-color="primary" onclick="sidebarColor(this)"></span>
                            <span class="badge filter bg-gradient-dark" data-color="dark" onclick="sidebarColor(this)"></span>
                            <span class="badge filter bg-gradient-info" data-color="info" onclick="sidebarColor(this)"></span>
                            <span class="badge filter bg-gradient-success" data-color="success" onclick="sidebarColor(this)"></span>
                            <span class="badge filter bg-gradient-warning" data-color="warning" onclick="sidebarColor(this)"></span>
                            <span class="badge filter bg-gradient-danger" data-color="danger" onclick="sidebarColor(this)"></span>
                        </div>
                    </a>

                    <div class="mt-3">
                        <h6 class="mb-0">Sidenav Type</h6>
                        <p class="text-sm">Choose between 2 different sidenav types.</p>
                    </div>
                    <div class="d-flex">
                        <button class="btn bg-gradient-dark px-3 mb-2 active" data-class="bg-gradient-dark" onclick="sidebarType(this)">Dark</button>
                        <button class="btn bg-gradient-dark px-3 mb-2 ms-2" data-class="bg-transparent" onclick="sidebarType(this)">Transparent</button>
                        <button class="btn bg-gradient-dark px-3 mb-2 ms-2" data-class="bg-white" onclick="sidebarType(this)">White</button>
                    </div>
                    <p class="text-sm d-xl-none d-block mt-2">You can change the sidenav type just on desktop view.</p>

                    <div class="mt-3 d-flex">
                        <h6 class="mb-0">Navbar Fixed</h6>
                        <div class="form-check form-switch ps-0 ms-auto my-auto">
                            <input class="form-check-input mt-1 ms-auto" type="checkbox" id="navbarFixed" onclick="navbarFixed(this)">
                        </div>
                    </div>
                    <hr class="horizontal dark my-3">
                    <div class="mt-2 d-flex">
                        <h6 class="mb-0">Light / Dark</h6>
                        <div class="form-check form-switch ps-0 ms-auto my-auto">
                            <input class="form-check-input mt-1 ms-auto" type="checkbox" id="dark-version" onclick="darkMode(this)">
                        </div>
                    </div>
                    <hr class="horizontal dark my-sm-4">
                    <a class="btn bg-gradient-info w-100" href="https://www.creative-tim.com/product/material-dashboard-pro">Free Download</a>
                    <a class="btn btn-outline-dark w-100" href="https://www.creative-tim.com/learning-lab/bootstrap/overview/material-dashboard">View documentation</a>
                    <div class="w-100 text-center">
                        <a class="github-button" href="https://github.com/creativetimofficial/material-dashboard" data-icon="octicon-star" data-size="large" data-show-count="true" aria-label="Star creativetimofficial/material-dashboard on GitHub">Star</a>
                        <h6 class="mt-3">Thank you for sharing!</h6>
                        <a href="https://twitter.com/intent/tweet?text=Check%20Material%20UI%20Dashboard%20made%20by%20%40CreativeTim%20%23webdesign%20%23dashboard%20%23bootstrap5&amp;url=https%3A%2F%2Fwww.creative-tim.com%2Fproduct%2Fsoft-ui-dashboard" class="btn btn-dark mb-0 me-2" target="_blank">
                            <i class="fab fa-twitter me-1" aria-hidden="true"></i> Tweet
                        </a>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://www.creative-tim.com/product/material-dashboard" class="btn btn-dark mb-0 me-2" target="_blank">
                            <i class="fab fa-facebook-square me-1" aria-hidden="true"></i> Share
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <script src="${pageContext.request.contextPath}/material-dashboard/demos.creative-tim.com/material-dashboard/assets/js/core/popper.min.js"></script>
        <script src="${pageContext.request.contextPath}/material-dashboard/demos.creative-tim.com/material-dashboard/assets/js/core/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/material-dashboard/demos.creative-tim.com/material-dashboard/assets/js/plugins/perfect-scrollbar.min.js"></script>
        <script src="${pageContext.request.contextPath}/material-dashboard/demos.creative-tim.com/material-dashboard/assets/js/plugins/smooth-scrollbar.min.js"></script>
        <script>
                                var win = navigator.platform.indexOf('Win') > -1;
                                if (win && document.querySelector('#sidenav-scrollbar')) {
                                    var options = {
                                        damping: '0.5'
                                    }
                                    Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
                                }
        </script>

        <script async defer src="${pageContext.request.contextPath}/material-dashboard/buttons.github.io/buttons.js"></script>

        <script src="${pageContext.request.contextPath}/material-dashboard/demos.creative-tim.com/material-dashboard/assets/js/material-dashboard.mine63c.js?v=3.1.0"></script>
        <script defer src="https://static.cloudflareinsights.com/beacon.min.js/v52afc6f149f6479b8c77fa569edb01181681764108816" integrity="sha512-jGCTpDpBAYDGNYR5ztKt4BQPGef1P0giN6ZGVUi835kFF88FOmmn8jBQWNgrNd8g/Yu421NdgWhwQoaOPFflDw==" data-cf-beacon='{"rayId":"7d24c6a4a9026bd5","version":"2023.4.0","r":1,"b":1,"token":"1b7cbb72744b40c580f8633c6b62637e","si":100}' crossorigin="anonymous"></script>
    </body>

    <!-- Mirrored from demos.creative-tim.com/material-dashboard/pages/tables.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 05 Jun 2023 01:52:30 GMT -->
</html>