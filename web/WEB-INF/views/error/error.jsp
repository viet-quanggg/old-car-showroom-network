<%-- 
    Document   : error
    Created on : May 28, 2023, 9:52:52 AM
    Author     : _viet.quangg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>

<body>
    <section class="errorPage">
        <div class="container">
            <div class="error-content"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/404.png" alt="404">
                <h1>oops! this page can't be found.</h1>
                <p>It's looks like nothing was found at this location.</p><a href="<c:url value="/ocsn/index.do"/>" class="btn btn-inline"><i
                        class="material-icons">home</i><span>back to home</span></a>
            </div>
        </div>
    </section>
    <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/vendor/jquery-3.5.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/vendor/bootstrap/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/vendor/bootstrap/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/js/dropdown-menu.js"></script>
    <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/js/select-option.js"></script>
    <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/js/float-menu.js"></script>
    <script src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/js/custom.js"></script>
</body>
