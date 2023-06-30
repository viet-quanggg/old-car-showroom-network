<%-- 
    Document   : blogcreate
    Created on : Jun 1, 2023, 5:22:22 PM
    Author     : _viet.quangg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@ taglib prefix="c" uri="jakarta.tags.core" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--   <style>
      /* Style the body */
      body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
      }
      
      /* Style the form container */
      .form-container {
        max-width: 600px;
        margin: auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0,0,0,0.2);
      }
      
      /* Style the form fields */
      input[type="text"], textarea {
        width: 100%;
        padding: 12px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        margin-top: 6px;
        margin-bottom: 16px;
        resize: vertical;
      }
      
      /* Style the file upload button */
      input[type="file"] {
        margin-top: 6px;
        margin-bottom: 16px;
      }
      
      /* Style the submit button */
      button[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
      }
      
      button[type="submit"]:hover {
        background-color: #45a049;
      }
    </style>-->
<section class="section-gap-100">
    <div style="background: url(${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/banner/single/01.jpg) no-repeat center / cover;">
        <div class="single-banner">
            <div class="container">
                <h2>blog creation page</h2>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/ocsn/index.do">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">blog-creation</li>
                </ol>
            </div>
        </div>
    </div>
</section>


<section class="section-gap-75">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-xl-12">
                <form method="get" enctype="multipart/form-data" action="<c:url value='/blog/create_blog_handler.do' />" >
                    <div class="common-card active">
                        <div class="common-card-header">
                            <h4 class="common-card-header-title">blog information</h4>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group"><label class="form-label" for = "blogtitle">Blog Title <span>*</span></label><input type="text" id="blogtitle" name="blogtitle" required="" class="form-control"></div>
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
                                        <span>*</span></label><textarea id="blogdetail" name="blogdetail" rows="4" cols="50" required="" class="form-control"></textarea></div>
                            </div>
                            <div class="col-12">
                                <div class="form-group mb-0">
                                    <label class="form-label" for="blogimage" >blog images</label>
                                    <input type="file" id="blogimage" name="blogimage"><br/>
                                </div>
                               

                            </div>
                            <br>
                            <div style="margin-top: 10px;">
                                <button type="submit" id="op" name="op" value="create_blog" class="form-btn" >Create Blog</button><br/>
                                ${message}
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

    </div>

</section>

<!--        <div class="form-container">
        <h2>Create a Blog</h2>
        <form method="get" action="<c:url value="/blog/create_blog_handler.do"/>" enctype="multipart/form-data">
            <label for="userName">Author:</label>
            <input type="text" id="userName" name="userName" disabled="true" value="${User.userName}">
            <label for="blogtitle">Blog Title:</label>
            <input type="text" id="blogtitle" name="blogtitle" required="">
            <label for="blogdetail">Blog Detail:</label>
            <textarea id="blogdetail" name="blogdetail" rows="4" cols="50" required=""></textarea>
            <input type="hidden" id="userId" name="userId" class="form-control" value="${User.userID}">
             Added a new input field for image upload 
            <label for="blogimage">Image:</label><br/>
            <input type="file" accept="image/*" id="blogimage" name="blogimage"><br/>
            <button type="submit" id="op" name="op" value="create_blog" class="form-btn" >Create Blog</button>
${message}
</form>
</div>-->

</html>
