<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<html>

<head>
<title>jquery 이벤트</title>
</head>

<body>
	<input type="button" id="btn_minus" value="-" />
	<input type="text" id="size" value="12" />
	<input type="button" id="btn_plus" value="+" />
	
	<div id="contentsArea" style="font-size:12px;">
		안녕하세요. 반갑습니다.
	</div>
	
</body>

</html>

<!-- 제이쿼리 호출하기 -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>


<script>

/*
 * 예제) 플러스 마이너스 버튼 클릭시 size안에 text도 변경되고 contentsArea안의 텍스트가 해당사이즈로 변경되게 스크립트를 만들어보세요.
 * 추가로 size안의 내용도 변경시 contentsArea안의 사이즈 변경
 * isNaN() = 숫자일 때 true, 숫자가 아닌 값이 포함되면 false 반환
 * 숫자가 아니면 '숫자로 입력해주세요.' 경고문 출력
 */


 $('#btn_minus, #btn_plus').bind('click', function(){
	 var flag = $(this).val();
	 fn_sizeChange(flag);
 });
 
 function fn_sizeChange(flag){
	 
	 var size = parseInt($('#size').val());
	 
	 if(flag == "+"){
		 size = size+1;
	 }
	 else if(flag == "-"){
		 size = size-1;
	 }
	 
	 $('#size').val(size);
	 $('#contentsArea').css('font-size', size + "px");
 }
 
 
 
 
 /*//위함수를 2개로 나눠서 구현하기============================================
  $('#btn_minus').bind('click', function(){
	 
	 var size = parseInt($('#size').val());
	 size = size-1;
	 
	 $('#size').val(size);
	 $('#contentsArea').css('font-size', size + "px");
	 
});
 
 $('#btn_plus').bind('click', function(){
	 var size = parseInt($('#size').val());
	 size = size+1;
	 
	 $('#size').val(size);
	 $('#contentsArea').css('font-size', size + "px");
});
 */
 
 
 
 $('#size').bind('keyup', function(){
	 
	 var size = $(this).val();
	 
	 if(isNaN(size)){
		 alert("숫자로 입력해주세요");
		 $('#size').val("");
		 $('#contentsArea').css('font-size', "12px");
	 }
	 else{
		 $('#contentsArea').css('font-size', size+"px");
	 }
 });

</script>















