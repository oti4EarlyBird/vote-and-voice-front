<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>로그인</title>
    <style>
    /* 부드러운 배경 그라데이션 애니메이션 */
@keyframes gradientBG {
  0% {
    background-position: 0% 50%;
  }
  50% {
    background-position: 100% 50%;
  }
  100% {
    background-position: 0% 50%;
  }
}

@keyframes fadeInUp {
  0% {
    opacity: 0;
    transform: translateY(20px);
  }
  100% {
    opacity: 1;
    transform: translateY(0);
  }
}
/* 로그인 카드 스타일 */
.login-card {
    border-radius: 20px !important; /* 모서리 둥글게 */
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15); /* 좀 더 진한 그림자 */
    transition: box-shadow 0.3s ease;
    animation: fadeInUp 0.6s ease forwards !important;
}

/* 마우스 올리면 그림자 강조 */
.login-card:hover {
    box-shadow: 0 12px 30px rgba(0, 0, 0, 0.25) !important;
}
    
    </style>
    <!-- Bootstrap CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="bg-light">

<div class="container d-flex justify-content-center align-items-center" style="min-height: 100vh;">
    <div class="card shadow-sm p-4" style="width: 360px;">
        <h3 class="card-title text-center mb-4">로그인</h3>

        <% 
            String error = (String) request.getAttribute("error");
            if (error != null) {
        %>
        <div class="alert alert-danger" role="alert">
            <%= error %>
        </div>
        <% } %>

        <form action="<%= request.getContextPath() %>/user/login" method="post" novalidate>
            <div class="mb-3">
                <label for="userid" class="form-label">아이디</label>
                <input type="text" class="form-control" id="userid" name="userid" placeholder="아이디를 입력하세요" required />
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">비밀번호</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호를 입력하세요" required />
            </div>
            <button type="submit" class="btn btn-primary w-100">로그인</button>
        </form>

        <div class="mt-3 text-center">
            <a href="<%= request.getContextPath() %>/register.jsp">회원가입 하러 가기</a>
        </div>
    </div>
</div>

<!-- Bootstrap JS Bundle (Popper 포함) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>



