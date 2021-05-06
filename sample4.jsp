<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<html>

<head>
<title>이벤트</title>
</head>

<body>
	<div>
		<input type="text" id="txt" name="txt" placeholder="입력란...." onkeyup="fn_press();" />
		<input type="button" value="입력체크" onclick="fn_check();" />
	</div>
</body>

</html>


<script>

function fn_check(){
	
	if(document.getElementById('txt').value == "") //인풋이라는 id=txt의 접근, value의 값을 가져온다.
	{
		alert("입력란에 입력해주세요.");
	}
	else{
		alert("저장되었습니다.");
	}
	
}


function fn_press(){
	alert(document.getElementById('txt').value);
}

</script>















