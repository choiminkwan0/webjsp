<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>
<jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session" />
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">

<title>도서 목록</title>
</head>
<body>
<div class="container text-center">
  <%@ include file="menu.jsp" %>

  <div class="py-5 text-center bg-body-secondary">
  <div class="container">
  <h1 class="display-4">도서 목록</h1>
  <p class="lead">BookList</p>
  </div>
</div>
<%
    BookRepository dao=BookRepository.getInstance();
    ArrayList<Book> listOfBooks=dao.getAllBooks();
%>

<div class="row row-cols-1 row-cols-md-3 g-4">
    <%
        for (int i=0; i < listOfBooks.size(); i++) {
            Book book=listOfBooks.get(i);
    %>
    <div class="col">
        <div class="p-3">
            <img src="/bookmarket/resources/images/<%=book.getFilename() %>" style="width : 250; height : 350;" />
            <h5><b><%=book.getName() %></b></h5>
            <p> <%=book.getAuthor() %>
            <br><%=book.getPublisher() %> | <%=book.getReleaseDate() %>
            <p> <%=book.getDescription().substring(0,60) %>...
            <p> <%=book.getUnitPrice() %>원
            <p> <a href="./book.jsp?id=<%=book.getBookId() %>"
        class="btn btn-primary" role="button"> 상세 정보 &raquo;</a>
        </div>
    </div>
    <%
        }
    %>
    </div>
    <%@ include file="footer.jsp" %>
</div>
</body>
</html>