<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap Icons -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<jsp:include page="/layout/common/cssConf.jsp"></jsp:include>
</head>
<body>
	<%@ include file="/layout/common/header.jsp"%>
	<div class="title-container">
		<h2 style="font-family: sans-serif; margin-right: 60vw; text-align: center;">
			의안 상세
		</h2>
	</div>
	<div class="tbl-container" align="center">
		<table class="table caption-top tbl-popup" style="width: 70%">
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">10</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">법안명</th>
					<td>방송법 일부개정법률안</td>
				</tr>
				<tr>
					<th scope="row">의안번호</th>
					<td>2206839</td>
				</tr>
				<tr>
					<th scope="row">소관위원회</th>
					<td>과학기술정보방송통신위원회</td>
				</tr>
				<tr>
					<th scope="row">본회의의결일</th>
					<td>2025-08-05</td>
				</tr>
				<tr>
					<th scope="row">본회의의결결과</th>
					<td>대안반영폐기</td>
				</tr>
				<tr>
					<td></td>
					<td><a href="">링크</a></td>
				</tr>
				<tr>
					<td><button>찬성</button></td>
					<td><button>반대</button></td>
				</tr>
			</tbody>
		</table>
		
		<textarea id="content" name="content" placeholder="내용을 입력하세요"
			style="width: 70vw; height: 5vh;"></textarea>
		<button>등록</button>
		
		<table class="table caption-top tbl-popup" style="width: 50%">
			<thead>
				<tr>
					<th scope="col">박**</th>
					<th scope="col">2025.08.11</th>
					<th scope="col"><button>삭제</button></th>
					<th scope="col"><button>숨김</button></th>
				</tr>
			</thead>
			<tr>
				<td>방송 생태계를 향상시킬 법안이라고 생각합니다!</td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td><button>대댓글</button></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</table>
	</div>
	<jsp:include page="/layout/common/footer.jsp"></jsp:include>
</body>
</html>