<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<html>

<head>
<title>animation</title>
</head>

<body>
	<div>
		<input type="text" id="pageX" value="" placeholder="x 좌표" />
		<input type="text" id="pageY" value="" placeholder="y 좌표" />
	</div>
	
	<div style="width:1000px; height:800px; border:1px solid;" id="contentsArea">
		<div id="div1" style="width:100px; height:100px; background-color:yellow; position:absolute; left:50px; top:50px;"></div>
	</div>
</body>

</html>

<!-- 제이쿼리 호출하기 -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>


<script>
$('#contentsArea').bind('click', function(event){
	console.log(event);
	
	$('#pageX').val(event.pageX);
	$('#pageY').val(event.pageY);
});


/*
 *  예제) 마우스 커서를 찍으면 그 방향으로 네모박스가 이동되도록 구현해보세요.
 */
$('#contentsArea').bind('click', function(event){
	$('#div1').animate({left: event.pageX + 'px', top: event.pageY + 'px'}, 100, 'linear', function(){
			
	}); 
});
 
 
</script>















