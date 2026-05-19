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

<div class="row align-items-center">
    <div class="row">
    <table width="100%">
    <tr>
    <td align="right"><a href="./deleteCart.jsp?cartId=<%=cartId%>" class="btn btn-danger">삭제하기</a></td>
    <td align="left"><a href="./shippingInfo.jsp?cartId=<%=cartId%>" class="btn btn-success">주문하기</a></td>
    </tr>
    </table>
</div>
<div class="py-5">
<table class="table table-striped table-hover">
<tr>
    <th class="text-center">도서</th>
    <th class="text-center">가격</th>
    <th class="text-center">수량</th>
    <th class="text-center">소계</th>
    <th class="text-center">비고</th>
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
<td class="text-center"><%=book.getBookId() %> - <%=book.getName() %></td>
<td class="text-center"><%=book.getUnitPrice() %></td>
<td class="text-center"><%=book.getQuantity() %></td>
<td class="text-center"><%=total %></td>
<td class="text-center"><a href="./removeCart.jsp?id=<%=book.getBookId() %>" class="badge text-bg-warning text-decoration-none">삭제</a></td>
</tr>
<%
}
%>
<tr>
    <th></th>
    <th></th>
    <th class="text-end">총액</th>
    <th class="text-center text-danger"><%=sum %>원</th>
    <th></th>
</tr>
</table>
<a href="./books.jsp" class="btn btn-primary"> &laquo; 쇼핑 계속하기 </a>
    </div>
</div>

<jsp:include page="footer.jsp" />
</div>
</body>
</html>