<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
