<%@ page contentType="text/html; charset=utf-8" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">

<div class="container"> 
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom"> 
        
        <div class="col-md-3 mb-2 mb-md-0"> 
            <a href="./welcome.jsp" class="d-flex align-items-center link-dark text-decoration-none gap-2"> 
                <img src="/aptweb/resources/images/home.jpg" alt="Home" width="30" height="30" class="rounded">
                <span class="fs-4 fw-bold text-dark tracking-tight">AptWeb</span>
            </a> 
        </div> 

        <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0 fw-semibold"> 
            <li><a href="./welcome.jsp" class="nav-link px-3 link-dark">홈</a></li> 
            <li><a href="./facilitys.jsp" class="nav-link px-3 link-secondary hover-primary">시설예약</a></li> 
            <li><a href="./notice.jsp" class="nav-link px-3 link-secondary">공지사항</a></li> 
        </ul> 

        <div class="col-md-3 text-end"> 
            <a href="./login.jsp" class="btn btn-outline-dark me-2 fw-medium shadow-sm" role="button">
                <i class="bi bi-box-arrow-in-right me-1"></i> 로그인
            </a> 
            <a href="./myPage.jsp" class="btn btn-primary fw-medium shadow-sm" role="button">
                <i class="bi bi-person-circle me-1"></i> 마이페이지
            </a> 
        </div> 
        
    </header> 
</div>

<style>
    .nav-link {
        transition: color 0.2s ease-in-out;
    }
    .nav-link:hover {
        color: #0d6efd !important;
    }
</style>