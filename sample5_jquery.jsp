<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<html>

<head>
<title>이벤트</title>
</head>

<body>
	<div>
		<input type="text" id="txt" class="cls_txt" name="txt" placeholder="입력란...." onkeyup="fn_press();" />
		<input type="text" id="txt2" class="cls_txt" name="txt2" placeholder="입력란2...." onkeyup="fn_press();" />
		<input type="text" id="txt3" class="cls_txt" name="txt3" placeholder="입력란3...." onkeyup="fn_press();" />
		<input type="button" value="입력체크" onclick="fn_check();" />
		<input type="button" value="값출력" onclick="fn_print();" />
	</div>
	
	<div>
		<div id="contentsArea">
			콘텐츠 영역입니다.
		</div>
		<input type="button" value="변경" onclick="fn_change();" />
		<input type="button" value="추가" onclick="fn_add();" />
	</div>
</body>

</html>

<!-- 제이쿼리 호출하기 -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<script>

function fn_check(){
	/*값을 불러서 세팅*/
	//alert($('#txt').val()); //#은id
	//$('#txt').val("test!!!!");	//값을 test!!!!로 세팅한다.
	//$('.cls_txt').val("테스트입니다."); //클래스는 앞에 '.'
	//$('input').val("테그네임 selector");	//.이나# 없으면 '태그네임'을 듯함
	//$('input[name="txt"]').val("txt입니다.");
	
	
	//alert($('#txt').attr("type"));
	$('#txt').attr('type', 'button');	//어트리뷰트 바꾸기
	$('#txt').val("입력체크2");
	$('#txt').attr('onclick','fn_check2();');
	
	
	
}

function fn_check2(){
	alert("버튼으로 변경되었습니다.");
}

function fn_change(){
	$('#contentsArea').html("<a href='http://www.naver.com'>" + $('#contentsArea').html()+ "</a>");
}

function fn_add(){
	$('#contentsArea').append("추가된 내용입니다. ");
}


function fn_print(){
	var cnt = 0;
	$('.cls_txt').each(function(){
		
		if($(this).attr("id") == "txt3"){
			//$(this).val("바꼈습니다.");
			alert("값이 바꼈네요");
			$(this).attr("id","txt4");
		}
		
	});	//같은 클래스 3개니 3번돌아가 (each때문에)

}


$(document).ready(function(){
	fn_print();
});




</script>

