<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<html>

<head>
<title>jquery 이벤트</title>
</head>

<body>
	<div style="width:100px; height:100px; background-color:black; " id="contentsArea">
		
	</div>
	
	<input type="button" class="btn" value="yellow" w="200px" h="300px" />
	<input type="button" class="btn" value="red" w="150px" h="200px" />
	<input type="button" class="btn" value="blue" w="500px" h="1000px" />
	
	<br /><br /><br /><br /><br /><br /><br />
	<div>
		<select id="select" name="select">
			<option value="">===사이트를 검색하세요===</option>
			<option value="http://www.naver.com">네이버</option>
			<option value="http://www.daum.net">다음</option>
			<option value="http://google.com">구글</option>
		</select>
	</div>
	
	<div style="width:100px; height:100px; background-color:black;" id="contentsArea2">
		
	</div>
	<br /><br /><br /><br /><br /><br /><br />
</body>

</html>

<!-- 제이쿼리 호출하기 -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>


<script>

/*jquery를 이용해  sample6.jsp 이벤트 구현
click change hover mousedown mouseup mouseenter mousemove mouseleave scroll keypress keydown keyup....*/
 
 /*
 클릭 이벤트
 */
$('.btn').bind('click', function(){
	 $('#contentsArea').css('background-color', $(this).val());
	 $('#contentsArea').css('width', $(this).attr('w'));
	 $('#contentsArea').css('height', $(this).attr('h'));
});


/*
체인지 이벤트
*/
$('#select').bind('change', function(){
	alert($(this).val());
	location.href = $(this).val();
})


$('#contentsArea2').bind('mouseover', function(){
	 $('#contentsArea2').css('background-color','red');
});

$('#contentsArea2').bind('mouseleave', function(){
	$('#contentsArea2').css('background-color','blue');
	$('#contentsArea2').attr('class', 'aa');
});


</script>















