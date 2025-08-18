<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {
	    background-color: #f8f9fa;
	    padding-top: 50px;
	}
	.form-login {
	    max-width: 330px;
	    padding: 15px;
	    margin: auto;
	}
	.form-login .form-control {
	    position: relative;
	    box-sizing: border-box;
	    height: auto;
	    padding: 10px;
	    font-size: 16px;
	}
</style>
<%@ include file="/layout/common/header.jsp" %>
<%@ include file="/layout/common/cssConf.jsp" %>
</head>
<body>
    <div class="container">
        <%-- Check if user is logged in --%>
        <%
            String username = (String) session.getAttribute("username");
            if (username == null) {
        %>
        <!-- Login Form -->
        <form class="form-login" method="post" action="login.jsp">
            <h2 style="font-family: sans-serif" class="mb-3">관리자 로그인</h2>
            <p style="color: gray">Vote & Voice 에 오신 것을 환영합니다.</p>
            <% if (request.getParameter("error") != null) { %>
                <div class="alert alert-danger" role="alert">
                    Invalid username or password!
                </div>
            <% } %>
            <div class="mb-3">
                <input type="text" placeholder="아이디를 입력해주세요" id="username" name="username" class="form-control" required>
            </div>
            <div class="mb-3">
                <input type="password" placeholder="비밀번호를 입력해주세요" id="password" name="password" class="form-control" required>
            </div>
            <button type="button" onclick="alert('로그인')" style="border: none;">
            	<img src="/vote-and-voice-front/images/kakaologin.png"/>
            </button>
            <br><br>
            <button class="btn btn-primary" type="submit">로그인</button>
        </form>
        <% } else { %>
        <!-- Logout Form -->
        <form class="form-login" method="post" action="logout.jsp">
            <h2 class="mb-3">Welcome, <%= username %>!</h2>
            <button class="btn btn-primary" type="submit">Logout</button>
        </form>
        <% } %>
    </div>
    <jsp:include page="/layout/common/footer.jsp"></jsp:include>
	<jsp:include page="/layout/common/jsConf.jsp"></jsp:include>
</body>
</html>