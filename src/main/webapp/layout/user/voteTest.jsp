<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <jsp:include page="/layout/common/cssConf.jsp"></jsp:include>
</head>


<style>
  .custom-pagination .page-link {
    color: #000; /* 일반 항목 글씨색 */
    background-color: #fff;
    border: 1px solid #000;
  }

  .custom-pagination .page-item.active .page-link {
    color: #fff;
    background-color: #000; /* active 배경 검정 */
    border-color: #000;
  }

  .custom-pagination .page-link:hover {
    background-color: #333;
    color: #fff;
    border-color: #000;
  }
</style>
</head>


<body>
	
    <!-- header section strats -->
    <jsp:include page="/layout/common/header.jsp"></jsp:include>
    
    
    <div class="card p-3 mb-4">
    	<!--  <h5 class="card-title">월별 투표 실적</h5> -->
		<canvas id="myChart"  height="600"> </canvas>
    </div>
      
    <div class="card p-3">
    	<h3>활동 이력</h3>
    	<table class="table table-striped]">
    		<tr>
    			<th>의안 번호</th>
    			<th>제목</th>
    			<th>투표비율</th>
    			<th>날짜</th>
    		</tr>
    		<tr>
    			<td>14934</td>
    			<td>실업급여 금지 </td>
    			 <td>
			        <div class="progress" style="height: 20px;">
			          <div class="progress-bar bg-success" role="progressbar" style="width: 60%;" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100">
			            60%
			          </div>
			          <div class="progress-bar bg-danger" role="progressbar" style="width: 40%;" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100">
			            40%
			          </div>
			        </div>
			    </td>
    			<td>2025-03-04</td>
    		</tr>
    </table>
    <nav aria-label="Page navigation">
		<ul class="pagination justify-content-center custom-pagination">
		  <li class="page-item">
		    <a class="page-link" href="#" aria-label="Previous">
		      <span aria-hidden="true">&laquo;</span>
		    </a>
		  </li>
		  <li class="page-item active"><a class="page-link" href="#">1</a></li>
		  <li class="page-item"><a class="page-link" href="#">2</a></li>
		  <li class="page-item"><a class="page-link" href="#">3</a></li>
		  <li class="page-item">
		    <a class="page-link" href="#" aria-label="Next">
		      <span aria-hidden="true">&raquo;</span>
		    </a>
		  </li>
		</ul>
		</nav>
    </div>
    
    





	<script type="text/javascript">
	const ctx = document.getElementById('myChart').getContext('2d');
	// 그라데이션 생성
	 const gradient = ctx.createLinearGradient(0, 0, 600, 0); // 가로 방향

	  // 🎨 2. 6가지 색상 추가 (빨주노초파보)
	  gradient.addColorStop(0, "#FF0000"); // 빨강
	  gradient.addColorStop(0.2, "#FFA500"); // 주황
	  gradient.addColorStop(0.4, "#FFFF00"); // 노랑
	  gradient.addColorStop(0.6, "#00FF00"); // 초록
	  gradient.addColorStop(0.8, "#0000FF"); // 파랑
	  gradient.addColorStop(1.0, "#800080"); // 보라
  
	const myChart = new Chart(ctx, {
	    type: 'line',
	    data: {
	        labels: ['3월', '4월', '5월', '6월', '7월', '8월'],   // 데이터 가져올 부분
	        datasets: [{
	            label: '월별 투표 수',
	            data: [12, 19, 3, 5, 2, 3],    // 데이터 가져올 부분
	            fill: false,
	            borderColor: gradient,
	            tension: 0.5,  // 곡선정도
	            pointBackgroundColor: '#fff'
	        }]
	    },
	    options: {
	        responsive: true,
	        plugins: {
	          legend: {
	            display: false
	          },
	          title: {
	            display: true,
	            text: '일별 투표 참여 수',
	            font: {
	              size: 16
	            }
	          }
	        },
	        scales: {
	          y: {
	            beginAtZero: true
	          }
	        }
	      }
	    });
	  </script>

	 

  <!-- footer section -->
  <jsp:include page="/layout/common/footer.jsp"></jsp:include>
  <!-- footer section -->
  <jsp:include page="/layout/common/jsConf.jsp"></jsp:include>


</body>
</html>