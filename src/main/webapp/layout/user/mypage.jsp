<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/layout/common/cssConf.jsp"></jsp:include>


<!--  Link to Boxicons websirte for including icons -->
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<!-- Link to CSS file -->
<link rel="stylesheet" href="mypage.css">
</head>


<body>
    <!-- header section strats -->
    <jsp:include page="/layout/common/header.jsp"></jsp:include>

	<div class="mypage-container" style="display: flex;">
	 	<!-- start : mypage nav  -->
		<nav class="sidebar">
			<ul>
				<li>
					<a href="#profile-edit" class="nav-link" >
						<span class="item-icon">
							<i class='bx bxs-user'></i>
						</span>
						<span class="item-txt">HOME</span>
					</a>
				</li>
				<li>
					<a href="#vote-history" class="nav-link">
						<span class="item-icon">
							<i class='bx bxs-hand' ></i>
						</span>
						<span class="item-txt">VOTE</span>
					</a>
				</li>
				<li>
					<a href="#" class="nav-link">
						<span class="item-icon">
							<i class='bx bx-game'></i>
						</span>
						<span class="item-txt">ACTIVE</span>
					</a>
				</li>
				<li>
					<a href="#" class="nav-link">
						<span class="item-icon">
							<i class='bx bx-log-out'></i>
						</span>
						<span class="item-txt">EXIT</span>
					</a>
				</li>
			</ul>
		</nav>
		<!-- end: mypage nav -->




	<!--  sidebar을 선택하는 것에 따라서 다른 화면을 보여줘야 함  -->
	<!-- Content -->
	<!-- ***** -->
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
		
		<!-- 알림 수신 여부 -->
		<section id="" class="mb-4 card p-4">
			<h3>알림 수신 여부 설정</h3>
			<form action="">
				<div class="form-check">
			      <input class="form-check-input" type="checkbox" id="pushNotify">
			      <label class="form-check-label" for="pushNotify">
			        푸시 알림 받기
			      </label>
			    </div>
			    <button type="submit" class="btn btn-primary mt-3">저장하기</button>
			</form>
		</section>
		
		
		
		<!--  투표 참여 이력 -->
			<!-- chart.js -->
			<!-- 게시판 형태 기록 -->	
			
			
			
			
			
	</main>

	
	
	
	
	<!-- ***** -->

	
	
	</div>






	<!-- footer section -->
	<jsp:include page="/layout/common/footer.jsp"></jsp:include>
	<!-- footer section -->
	
	
	<jsp:include page="/layout/common/jsConf.jsp"></jsp:include>
</body>
</html>
