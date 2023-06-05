<%-- 
    Document   : blogcreate
    Created on : Jun 1, 2023, 5:22:22 PM
    Author     : _viet.quangg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
   <style>
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
    </style>
  <section class="section-gap-100">
    <div style="background: url(${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/banner/single/01.jpg) no-repeat center / cover;">
        <div class="single-banner">
            <div class="container">
                <h2>blog creation page</h2>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">blog-creation</li>
                </ol>
            </div>
        </div>
    </div>
</section>
  <body>
    <div class="form-container">
      <h2>Create a Blog</h2>
      <form method="post" enctype="multipart/form-data" action="<c:url value="/blog/create_blog_handler.do"/>">
        <label for="title">Author:</label>
        <input type="text" id="title" name="userName" disabled="true" value="${User.userName}">
        <label for="title">Blog Title:</label>
        <input type="text" id="title" name="blogtitle" required">
        <label for="description">Blog Detail:</label>
        <textarea id="description" name="blogdetail" rows="4" cols="50" required></textarea>
        <input type="text" id="title" name="userId" hidden="true" value="${User.userID}">
        <label for="image">Image:</label><br/>
        <input type="file" id="image" name="blogimage"><br/>
        <button type="submit" name="op" value="create">Create Blog</button>
        ${message}
      </form>
    </div>
  </body>
</html>
