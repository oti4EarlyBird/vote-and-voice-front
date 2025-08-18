<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="/layout/common/cssConf.jsp"></jsp:include>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/actdetail.css">
    <meta charset="UTF-8">
    <title>의안 상세</title>
</head>
<body>
    <%-- 헤더 --%>
    <jsp:include page="/layout/common/header.jsp"></jsp:include>

        <div class="my-container">
            <%-- 서블릿에서 보낸 데이터 --%>
            <%
            Map<String, String> bill = (Map<String, String>) request.getAttribute("bill");
            List<Map<String, String>> comments = (List<Map<String, String>>) request.getAttribute("comments");
            %>

            <!-- 의안 상세 -->
            <div class="bill-detail">
                <h2><%=bill.get("title")%></h2>
                <hr class="boldhr">
                <p>번호 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=bill.get("num")%></p>
                <hr>
                <p>의안번호 &nbsp;&nbsp;<%=bill.get("billnum")%></p>
                <hr>
                <p>소관위원회 &nbsp;&nbsp;<%=bill.get("where")%></p>
                <hr>
                <p>본회의 의결일 &nbsp;&nbsp;<%=bill.get("date")%></p>
                <hr>
                <p>본회의 의결 결과 &nbsp;&nbsp;<%=bill.get("result")%></p>
                <hr class="boldhr">
                <div style="white-space: pre-line;"><%=bill.get("content")%></div><br>
            </div>

            <!-- 찬반 버튼 -->
            <div class="vote-buttons">
                <button type="button" id="voteYes" class="btn btn-outline-success">찬성</button>
                <button type="button" id="voteNo" class="btn btn-outline-danger">반대</button>
            </div>

            <!-- 차트 -->
            <div style="width: 300px; margin: 20px auto;">
                <canvas id="voteChart"></canvas>
            </div>
            <div id="voteCount" style="text-align: center; font-size: 1.2em; margin-top: 10px; display: none;">
                찬성 0표 | 반대 0표
            </div>

            <!-- 댓글 -->
            <div class="comment-section">
                <h3>댓글</h3>
                <textarea id="commentInput" placeholder="댓글을 작성하세요."></textarea>
                <div style="text-align: right; font-size: 0.9em; color: #666;">
                    <span id="charCount">0/1000</span>
                </div>
                <button type="button" class="btn btn-outline-secondary" id="commentSubmit">등록</button>

                <div id="commentList">
                    <%
                    for (Map<String, String> comment : comments) {
                    %>
                    <div class="comment-item">
                        <button type="button" class="btn btn-sm btn-outline-danger report-btn">신고</button>
                        <p><strong><%=comment.get("userName")%></strong></p>
                        <p><%=comment.get("content")%></p>
                        <p class="comment-date"><%=comment.get("createdAt")%></p>
                        <button type="button" class="btn btn-outline-secondary">대댓글</button>
                    </div>
                    <%
                    }
                    %>
                </div>
            </div>
        </div>

    <%-- JS --%>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
    document.addEventListener('DOMContentLoaded', function() { 
        // ----- 찬반 투표 -----
        let agreeCount = 0; 
        let disagreeCount = 0; 
        let hasVoted = false; 

        const canvas = document.getElementById('voteChart');
            const ctx = canvas.getContext('2d');
            const voteChart = new Chart(ctx, { 
            type: 'doughnut', 
            data: { 
                labels: ['찬성','반대'], 
                datasets: [{ data:[agreeCount, disagreeCount], backgroundColor:['#28a745','#dc3545'] }] 
            }, 
            options: { 
                responsive:true, 
                plugins:{ 
                    legend:{ position:'bottom' }, 
                    tooltip:{ callbacks:{ 
                        label:function(context){ 
                            const total = agreeCount + disagreeCount; 
                            const value = context.raw; 
                            const percentage = total ? ((value/total)*100).toFixed(1) : 0; 
                            return context.label + ': ' + value + '표 (' + percentage + '%)';
                        } 
                    } } 
                } 
            } 
        }); 

        function updateVoteDisplay(){ 
            voteChart.data.datasets[0].data = [agreeCount, disagreeCount]; 
            voteChart.update(); 
            voteCountDiv.style.display='block'; 
            voteCountDiv.textContent = '찬성 ' + agreeCount + '표 | 반대 ' + disagreeCount + '표';
        } 

        document.getElementById("voteYes")?.addEventListener('click', function(){ 
            if(hasVoted){ alert("이미 투표하셨습니다."); return; } 
            agreeCount++; 
            hasVoted=true; 
            updateVoteDisplay(); 
        }); 

        document.getElementById("voteNo")?.addEventListener('click', function(){ 
            if(hasVoted){ alert("이미 투표하셨습니다."); return; } 
            disagreeCount++; 
            hasVoted=true; 
            updateVoteDisplay(); 
        }); 

        // ----- 댓글 -----
        const commentInput = document.getElementById('commentInput'); 
        const charCount = document.getElementById('charCount'); 
        const commentSubmit = document.getElementById('commentSubmit'); 
        const commentList = document.getElementById('commentList'); 

        commentInput?.addEventListener('input', function(){ 
            let len = commentInput.value.length; 
            if(len>1000){ commentInput.value=commentInput.value.substring(0,1000); len=1000; } 
            charCount.textContent = len + '/1000'; 
        }); 

        commentSubmit?.addEventListener('click', function(){ 
            const content = commentInput.value.trim(); 
            if(content===''){ alert('댓글을 입력해주세요.'); return; } 
            const commentItem = document.createElement('div'); 
            commentItem.className='comment-item'; 

            const now = new Date(); 
            const yyyy = now.getFullYear(); 
            const mm = String(now.getMonth()+1).padStart(2,'0'); 
            const dd = String(now.getDate()).padStart(2,'0'); 
            const hh = String(now.getHours()).padStart(2,'0'); 
            const min = String(now.getMinutes()).padStart(2,'0'); 

            commentItem.innerHTML = '<p><strong>나</strong>: '+content+'</p>' +
                                    '<p class="comment-date">'+yyyy+'-'+mm+'-'+dd+' '+hh+':'+min+'</p>'; 
            commentList.appendChild(commentItem); 
            commentInput.value=''; 
            charCount.textContent='0/1000'; 
        }); 
    });
    </script>

    <%-- footer --%>
    <jsp:include page="/layout/common/footer.jsp"></jsp:include>
    <jsp:include page="/layout/common/jsConf.jsp"></jsp:include>
</body>
</html>
