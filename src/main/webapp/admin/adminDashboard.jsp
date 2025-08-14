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
<!-- JQUERY -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- CHARTJS -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<link rel="stylesheet" type="text/css" href="/vote-and-voice-front/admin/adminDashboard.css">
</head>
<body>
<%@ include file="/layout/header.jsp" %>
<div style="text-align: center;">
	<!-- bootstrap card component 활용 -->
	<div class="card horizontal-pie-chart-container" style="display: inline-block; position: relative; height: 50vh; width: 30vw; margin-left: 2.5vw">
		<div class="card-header">
			주요 법안 투표 통계
		</div>
		<div class="card-body pie-chart-container">
			<canvas id="myPieChart"></canvas>
		</div>
	</div>
	<div class="card horizontal-bar-chart-container" style="display: inline-block; position: relative; height: 50vh; width: 50vw; margin-left: 2.5vw">
		<div class="card-header">
			법안별 투표 통계
		</div>
		<div class="card-body bar-chart-container">
			<canvas id="myChart"></canvas>
		</div>
	</div>
</div>
<!-- 법안별 찬/반 투표 horizontal bar chart 통계 -->
<script>
	const ctx = document.getElementById('myChart');
	
	new Chart(ctx, {
	  type: 'bar',
	  data: {
	    labels: ['상법 일부개정법률안', '방송법 일부개정법률안', '고용보험법 일부개정법률안', '민법 일부개정법률안(대안)', '지역사랑상품권 이용 활성화에 관한 법률 일부개정법률안',
	  			'정보통신망 이용촉진 및 정보보호 등에 관한 법률 일부개정법률안(대안)'],
	    datasets: [{
	      label: '법안별 투표 참여자 수',
	      data: [12, 19, 3, 5, 2, 3],
	      borderWidth: 1
	    }]
	  },
	  options: {
	        indexAxis: 'y', // 이 부분이 바 차트를 가로로 만듭니다.
	        responsive: true,
	        maintainAspectRatio: false,
	        scales: {
	          x: { // 가로 막대이므로 x축이 값이 됩니다.
	            beginAtZero: true
	          },
	          y: { // y축이 레이블이 됩니다.
	            ticks: {
	              maxRotation: 0,
	              minRotation: 0,
	              autoSkip: false
	            }
	          }
	        }
	  }
	});
</script>
<!-- HOT 법안에 대한 찬/반 투표 파이 차트 통계 -->
<script>
const ctxPie = document.getElementById('myPieChart');

new Chart(ctxPie, {
  type: 'pie',
  data: {
    labels: ['찬성', '반대'],
    datasets: [{
      label: '고용보험법 일부개정법률안',
      data: [16, 84],
      borderWidth: 1
    }]
  },
  options: {
	    responsive: true, // 부모 컨테이너에 맞게 크기 조절
	    maintainAspectRatio: false, // 비율 유지 안 함
	    plugins: {
	      legend: {
	        position: 'bottom' // 범례 위치를 아래로 이동
	      }
	   }
  }
});
</script>
</body>
</html>