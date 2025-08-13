<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">


    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>회원가입</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%= request.getContextPath() %>/css/custom.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container d-flex justify-content-center align-items-center" style="min-height: 100vh;">

    <div class="card p-4 login-card" style="width: 400px;">
        <h3 class="card-title text-center mb-4">회원가입</h3>

        <% String error = (String) request.getAttribute("error");
           if(error != null) { %>
        <div class="alert alert-danger"><%= error %></div>
        <% } %>

        <form action="<%= request.getContextPath() %>/user/signup" method="post">
            <div class="mb-3">
                <label class="form-label">이름</label>
                <input type="text" class="form-control" name="name" placeholder="이름을 입력하세요" required>
            </div>
            <div class="mb-3">
                <label class="form-label">생년월일</label>
                <input type="date" class="form-control" name="birth" required>
            </div>
            <div class="mb-3">
                <label class="form-label">이메일</label>
                <input type="email" class="form-control" name="email" placeholder="이메일을 입력하세요" required>
            </div>
            <div class="mb-3">
                <label class="form-label">아이디</label>
                <input type="text" class="form-control" name="userid" placeholder="아이디를 입력하세요" required>
            </div>
            <div class="mb-3">
                <label class="form-label">비밀번호</label>
                <input type="password" class="form-control" name="password" placeholder="비밀번호를 입력하세요" required>
            </div>
            <div class="mb-3">
                <label class="form-label">비밀번호 확인</label>
                <input type="password" class="form-control" name="confirm" placeholder="비밀번호를 다시 입력하세요" required>
            </div>

            <button type="submit" class="btn btn-primary w-100">회원가입 완료</button>

        </form>

        <div class="mt-3 text-center">
            <a href="<%= request.getContextPath() %>/user/login">이미 계정이 있나요? 로그인</a>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
