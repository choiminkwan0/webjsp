<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<title>주문 취소</title>
</head>
<body>

<div class="container text-center">
  <%@ include file="menu.jsp" %>

  <div class="py-5 text-center bg-body-secondary">
  <div class="container">
  <h1 class="display-4">주문 취소</h1>
  <p class="lead">Order Cancellation</p>
  </div>
</div>

<div class="row row-cols-1 row-cols-md-3 g-4">
    <h2>주문이 취소되었습니다.</h2>
</div>
<div class="container">
    <p> <a href="./books.jsp" class="btn btn-primary"> &laquo;도서 목록</a>
</div>

<%@ include file="footer.jsp" %>
</div>
</body>
</html>