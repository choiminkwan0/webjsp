<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<script type="text/javascript" src="/bookmarket/resources/js/validation.js"></script>
<title>도서 등록</title>
</head>
<body>
<fmt:setLocale value='<%=request.getParameter("language") %>' />
<fmt:bundle basename="bundle.message">
<div class="container text-center">
    <%@ include file="menu.jsp" %>
    
    <div class="py-5 text-center bg-body-secondary">
        <div class="container">
        <h1 class="display-4"><fmt:message key="title" /></h1>
        <p class="lead">Book Addition</p>
        </div>
    </div>

    <div class="container">
    <div class="text-end">
      <a href="?language=ko">Korean</a> | <a href="?language=en">English </a>
      <a href="logout.jsp" class="btn btn-outline-primary">logout</a>
    </div>
    <form name="newBook" action="./processAddBook.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
  
    <div class="mb-3 row">
    <label class="col-sm-3 col-form-label fw-bold"><fmt:message key="bookId" /></label>
    <div class="col-sm-9">
      <input type="text" id="bookId" name="bookId" class="form-control">
    </div>
    </div>
    <div class="mb-3 row">
    <label class="col-sm-3 col-form-label fw-bold"><fmt:message key="name" /></label>
    <div class="col-sm-9">
      <input type="text" id="name" name="name" class="form-control">
    </div>
    </div>
    <div class="mb-3 row">
    <label class="col-sm-3 col-form-label fw-bold"><fmt:message key="unitPrice" /></label>
    <div class="col-sm-9">
      <input type="text" id="unitPrice" name="unitPrice" class="form-control">
    </div>
    </div>
    <div class="mb-3 row">
    <label class="col-sm-3 col-form-label fw-bold"><fmt:message key="author" /></label>
    <div class="col-sm-9">
      <input type="text" name="author" class="form-control">
    </div>
    </div>
    <div class="mb-3 row">
    <label class="col-sm-3 col-form-label fw-bold"><fmt:message key="publisher" /></label>
    <div class="col-sm-9">
      <input type="text" name="publisher" class="form-control">
    </div>
    </div>
    <div class="mb-3 row">
    <label class="col-sm-3 col-form-label fw-bold"><fmt:message key="releaseDate" /></label>
    <div class="col-sm-9">
      <input type="text" name="releaseDate" class="form-control">
    </div>
    </div>
    <div class="mb-3 row">
    <label class="col-sm-3 col-form-label fw-bold"><fmt:message key="description" /></label>
    <div class="col-sm-9">
      <textarea name="description" id="description" cols="50" rows="2" class="form-control" placeholder="100자 이상 적어주세요"></textarea>
    </div>
    </div>
    <div class="mb-3 row">
    <label class="col-sm-3 col-form-label fw-bold"><fmt:message key="category" /></label>
    <div class="col-sm-9">
      <input type="text" name="category" class="form-control">
    </div>
    </div>
    <div class="mb-3 row">
    <label class="col-sm-3 col-form-label fw-bold"><fmt:message key="unitsInStock" /></label>
    <div class="col-sm-9">
      <input type="text" id="unitsInStock" name="unitsInStock" class="form-control">
    </div>
    </div>
    <div class="mb-3 row">
    <label class="col-sm-3 col-form-label fw-bold"><fmt:message key="condition" /></label>
    <div class="col-sm-9">
      <input type="radio" name="condition" value="New"> <fmt:message key="condition_New" />
      <input type="radio" name="condition" value="Old"> <fmt:message key="condition_Old" />
      <input type="radio" name="condition" value="EBook"> <fmt:message key="condition_EBook" />
    </div>
    </div>
    <div class="mb-3 row">
    <label class="col-sm-3 col-form-label fw-bold"><fmt:message key="bookImage" /></label>
    <div class="col-sm-9">
      <input type="file" name="bookImage" class="form-control">
    </div>
    </div>

    <div class="mb-3 row">
    <div class="col-sm-9">
    <input type="button" class="btn btn-primary" value="<fmt:message key="button" />" onclick="CheckAddBook()">
    </div>
    </div>
    </form>
    </div>
    <jsp:include page="footer.jsp" />
    </div>
    </fmt:bundle>
    </body>
    </html>

    