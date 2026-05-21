<%@ page contentType="text/html; charset=utf-8" %>
<header class="pb-3 mb-4 border-bottom">
  <nav class="navbar bg-body-tertiary">
        <div class="container-fluid">
        <a href="./welcome.jsp" class="navbar-brand d-flex align-items-center">
            <img src="/bookmarket/resources/images/home.jpg" alt="Home" width="32" height="32">
            <span>Home</span>
        </a>
    <ul class="nav nav-tabs">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="./books.jsp">도서 목록</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="./addBook.jsp">도서 등록</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="./editBook.jsp?edit=update">도서 수정</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="./editBook.jsp?edit=delete">도서 삭제</a>
        </li>
    </ul>
</div>
</nav>
</header>