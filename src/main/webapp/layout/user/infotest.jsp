<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>마이페이지 (부트스트랩 통일)</title>

	<!--  Link to Boxicons websirte for including icons -->
	<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
	<!-- Link to CSS file -->
	<link rel="stylesheet" href="mypage.css">
	<jsp:include page="/layout/common/cssConf.jsp"></jsp:include>

</head>
<body class="sub_page">
  <div class="d-flex">
    <!-- ✅ 사이드바 -->
    <aside class="sidebar bg-primary text-white p-3">
      <h2 class="h5 text-white">마이페이지</h2>
      <nav class="nav flex-column">
        <a class="nav-link text-white" href="#profile-edit"><i class="fa fa-user mr-2"></i>내 정보 수정</a>
        <a class="nav-link text-white" href="#vote-history"><i class="fa fa-check-square-o mr-2"></i>투표 기록</a>
        <a class="nav-link text-white" href="#comments"><i class="fa fa-comments mr-2"></i>댓글 목록</a>
        <a class="nav-link text-white" href="#interests"><i class="fa fa-star mr-2"></i>관심 키워드</a>
        <a class="nav-link text-white" href="#settings"><i class="fa fa-cog mr-2"></i>설정</a>
        <a class="nav-link text-white" href="/api/user/logout" onclick="event.preventDefault(); alert('로그아웃 처리 구현 필요');"><i class="fa fa-sign-out mr-2"></i>로그아웃</a>
      </nav>
    </aside>

    <!-- ✅ 메인 컨텐츠 -->
    <main class="flex-grow-1 p-4 bg-light">
      <!-- 내 정보 수정 -->
      <section id="profile-edit" class="mb-4 card p-4">
        <h3 class="mb-3">내 정보 수정</h3>
        <form id="profileForm" onsubmit="event.preventDefault(); handleProfileSave();">
          <div class="form-group">
            <label for="name">이름</label>
            <input type="text" class="form-control" id="name" name="name" value="홍길동" required>
          </div>
          <div class="form-group">
            <label for="email">이메일</label>
            <input type="email" class="form-control" id="email" name="email" value="honggildong@example.com" required>
          </div>
          <div class="form-group">
            <label for="currentPassword">현재 비밀번호 확인</label>
            <input type="password" class="form-control" id="currentPassword" name="currentPassword" required>
          </div>
          <div class="form-group">
            <label for="newPassword">새 비밀번호 (변경하려면 입력)</label>
            <input type="password" class="form-control" id="newPassword" name="newPassword">
          </div>
          <button type="submit" class="btn btn-primary">저장하기</button>
        </form>
      </section>

      <!-- 투표 기록 -->
      <section id="vote-history" class="mb-4 card p-4">
        <h3 class="mb-3">투표 기록</h3>
        <ul class="list-group">
          <li class="list-group-item">의안 12345 - 찬성</li>
          <li class="list-group-item">의안 67890 - 반대</li>
          <li class="list-group-item">의안 13579 - 찬성</li>
        </ul>
      </section>

      <!-- 댓글 목록 -->
      <section id="comments" class="mb-4 card p-4">
        <h3 class="mb-3">댓글 목록</h3>
        <ul class="list-group">
          <li class="list-group-item">의안 12345: "좋은 의견입니다."</li>
          <li class="list-group-item">의안 67890: "다른 의견도 고려해주세요."</li>
        </ul>
      </section>

      <!-- 관심 키워드 -->
      <section id="interests" class="mb-4 card p-4">
        <h3 class="mb-3">관심 키워드</h3>
        <ul class="list-inline">
          <li class="list-inline-item badge badge-primary p-2">환경</li>
          <li class="list-inline-item badge badge-primary p-2">교육</li>
          <li class="list-inline-item badge badge-primary p-2">복지</li>
        </ul>
      </section>

      <!-- 설정 -->
      <section id="settings" class="card p-4 border-danger">
        <h3 class="text-danger">설정</h3>
        <button class="btn btn-danger" onclick="handleDeleteAccount()">회원 탈퇴하기</button>
      </section>
    </main>
  </div>
  
  
  

	<!-- footer section -->
	<jsp:include page="/layout/common/footer.jsp"></jsp:include>
	<!-- footer section -->
	
	
	<jsp:include page="/layout/common/jsConf.jsp"></jsp:include>

  <!-- JS (Bootstrap JS 필요 시 추가) -->
  <script>
    function handleProfileSave() {
      const name = document.getElementById('name').value;
      const email = document.getElementById('email').value;
      const currentPassword = document.getElementById('currentPassword').value;
      const newPassword = document.getElementById('newPassword').value;

      if (!name || !email || !currentPassword) {
        alert('필수 항목을 모두 입력해주세요.');
        return;
      }
      alert(`이름: ${name}\n이메일: ${email}\n비밀번호 변경 여부: ${newPassword ? '예' : '아니오'}`);
    }

    function handleDeleteAccount() {
      if(confirm('정말 회원 탈퇴를 진행하시겠습니까?')) {
        alert('회원 탈퇴 요청이 서버로 전송되었습니다.');
      }
    }
  </script>
</body>
</html>
