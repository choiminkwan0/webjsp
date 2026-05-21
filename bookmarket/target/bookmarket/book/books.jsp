<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
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
<%@ include file="dbconn.jsp" %>
<div class="row row-cols-1 row-cols-md-3 g-4">
    <%
        PreparedStatement pstmt=null;
        ResultSet rs=null;
        String sql="SELECT * FROM book";
        pstmt=conn.prepareStatement(sql);
        rs=pstmt.executeQuery();
        while (rs.next()) {
    %>
    <div class="col">
        <div class="p-3">
            <img src="/bookmarket/resources/images/<%=rs.getString("b_fileName") %>" style="width : 250; height : 350;" />
            <h5><b><%=rs.getString("b_name") %></b></h5>
            <p> <%=rs.getString("b_author") %>
            <br><%=rs.getString("b_publisher") %> | <%=rs.getString("b_unitPrice") %>
            <p> <%=rs.getString("b_description").substring(0,60) %>...
            <p> <%=rs.getString("b_unitPrice") %>원
            <p> <a href="./book.jsp?id=<%=rs.getString("b_id") %>"
        class="btn btn-primary" role="button"> 상세 정보 &raquo;</a>
        </div>
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
    </div>
    <%@ include file="footer.jsp" %>
</div>
</body>
</html>