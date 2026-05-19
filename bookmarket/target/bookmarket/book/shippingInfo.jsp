<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<title>배송 정보</title>
</head>
<body>
<div class="container text-center">
  <%@ include file="menu.jsp" %>

  <div class="py-5 text-center bg-body-secondary">
  <div class="container">
  <h1 class="display-4">배송 정보</h1>
  <p class="lead">Shipping Info</p>
  </div>
</div>

<div class="row align-items-center">
    <form action="./processShippingInfo.jsp" method="post">
        <input type="hidden" name="cartId" value="<%=request.getParameter("cartId")%>">
        <div class="mb-3 row">
            <label class="col-sm-3 col-form-label fw-bold">성명</label>
            <div class="col-sm-3">
                <input type="text" name="name" class="form-control">
            </div>
        </div>
        <div class="mb-3 row align-items-center">
            <label class="col-sm-3 col-form-label fw-bold">배송일</label>
            <div class="col-sm-3">
                <input type="text" name="shippingDate" class="form-control">
            </div>
        </div>
        <div class="mb-3 row align-items-center">
            <label class="col-sm-3 col-form-label fw-bold">국가명</label>
            <div class="col-sm-3">
                <input type="text" name="country" class="form-control">
            </div>
        </div>
        <div class="mb-3 row align-items-center">
            <label class="col-sm-3 col-form-label fw-bold">우편번호</label>
            <div class="col-sm-3">
                <input type="text" name="zipCode" class="form-control">
            </div>
        </div>
        <div class="mb-3 row align-items-center">
            <label class="col-sm-3 col-form-label fw-bold">주소</label>
            <div class="col-sm-3">
                <input type="text" name="addressName" class="form-control">
            </div>
        </div>
        <div class="mb-3 row align-items-center">
            <div class="col-sm-3">
            <a href="./cart.jsp?cartId=<%=request.getParameter("cartId")%>" class="btn btn-secondary" role="button"> 이전 </a>
            <input type="submit" class="btn btn-success" value="등록" />
            <a href="./checkOutCancelled.jsp" class="btn btn-danger" role="button"> 취소 </a>
            </div>
        </div>
    </form>
</div>
<jsp:include page="footer.jsp" />
</div>
</body>
</html>