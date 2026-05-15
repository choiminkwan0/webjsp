<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<title>페이지 오류</title>
</head>
<body>
<div class="container text-center">
  <%@ include file="menu.jsp" %>

  <div class="py-5 text-center bg-body-secondary">
  <div class="container">
  <h1 class="display-4">요청하신 페이지를 찾을 수 없습니다.</h1>
  </div>
</div>

<div class="container">
    <p> <%=request.getRequestURL() %></p>
    <p> <a href="books.jsp" class="btn btn-primary"> 도서 목록 &raquo;</a>
</div>
<%@ include file="footer.jsp" %>
</div>
</body>
</html>