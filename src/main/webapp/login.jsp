<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<jsp:include page="/layout/common/cssConf.jsp"></jsp:include>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/login.css">
<title>로그인</title>

<!-- Bootstrap CSS CDN -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet" />

</head>
<body class="bg-light">
	<!-- header section strats -->
	<jsp:include page="/layout/common/header.jsp"></jsp:include>
	<div class="container d-flex justify-content-center align-items-center"
		style="min-height: 100vh;">
		<div class="card shadow-sm p-4" style="width: 360px;">
			<h3 class="card-title text-center mb-4">회원 로그인</h3>
			<h8 class="card-title text-center mb-4">Vote&Voice에 온것을 환영합니다.</h8>
			<%
			String error = (String) request.getAttribute("error");
			if (error != null) {
			%>
			<div class="alert alert-danger" role="alert">
				<%=error%>
			</div>
			<%
			}
			%>

			<form action="<%=request.getContextPath()%>/user/login" method="post"
				novalidate>
				<div class="mb-3">
					<label for="userid" class="form-label">아이디</label> <input
						type="text" class="form-control" id="userid" name="userid"
						placeholder="아이디를 입력하세요" required />
				</div>
				<div class="mb-3">
					<label for="password" class="form-label">비밀번호</label> <input
						type="password" class="form-control" id="password" name="password"
						placeholder="비밀번호를 입력하세요" required />
				</div>
				<!-- 부트스트랩 + 카카오 로그인 이미지 -->
				<button type="button" class="btn btn-primary w-100 p-0"
					style="background-color: transparent; border: none;">
					<img
						src="https://developers.kakao.com/tool/resource/static/img/button/login/full/ko/kakao_login_large_wide.png"
						alt="카카오 로그인"
						style="width: 100%; height: 38px; display: block; margin: 5px auto;">
				</button>

				<button type="submit" class="btn btn-primary w-100">로그인</button>
			</form>

			<div class="link-group">
				<a href="/findId">아이디 찾기</a> <span class="divider">|</span> 
				<a href="/resetPw">비밀번호 재설정</a> <span class="divider">|</span> 
				<a href="<%=request.getContextPath()%>/signup.jsp" class="singup">회원가입</a>
			</div>
		</div>
	</div>
	<style>
		.link-group a {
			text-decoration: none;
			color: gray;
		}
	</style>
	<!-- Bootstrap JS Bundle (Popper 포함) -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
	<!-- footer section -->
	<jsp:include page="/layout/common/footer.jsp"></jsp:include>
	<!-- footer section -->


	<jsp:include page="/layout/common/jsConf.jsp"></jsp:include>
</body>
</html>



