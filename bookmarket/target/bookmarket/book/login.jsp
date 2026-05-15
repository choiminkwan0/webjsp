<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<title>Security</title>
</head>
<body>
<div class="container text-center">
  <%@ include file="menu.jsp" %>

  <div class="py-5 text-center bg-body-secondary">
  <div class="container">
  <h1 class="display-4">로그인</h1>
  <p class="lead">Login</p>
  </div>
</div>

<div class="container text-center">
  <div class="row align-items-start">
    <div class="col">
        <h3>Please sign in</h3>
        <%
            String error=request.getParameter("error");
            if (error!=null) {
                out.println("<div class='alert alert-danget'>");
                out.println("아이디와 비밀번호를 확인해 주세요");
                out.println("</div>");
            }
        %>
        <form class="form-horizontal" action="j_security_check" method="post">
        <div class="row mb-3">
            <input type="text" class="form-control" name="j_username" required autofucus>
            <label for="floatingInput" class="col-sm-2 col-form-label">ID</label>
        </div>
        <div class="row mb-3">
            <input type="password" class="form-control" name="j_password">
            <label for="floatingInput" class="col-sm-2 col-form-label">Password</label>
        </div>
        <button class="btn btn-primary" type="submit">로그인</button>
        </form>
    </div>
</div>
<%@ include file="footer.jsp" %>
</div>
</body>
</html>