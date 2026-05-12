<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<title>도서 등록</title>
</head>
<body>
<div class="container px-4 text-center">
    <%@ include file="menu.jsp" %>
    
    <div class="container px-4 text-center">
        <div class="container-sm">
        <h1 class="display-3">도서 등록</h1>
        <p class="lead">Book Addition</p>
        </div>
    </div>

    <div class="container text-center">
    <form name="newBook" action="./processAddBook.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
  <div class="row align-items-center">
  <label class="col">도서코드</label>
    <div class="col">
      <input type="text" name="bookId" class="form-control">
    </div>
    </div>
    <div class="row align-items-center">
    <label class="col">도서명</label>
    <div class="col">
      <input type="text" name="name" class="form-control">
    </div>
    </div>
    <div class="row align-items-center">
    <label class="col">가격</label>
    <div class="col">
      <input type="text" name="unitPrice" class="form-control">
    </div>
    </div>
    <div class="row align-items-center">
    <label class="col">저자</label>
    <div class="col">
      <input type="text" name="author" class="form-control">
    </div>
    </div>
    <div class="row align-items-center">
    <label class="col">출판사</label>
    <div class="col">
      <input type="text" name="publisher" class="form-control">
    </div>
    </div>
    <div class="row align-items-center">
    <label class="col">출판일</label>
    <div class="col">
      <input type="text" name="releaseDate" class="form-control">
    </div>
    </div>
    <div class="row align-items-center">
    <label class="col">상세정보</label>
    <div class="col">
      <textarea name="description" cols="50" rows="2" class="form-control" placeholder="100자 이상 적어주세요"></textarea>
    </div>
    </div>
    <div class="row align-items-center">
    <label class="col">분류</label>
    <div class="col">
      <input type="text" name="category" class="form-control">
    </div>
    </div>
    <div class="row align-items-center">
    <label class="col">재고</label>
    <div class="col">
      <input type="text" name="unitsInStock" class="form-control">
    </div>
    </div>
    <div class="row align-items-center">
    <label class="col">상태</label>
    <div class="col">
      <input type="radio" name="condition" value="New"> 신규도서
      <input type="radio" name="condition" value="Old"> 중고도서
      <input type="radio" name="condition" value="EBook"> E-Book
    </div>
    </div>
    <div class="row align-items-center">
    <label class="col">이미지</label>
    <div class="col">
      <input type="file" name="BookImage" class="form-control">
    </div>
    </div>

    <div class="row align-items-center">
    <div class="col">
    <input type="submit" class="btn btn-secondary" value="등록">
    </div>
    </div>
    </form>
    </div>
    <jsp:include page="footer.jsp" />
    </div>
    </body>
    </html>

    