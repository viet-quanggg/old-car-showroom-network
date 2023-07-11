<%-- 
    Document   : blogedit
    Created on : Jul 1, 2023, 8:42:17 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<section class="section-gap-100">
    <div style="background: url(${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/banner/single/01.jpg) no-repeat center / cover;">
        <div class="single-banner">
            <div class="container">
                <h2>blog edit page</h2>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/ocsn/index.do">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">blog-edit</li>
                </ol>
            </div>
        </div>
    </div>
</section>

 

<section class="section-gap-75">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-xl-12">
                <form method="post" enctype="multipart/form-data" action="<c:url value='/blog/edit_blog_handler.do' />" >
                    <div class="common-card active">
                        <div class="common-card-header">
                            <h4 class="common-card-header-title">blog information</h4>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group"><label class="form-label" for = "blogtitle">Blog Title <span>*</span></label>
                                <input type="text" id="blogtitle" name="blogtitle" required="" class="form-control"value="${blog.blogTitle}"></div>
                            </div>
                            <div class="col-12 col-sm-12 col-md-6 col-lg-12 col-xl-6">
                                <div class="form-group"><label class="form-label" for="userName" >Author Name
                                        <span>*</span></label>
                                    <input type="text" id="userName" name="userName" class="form-control" disabled="true" value="${User.userName}"></div>
                            </div>
                            <div class="col-12 col-sm-12 col-md-6 col-lg-12 col-xl-6">
                                <div class="form-group"><label class="form-label" >User ID
                                        <span>*</span></label><input type="text" class="form-control" value="${User.userID}" disabled="true">
                                    <input type="hidden" id="userId" name="userId" class="form-control" value="${User.userID}" ></div>
                            </div>
                            <div class="col-12">
                                <div class="form-group mb-0"><label class="form-label" for="blogdetail">blog details
                                        <span>*</span></label><textarea id="blogdetail" name="blogdetail" rows="4" cols="50" required="" class="form-control">${blog.blogDetail}</textarea></div>
                            </div>
                            <div class="col-12">
                                <div class="form-group mb-0">
                                    <label class="form-label" for="blogimage" >blog images</label>
                                    <input type="file" id="blogimage" name="blogimage"><br/>
                                    <input type="hidden" name="blogid" value="${blog.blogId}">
                                    <input type="hidden" name="userrole" value="${User.userRole}">
                                </div>
                               

                            </div>
                            <br>
                            <div style="margin-top: 10px;">
                                <button type="submit" id="op" name="op" value="edit_blog" class="form-btn" >Save</button><br/>
                                ${message}
                            </div>
                            
                        </div>
                    </div>
                </form>
            </div>
        </div>

    </div>

</section>
