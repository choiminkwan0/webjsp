<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Date" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <title>Welcome</title>
</head>
<body class="bg-light">
<div class="container py-4">
    <%@ include file="header.jsp"%>
    <%!
        String greeting = "안녕하세요! 환영합니다.";
        String tagline = "Welcome to Apt Web!";
    %>
     <div class="p-5 mb-4 bg-body-tertiary rounded-3 shadow-sm text-center">
        <div class="container-fluid py-3">
        <h1 class="display-5 fw-bold text-dark"><%=greeting%></h1>
        <p class="lead">AptWeb</p>
        </div>     
     </div>

    <div class="row justify-content-center my-5">
        <div class="col-md-6 col-lg-5">
            <div class="card h-100 shadow-sm border-0">
                <div class="card-body p-4 text-center">
            <h3><%=tagline%></h3>
            <%
                Date day = new java.util.Date();
                String am_pm;
                int hour = day.getHours();
                int minute = day.getMinutes();
                int second = day.getSeconds();
                if (hour / 12 == 0) {
                    am_pm = "AM";
                } else {
                    am_pm = "PM";
                    hour = hour - 12;
                }
                String CT = hour + ":" + minute + ":" + second + " " + am_pm;
                out.println("현재 접속 시각: " + CT + "\n");
                response.setIntHeader("Refresh", 5);
            %>
            <p> <%=(new java.util.Date()) %>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="footer.jsp"%>
</div>
</body>
</html>