<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/layout/common/cssConf.jsp"></jsp:include>


<!--  Link to Boxicons websirte for including icons -->
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
<!-- Link to CSS file -->
<link rel="stylesheet" href="/vote-and-voice-front/css/mypage/mypage.css">
</head>


<body>
	<!-- header section strats -->
	<jsp:include page="/layout/common/header.jsp"></jsp:include>

	<div class="mypage-container" style="display: flex;">
		<!-- start : mypage nav  -->
		<nav class="sidebar">
			<ul>
				<li><a href="#" class="nav-link active" data-target="profile-edit"> <span
						class="item-icon"> <i class='bx bxs-user'></i>
					</span> <span class="item-txt">HOME</span>
				</a></li>
				<li><a href="" class="nav-link" data-target="vote-history"> <span
						class="item-icon"> <i class='bx bxs-hand'></i>
					</span> <span class="item-txt">VOTE</span>
				</a></li>
				<li><a href="#" class="nav-link" data-target="withdrawal"> <span class="item-icon">
							<i class='bx bx-log-out'></i>
					</span> <span class="item-txt">EXIT</span>
				</a></li>
			</ul>
		</nav>
		<!-- end: mypage nav -->




		<!--  sidebar을 선택하는 것에 따라서 다른 화면을 보여줘야 함  -->
		<!-- Content -->
		<main class="flex-grow-1 p-4 bg-light">
			<!-- 내 정보 수정 -->
		    <div id="profile-edit" class="content-section" style="display: block;">
		        <jsp:include page="/layout/user/mypage/mypageInfo.jsp"></jsp:include>
		    </div>
		
		    <!-- 투표 참여 이력 -->
		    <div id="vote-history" class="content-section" style="display: none;">
		        <jsp:include page="/layout/user/mypage/activityHistory.jsp"></jsp:include>
		    </div>
		
		    <!-- 탈퇴 -->
		    <div id="withdrawal" class="content-section" style="display: none;">
		        <jsp:include page="/layout/user/mypage/withdrawal.jsp"></jsp:include>
   			</div>
		</main>

	</div>




	<!-- .sidebar에 따른 화면 전환 -->
	<script>
		document.addEventListener('DOMContentLoaded', function () {
		    const links = document.querySelectorAll('.nav-link');
		    const sections = document.querySelectorAll('.content-section');
		
		    links.forEach(link => {
		        link.addEventListener('click', function (e) {
		            e.preventDefault();
		
		            // Remove active class from all links
		            links.forEach(l => l.classList.remove('active'));
		
		            // Hide all sections
		            sections.forEach(section => section.style.display = 'none');
		
		            // Add active class to clicked link
		            this.classList.add('active');
		
		            // Show the corresponding section
		            const targetId = this.getAttribute('data-target');
		            const targetSection = document.getElementById(targetId);
		            if (targetSection) {
		                targetSection.style.display = 'block';
		            }
		        });
		    });
		
		    // 기본 탭 활성화 (첫 번째)
		    /*
		    if (links.length > 0) {
		        links[0].click();
		    }
		    */
		});
		</script>








	<!-- footer section -->
	<jsp:include page="/layout/common/footer.jsp"></jsp:include>
	<!-- footer section -->


	<jsp:include page="/layout/common/jsConf.jsp"></jsp:include>
</body>
</html>
