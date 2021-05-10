<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<html>

<head>
<title>날짜, interval</title>
</head>
<body>

	<div id="interval">
	</div>
	
	<div id="clock">
	</div>
	
</body>
</html>

<!-- 제이쿼리 호출하기 -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<script>
$(document).ready(function(){
	//fn_interval();
	fn_clock();
});


var cnt=0;
function fn_interval(){
	var inter = setInterval(function(){
		cnt++;
		if(cnt==10){
			clearInterval(inter);
		}
		$('#interval').append("안녕하세요.!!");
		
	}, 1000);	//초마다 생성되는 interval API
}

function fn_clock(){
	var intver = setInterval(function(){
		fn_getDt();
	},1000);
	fn_getDt();
}

function fn_getDt(){
	var dt = new Date();
	var hour = dt.getHours();
	var minute = dt.getMinutes();
	var second = dt.getSeconds();
	
	if(hour < 10){
		hour = "0" + hour;
	}
	
	if(minute < 10){
		minute = "0" + minute;
	}
	
	if(second < 10){
		second = "0" + second;
	}
	
	$('#clock').html(hour + ":" + minute + ":" + second);
}
</script>















