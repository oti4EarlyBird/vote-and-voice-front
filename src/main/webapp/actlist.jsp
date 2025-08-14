<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<style>

</style>
    <meta charset="UTF-8">
    <title>의안 목록</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="/vote-and-voice-front/css/actlist.css" >
</head>
<body class="bg-light">
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
    <hr>
    <table class="table table-bordered table-hover bg-white">
        <thead class="table-secondary">
        <tr>
            <th>번호</th>
            <th>제목</th>
            <th>의안번호</th>
            <th>소관위원회</th>
            <th>본회의 의결 결과</th>
            <th>본회의 의결일</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<Map<String, String>> actList = (List<Map<String, String>>) request.getAttribute("actList");
            for (Map<String, String> act : actList) {
        %>
        <tr>
            <td><%= act.get("num") %></td>
            <td><a href="<%= request.getContextPath() %>/user/actdetail?actnum=<%= act.get("num") %>">
                <%= act.get("title") %>
            </a></td>
            <td><%= act.get("billnum") %></td>
            <td><%= act.get("where") %></td>
            <td><%= act.get("result") %></td>
            <td><%= act.get("date") %></td>
        </tr>
        <% } %>
        </tbody>
    </table>
</div>
<!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
