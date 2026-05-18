<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>
<%@ page errorPage="exceptionNoBookId.jsp" %>
<jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session" />

<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">

<title>도서 정보</title>
<script type="text/javascript">
    function addToCart() {
        if (confirm("도서를 장바구니에 추가 하시겠습니까?")) {
            document.addForm.submit();
        } else {
            document.addForm.reset();
        }
    }
</script>
</head>
<body>
<div class="container text-center">
    <%@ include file="menu.jsp" %>

    <div class="py-5 text-center bg-body-secondary">
        <div class="container">
        <h1 class="display-4">도서 정보</h1>
        <p class="lead">BookInfo</p>
        </div>
    </div>

    <%
        String id=request.getParameter("id");
        BookRepository dao=BookRepository.getInstance();
        Book book=dao.getBookById(id);
    %>
    <div class="row row-cols-1 row-cols-md-3 g-4">
    <div class="col">
    <img src="/bookmarket/resources/images/<%=book.getFilename() %>" style="width : 70%">
    </div>
        <div class="p-3">
            <h3><b><%=book.getName() %></b></h3>
            <p> <%=book.getDescription() %>
            <p> <b>도서코드 : </b><span class="badge text-bg-danger">
            <%=book.getBookId() %></span>
            <p> <b>저자</b> <%=book.getAuthor() %>
            <p> <b>출판사</b> <%=book.getPublisher() %>
            <p> <b>출판일</b> <%=book.getReleaseDate() %>
            <p> <b>분류</b> <%=book.getCategory() %>
            <p> <b>재고수</b> <%=book.getUnitsInStock() %>
            <h4><%=book.getUnitPrice() %>원</h4>
            <p> <form name="addForm" action="./addCart.jsp?id=<%=book.getBookId()%>" method="post">
            <p> <a href="#" class="btn btn-primary"> 도서주문 &raquo;</a>
            <p> <a href="./cart.jsp" class="btn btn-success"> 장바구니 &raquo;</a>
            <p> <a href="./books.jsp" class="btn btn-secondary"> 도서목록 &raquo;</a>
            </form>
        </div>
    </div>
    <jsp:include page="footer.jsp" />
</div>
</body>
</html>