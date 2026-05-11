<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Book" %>
<jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session" />
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">

<title>도서 목록</title>
</head>
<body>
<div class="container-fluid">
  <%@ include file="menu.jsp" %>

  <div class="container px-4 text-center">
  <div class="container-sm">
  <h1 class="display-4">도서목록</h1>
  <p class="lead">BookList</p>
  </div>
</div>
<%
    ArrayList<Book> listOfBooks=bookDAO.getAllBooks();
%>

<div class="container px-4 text-center">
    <%
        for (int i=0; i < listOfBooks.size(); i++) {
            Book book=listOfBooks.get(i);
    %>
    <div class="row gx-5">
        <div class="col">
            <h5><b><%=book.getName() %></b></h5>
            <p> <%=book.getAuthor() %>
            <br><%=book.getPublisher() %> | <%=book.getReleaseDate() %>
            <p> <%=book.getDescription().substring(0,60) %>...
            <p> <%=book.getUnitPrice() %>원
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