<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Date" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <title>Welcome</title>
</head>
<body>
<div class="container text-center">
    <%@ include file="menu.jsp"%>
     <%!String greeting = "도서 쇼핑몰에 오신 것을 환영합니다!";
     String tagline = "Welcome to Web Market!";%>
     <div class="py-5 text-center bg-body-secondary">
        <div class="container">
        <h1 class="display-4"><%=greeting%></h1>
        <p class="lead">BookMarket</p>
        </div>     
     </div>

    <div class="row row-cols-1 row-cols-md-3 g-4">
        <div class="col">
            <div class="p-3">
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
    <%@ include file="footer.jsp"%>
</div>
</body>
</html>