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
<link rel="stylesheet" type="text/css" href="/vote-and-voice-front/admin/adminPopup.css">
<jsp:include page="/layout/common/cssConf.jsp"></jsp:include>
</head>
<body>
<%@ include file="/layout/common/header.jsp" %>
<div class="container">
  <div class="row justify-content-center">
    <div class="col-md-6">
      <div class="search-container">
        <input type="text" class="form-control search-input" placeholder="Search...">
        <i class="fas fa-search search-icon"></i>
      </div>
    </div>
  </div>
</div>
<div class="title-container">
	<h2 style="font-family: sans-serif; margin-right: 60vw;">
		회원 목록
	</h2>
	
</div>
<table class="table caption-top tbl-popup" style="width: 70%">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">회원명</th>
      <th scope="col">가입일자</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">3</th>
      <td>홍길동</td>
      <td>2025-08-11</td>
      <td>
      	<a href=""
      		class="btn btn-primary disabled"
      		role="button"
      	>
      		탈퇴
      	</a>
      </td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>고길동</td>
      <td>2025-08-10</td>
      <td>
      	<a href=""
      		class="btn btn-primary disabled"
      		role="button"
      	>
      		탈퇴
      	</a>
      </td>
    </tr>
    <tr>
      <th scope="row">1</th>
      <td>김길동</td>
      <td>2025-08-09</td>
      <td>
      	<a href=""
      		class="btn btn-primary disabled"
      		role="button"
      	>
      		탈퇴
      	</a>
      </td>
    </tr>
  </tbody>
</table>
<jsp:include page="/layout/common/footer.jsp"></jsp:include>

</body>
</html>