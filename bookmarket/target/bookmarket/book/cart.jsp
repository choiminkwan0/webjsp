<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<%
    String cartId=session.getId();
%>
<title>장바구니</title>
</head>
<body>
<div class="container text-center">
  <%@ include file="menu.jsp" %>

  <div class="py-5 text-center bg-body-secondary">
  <div class="container">
  <h1 class="display-4">장바구니</h1>
  <p class="lead">Cart</p>
  </div>
</div>

<div class="row row-cols-1 row-cols-md-3 g-4">
    <div class="col">
    <table width="100%">
    <tr>
    <td align="left"><a herf="./deleteCart.jsp?cartId=<%=cartId%>" class="btn btn-danger">삭제하기</a></td>
    <td align="right"><a href="#" class="btn btn-success">주문하기</a></td>
    </tr>
    </table>
</div>
<div style="padding-top: 50px">
<table class="table table-striped table-hover">
<tr>
    <th>도서</th>
    <th>가격</th>
    <th>수량</th>
    <th>소계</th>
    <th>비고</th>
</tr>
<%
    int sum=0;
    ArrayList<Book> cartList=(ArrayList<Book>) session.getAttribute("cartlist");
    if (cartList==null)
        cartList=new ArrayList<Book>();
    for(int i=0; i < cartList.size(); i++) {
        Book book=cartList.get(i);
        int total=book.getUnitPrice() * book.getQuantity();
        sum=sum + total;
%>
<tr>
<td><%=book.getBookId() %> - <%=book.getName() %></td>
<td><%=book.getUnitPrice() %></td>
<td><%=book.getQuantity() %></td>
<td><%=total %></td>
<td><a href="./removeCart.jsp?id=<%=book.getBookId() %>" class="badge text-bg-warning">삭제</a></td>
</tr>
<%
    }
%>
<tr>
    <th></th>
    <th></th>
    <th>총액</th>
    <th><%=sum %></th>
    <th></th>
</tr>
</table>
<a href="./books.jsp" class="btn btn-secondary"> &laquo; 쇼핑 계속하기 </a>
    </div>
</div>

<jsp:include page="footer.jsp" />
</div>
</body>
</html>