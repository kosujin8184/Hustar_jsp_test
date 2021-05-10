<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<html>

<head>
<title>Ajax</title>
</head>
<body>

	<div>
		<input type="button" id="btn1" value="tab1" />
		<input type="button" id="btn2" value="tab2" />
		<input type="button" id="btn3" value="tab3" />
	</div>
	<div id="contentsArea1" class="contentsArea">
	
	</div>
	<div id="contentsArea2" class="contentsArea">
	
	</div>
	<div id="contentsArea3" class="contentsArea">
	
	</div>
	
	
	
</body>
</html>

<!-- 제이쿼리 호출하기 -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<script>
/*
 *  예제) 페이지 로딩시 해당 탭의 페이지를 contentsArea 안에 넣고, 1번째 페이지만 보이도록 만들어 보세요.
 *  탭을 클릭하면 해당탭의 내용만 보여지게 하세요.
 *  탭별로 sample13_1.jsp, sample13_2.jsp, sample13_3.jsp 파일을 만들어서 사용.
 */
 
 $(document).ready(function(){
	fn_getPage('./sample13_1.jsp', '1');
	fn_getPage('./sample13_2.jsp', '2');
	fn_getPage('./sample13_3.jsp', '3');
	
	fn_tabView(1);
});
 
$('#btn1').bind('click',function(){
	fn_tabView(1);
});

$('#btn2').bind('click',function(){
	fn_tabView(2);
});

$('#btn3').bind('click',function(){
	fn_tabView(3);
});
 
function fn_getPage(url, num){
	$.ajax({
		url : url,	//어떤 페이지의 내용 가져 올건지
		type : 'post',				//get방식:그 페이지의 파라미터 값을 전달가능, post방식
		dataType : 'html',		//페이지 호출한거 받을 때(html방식, json방식, xml)
		success : function(data){
			$('#contentsArea' + num).html(data);	
		},
		error : function(){
			alert('오류가 발생하였습니다.');
		},

	});
}

function fn_tabView(num){
	 //$('#contentsArea1').hide();
	 //$('#contentsArea2').hide();
	 //$('#contentsArea3').hide();
	 $('.contentsArea').hide();
	 $('#contentsArea'+num).show();
}
	
</script>















