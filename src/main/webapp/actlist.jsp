<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/layout/common/cssConf.jsp"></jsp:include>
<style>
	.table {
    border: none;
}

	.table th,
	.table td {
	    border: none !important;
	    vertical-align: middle !important;
}

	.table thead th {
	    background-color: #f8f9fa; /* 옅은 회색 헤더 */
	    font-weight: 600;
	    vertical-align: middle;
}	    
	 .table tbody tr {
    	border-bottom: 1px solid #dee2e6; /* 행 구분 얇은 선 */
}

	.table tbody tr:last-child {
   		 border-bottom: none; /* 마지막 줄은 선 제거 */
}

</style>
    <meta charset="UTF-8">
    <title>의안 목록</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="/vote-and-voice-front/css/actlist.css" >
</head>
<body class="bg-light">
<!-- header section strats -->
    <jsp:include page="/layout/common/header.jsp"></jsp:include>
<div class="container mt-5">
	<!-- 검색 박스 -->
    <div class="container">
        <div class="card p-3 mb-4">
            <form class="row g-2" action="billList.jsp" method="get">
                <div class="col-md-10">
                    <input type="text" name="keyword" class="form-control" placeholder="검색어를 입력하세요">
                </div>
                <div class="col-md-2">
                    <button type="submit" class="btn btn-primary w-100">검색</button>
                </div>
            </form>
 		</div>
 	</div>
    <h2 class="mb-4">의안 목록</h2>
    <hr><br>
    <table class="table table-hover align-middle bg-white">
        <thead class="table-light">
        <tr>
            <th class="text-center">번호</th>
            <th class="text-center">제목</th>
            <th class="text-center">의안번호</th>
            <th class="text-center">소관위원회</th>
            <th class="text-center">본회의 의결 결과</th>
            <th class="text-center">본회의 의결일</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<Map<String, String>> actList = (List<Map<String, String>>) request.getAttribute("actList");
            for (Map<String, String> act : actList) {
        %>
        <tr>
            <td class="text-center"><%= act.get("num") %></td>
            <td class="text-center"><a href="<%= request.getContextPath() %>/user/actdetail?actnum=<%= act.get("num") %>">
                <%= act.get("title") %>
            </a></td>
            <td class="text-center"><%= act.get("billnum") %></td>
            <td class="text-center"><%= act.get("where") %></td>
            <td class="text-center"><%= act.get("result") %></td>
            <td class="text-center"><%= act.get("date") %></td>
        </tr>
        <% } %>
        </tbody>
    </table>
    <!-- 페이징 -->
<nav aria-label="Page navigation">
  <ul class="pagination justify-content-center">
    <%
      int currentPage = (int) request.getAttribute("currentPage");
      int totalPages = (int) request.getAttribute("totalPages");

      for (int i = 1; i <= totalPages; i++) {
    %>
      <li class="page-item <%= (i == currentPage) ? "active" : "" %>">
        <a class="page-link" href="?page=<%= i %>"><%= i %></a>
      </li>
    <%
      }
    %>
  </ul>
</nav>
</div>
<!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- footer section -->
  <jsp:include page="/layout/common/footer.jsp"></jsp:include>
  <!-- footer section -->


  <jsp:include page="/layout/common/jsConf.jsp"></jsp:include>
</body>
</html>
