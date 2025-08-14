<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>의안 상세</title>
    <link rel="stylesheet" href="../css/actdetail.css">
    <style>
        .vote-buttons button {
            padding: 10px 20px;
            margin-right: 10px;
            cursor: pointer;
            background-color: #eee;
            border: 1px solid #ccc;
        }
        .vote-buttons button.active {
            background-color: #4CAF50;
            color: white;
        }
        .comment-section textarea {
            width: 100%;
            height: 80px;
            padding: 5px;
            margin-bottom: 10px;
        }
        .comment-section button {
            padding: 5px 15px;
        }
        .comment-item {
            border-bottom: 1px solid #eee;
            padding: 10px 0;
        }
        .comment-date {
            font-size: 0.8em;
            color: #666;
        }
    </style>
</head>
<body>
    <div class="container">

        <%-- 서블릿에서 보낸 데이터 가져오기 --%>
        <%
            Map<String, String> bill = (Map<String, String>) request.getAttribute("bill");
            List<Map<String, String>> comments = (List<Map<String, String>>) request.getAttribute("comments");
        %>

        <!-- 의안 상세 내용 -->
        <div class="bill-detail">
            <h2><%= bill.get("title") %></h2>
            <p>작성자: <%= bill.get("author") %></p>
            <p>의안 유형: <%= bill.get("type") %></p>
            <p><%= bill.get("content") %></p>
        </div>

        <!-- 찬반 투표 버튼 -->
        <div class="vote-buttons">
            <button id="agreeBtn">찬성</button>
            <button id="disagreeBtn">반대</button>
        </div>

        <!-- 댓글 작성 -->
        <div class="comment-section">
            <h3>댓글</h3>
            <textarea id="commentInput" placeholder="댓글을 작성하세요."></textarea>
            <button id="commentSubmit">등록</button>

            <!-- 댓글 목록 -->
            <div id="commentList">
                <%
                    for(Map<String, String> comment : comments) {
                %>
                    <div class="comment-item">
                        <p><strong><%= comment.get("userName") %></strong>: <%= comment.get("content") %></p>
                        <p class="comment-date"><%= comment.get("createdAt") %></p>
                    </div>
                <%
                    }
                %>
            </div>
        </div>
    </div>

    <!-- JavaScript -->
    <script>
        // 찬반 버튼 클릭 시 색 변하기
        const agreeBtn = document.getElementById('agreeBtn');
        const disagreeBtn = document.getElementById('disagreeBtn');

        agreeBtn.addEventListener('click', function() {
            agreeBtn.classList.add('active');
            disagreeBtn.classList.remove('active');
        });

        disagreeBtn.addEventListener('click', function() {
            disagreeBtn.classList.add('active');
            agreeBtn.classList.remove('active');
        });

        // 댓글 등록 후 목록에 바로 추가
        const commentInput = document.getElementById('commentInput');
        const commentSubmit = document.getElementById('commentSubmit');
        const commentList = document.getElementById('commentList');

        commentSubmit.addEventListener('click', function() {
            const content = commentInput.value.trim();
            if(content === '') {
                alert('댓글을 입력해주세요.');
                return;
            }

            // 새로운 댓글 요소 만들기
            const commentItem = document.createElement('div');
            commentItem.className = 'comment-item';

            const now = new Date();
            const yyyy = now.getFullYear();
            const mm = String(now.getMonth()+1).padStart(2, '0');
            const dd = String(now.getDate()).padStart(2, '0');
            const hh = String(now.getHours()).padStart(2, '0');
            const min = String(now.getMinutes()).padStart(2, '0');

            commentItem.innerHTML = `
                <p><strong>나</strong>: ${content}</p>
                <p class="comment-date">${yyyy}-${mm}-${dd} ${hh}:${min}</p>
            `;

            commentList.appendChild(commentItem);
            commentInput.value = '';
        });
    </script>
</body>
</html>
