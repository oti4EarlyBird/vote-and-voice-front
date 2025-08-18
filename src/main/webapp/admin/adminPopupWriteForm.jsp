<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>관리자 대시보드</title>
	<!-- Bootstrap CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- Bootstrap Icons -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
	<!-- CHARTJS -->
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<!-- 검색 바 모양 불러오는 cdn 링크 -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="/vote-and-voice-front/admin/adminPopupWriteForm.css">
	<jsp:include page="/layout/common/cssConf.jsp"></jsp:include>
</head>
<body>
<%@ include file="/layout/common/header.jsp" %>
<h3 style="text-align:center; font-family: sans-serif;">공지사항 작성</h3>
<div class="form-container" style="text-align: center;">
	<form action="write.jsp" method="post">
	  <input type="text" id="title" name="title" placeholder="제목을 입력하세요" style="width: 82vw;"><br><br>
	  <textarea id="content" name="content" placeholder="내용을 입력하세요" style="width: 82vw; height: 34.05vh;"></textarea><br><br>
	  <input type="submit" value="등록">
	</form>
	<br>
</div>
<jsp:include page="/layout/common/footer.jsp"></jsp:include>
</body>
</html>