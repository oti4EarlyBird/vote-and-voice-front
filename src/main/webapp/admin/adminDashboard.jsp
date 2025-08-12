<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 대시보드</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<%@ include file="../layout/header.jsp" %>

<div>
  <canvas id="myChart"></canvas>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

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
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  });
</script>
</body>
</html>