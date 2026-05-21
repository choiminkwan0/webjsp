<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<script type="text/javascript" src="/bookmarket/resources/js/validation.js"></script>
<title>도서 수정</title>
</head>
<body>
<div class="container text-center">
    <%@ include file="menu.jsp" %>
    
    <div class="py-5 text-center bg-body-secondary">
        <div class="container">
        <h1 class="display-4">도서 수정</h1>
        <p class="lead">Book Updating</p>
        </div>
    </div>
<%@ include file="dbconn.jsp" %>
<%
  String bookId=request.getParameter("id");
  PreparedStatement pstmt=null;
  ResultSet rs=null;
  String sql="SELECT * FROM book WHERE b_id=?";
  pstmt=conn.prepareStatement(sql);
  pstmt.setString(1, bookId);
  rs=pstmt.executeQuery();
  if (rs.next()) {
%>
    <div class="row align-items-md-stretch">
    <div class="col-md-5">
      <img src="/bookmarket/resources/images/<%=rs.getString("b_filename")%>" alt="image" style="width:100%" />
    </div>
    <div class="col-md-7">
      <form name="newBook" action="./processUpdateBook.jsp" method="post" enctype="multipart/form-data">

    <div class="mb-3 row">
    <label class="col-sm-3 col-form-label fw-bold">도서코드</label>
    <div class="col-sm-9">
      <input type="text" id="bookId" name="bookId" class="form-control" value='<%=rs.getString("b_id")%>'>
    </div>
    </div>
    <div class="mb-3 row">
    <label class="col-sm-3 col-form-label fw-bold">도서명</label>
    <div class="col-sm-9">
      <input type="text" id="name" name="name" class="form-control" value='<%=rs.getString("b_name")%>'>
    </div>
    </div>
    <div class="mb-3 row">
    <label class="col-sm-3 col-form-label fw-bold">가격</label>
    <div class="col-sm-9">
      <input type="text" id="unitPrice" name="unitPrice" class="form-control" value='<%=rs.getString("b_unitPrice")%>'>
    </div>
    </div>
    <div class="mb-3 row">
    <label class="col-sm-3 col-form-label fw-bold">저자</label>
    <div class="col-sm-9">
      <input type="text" name="author" class="form-control" value='<%=rs.getString("b_author")%>'>
    </div>
    </div>
    <div class="mb-3 row">
    <label class="col-sm-3 col-form-label fw-bold">출판사</label>
    <div class="col-sm-9">
      <input type="text" name="publisher" class="form-control" value='<%=rs.getString("b_publisher")%>'>
    </div>
    </div>
    <div class="mb-3 row">
    <label class="col-sm-3 col-form-label fw-bold">출판일</label>
    <div class="col-sm-9">
      <input type="text" name="releaseDate" class="form-control" value='<%=rs.getString("b_releaseDate")%>'>
    </div>
    </div>
    <div class="mb-3 row">
    <label class="col-sm-3 col-form-label fw-bold">상세정보</label>
    <div class="col-sm-9">
      <textarea name="description" id="description" cols="50" rows="2" class="form-control" placeholder="100자 이상 적어주세요"><%=rs.getString("b_description")%></textarea>
    </div>
    </div>
    <div class="mb-3 row">
    <label class="col-sm-3 col-form-label fw-bold">분류</label>
    <div class="col-sm-9">
      <input type="text" name="category" class="form-control" value='<%=rs.getString("b_category")%>'>
    </div>
    </div>
    <div class="mb-3 row">
    <label class="col-sm-3 col-form-label fw-bold">재고수</label>
    <div class="col-sm-9">
      <input type="text" id="unitsInStock" name="unitsInStock" class="form-control" value='<%=rs.getString("b_unitsInStock")%>'>
    </div>
    </div>
    <div class="mb-3 row">
    <label class="col-sm-3 col-form-label fw-bold">상태</label>
    <div class="col-sm-9">
      <input type="radio" name="condition" value="New">신규도서
      <input type="radio" name="condition" value="Old">중고도서
      <input type="radio" name="condition" value="EBook">E-Book
    </div>
    </div>
    <div class="mb-3 row">
    <label class="col-sm-3 col-form-label fw-bold">이미지</label>
    <div class="col-sm-9">
      <input type="file" name="bookImage" class="form-control">
    </div>
    </div>

    <div class="mb-3 row">
    <div class="col-sm-9">
    <input type="submit" class="btn btn-primary" value="등록" />
    </div>
    </div>
    </form>
    </div>
    <%
    }
    if (rs!=null)
        rs.close();
    if (pstmt!=null)
        pstmt.close();
    if (conn!=null)
        conn.close();
    %>
    <jsp:include page="footer.jsp" />
    </div>
    </body>
    </html>

    