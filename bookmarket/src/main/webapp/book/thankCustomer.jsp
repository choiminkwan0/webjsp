<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.net.URLDecoder" %>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<title>주문 완료</title>
</head>
<body>
<%
    String shipping_cartId="";
    String shipping_name="";
    String shipping_shippingDate="";
    String shipping_country="";
    String shipping_zipCode="";
    String shipping_addressName="";

    Cookie[] cookies=request.getCookies();

    if (cookies != null) {
        for (int i=0; i < cookies.length; i++) {
            Cookie thisCookie=cookies[i];
            String n=thisCookie.getName();
            if (n.equals("Shipping_cartId"))
                shipping_cartId=URLDecoder.decode((thisCookie.getValue()), "utf-8");
            if (n.equals("Shipping_shippingDate"))
                shipping_shippingDate=URLDecoder.decode((thisCookie.getValue()), "utf-8"); 
        }
    }
%>

<div class="container text-center">
  <%@ include file="menu.jsp" %>

  <div class="py-5 text-center bg-body-secondary">
  <div class="container">
  <h1 class="display-4">주문 완료</h1>
  <p class="lead">Order Completed</p>
  </div>
</div>

<div class="row row-cols-1 row-cols-md-3 g-4">
    <h2>주문해주셔서 감사합니다.</h2>
    <p> 주문은 <strong><% out.println(shipping_shippingDate); %></strong>에 배송될 예정입니다!
    <p> 주문번호 :<% out.println(shipping_cartId); %>
</div>
<div class="container">
    <p> <a href="./books.jsp" class="btn btn-primary"> &laquo;도서 목록</a>
</div>
<%@ include file="footer.jsp" %>
</div>
</body>
</html>
<%
    session.invalidate();

    for (int i=0; i < cookies.length; i++) {
        Cookie thisCookie=cookies[i];
        String n=thisCookie.getName();
        if (n.equals("Shipping_cartId"))
            thisCookie.setMaxAge(0);
        if (n.equals("Shipping_name"))
            thisCookie.setMaxAge(0);
        if (n.equals("Shipping_shippingDate"))
            thisCookie.setMaxAge(0);
        if (n.equals("Shipping_country"))
            thisCookie.setMaxAge(0);
        if (n.equals("Shipping_zipCode"))
            thisCookie.setMaxAge(0);
        if (n.equals("Shipping_addressName"))
            thisCookie.setMaxAge(0);

        response.addCookie(thisCookie);
    }
%>