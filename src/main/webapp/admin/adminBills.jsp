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
	<h2 style="font-family: sans-serif; margin-right: 60vw;
	">
		의안 목록
		<button
		class="btn btn-write btn-primary disabled"
		onclick="location.href='/vote-and-voice-front/admin/adminBillsWriteFrom.jsp'">
   			등록
   		</button>
	</h2>
	
</div>
<table class="table caption-top tbl-popup" style="width: 70%">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">법안명</th>
      <th scope="col">의안번호</th>
      <th scope="col">소관위원회</th>
      <th scope="col">본회의 의결 결과</th>
      <th scope="col">본회의 의결일</th>
      <th scope="col">   </th>
      <th scope="col">   </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">3</th>
      <td>상법 일부개정법률안</td>
      <td>2204732</td>
      <td>법사위원회</td>
      <td>대안반영폐기</td>
      <td>2025-07-03</td>
      <td>
      	<a href=""
      		class="btn btn-primary disabled"
      		role="button"
      	>
      		수정
      	</a>
      </td>
      <td>
      	<a href="#"
      		class="btn btn-primary disabled"
      		role="button"
      	>
      		삭제
      	</a>
      </td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>방송법 일부개정법률안</td>
      <td>2206839</td>
      <td>과학기술정보방송통신위원회</td>
      <td>대안반영폐기</td>
      <td>2025-08-05</td>
      <td>
      	<a href=""
      		class="btn btn-primary disabled"
      		role="button"
      	>
      		수정
      	</a>
      </td>
      <td>
      	<a href="#"
      		class="btn btn-primary disabled"
      		role="button"
      	>
      		삭제
      	</a>
      </td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>상법 일부개정법률안</td>
      <td>2206839</td>
      <td>법사위원회</td>
      <td>대안반영폐기</td>
      <td>2025-07-03</td>
      <td>
      	<a href=""
      		class="btn btn-primary disabled"
      		role="button"
      	>
      		수정
      	</a>
      </td>
      <td>
      	<a href="#"
      		class="btn btn-primary disabled"
      		role="button"
      	>
      		삭제
      	</a>
      </td>
    </tr>
  </tbody>
</table>
<jsp:include page="/layout/common/footer.jsp"></jsp:include>

</body>
</html>