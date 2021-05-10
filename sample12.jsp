<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<html>

<head>
<title>Ajax</title>
</head>
<body>

	<div id="contentsArea">
	
	</div>
	
	<div>
		<input type="button" id="btn1" value="1번 페이지" />
		<input type="button" id="btn2" value="2번 페이지" />
	</div>
	
</body>
</html>

<!-- 제이쿼리 호출하기 -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<script>
$('#btn1').bind('click', function(){
	fn_getPage('./sample12_1.jsp');
});
$('#btn2').bind('click', function(){
	fn_getPage('./sample12_2.jsp');
});

function fn_getPage(url){
	$.ajax({
		url : url,	//어떤 페이지의 내용 가져 올건지
		type : 'post',				//get방식:그 페이지의 파라미터 값을 전달가능, post방식
		data : {test:'1', test2:'2'},
		dataType : 'html',		//페이지 호출한거 받을 때(html방식, json방식, xml)
		beforeSend : function(){
			//로딩............show
		},
		success : function(data){
			$('#contentsArea').html(data);
		},
		error : function(){
			//alert('오류가 발생하였습니다.');
		},
		complete : function(){
			//.............hide
		}
	});
}
	
</script>















