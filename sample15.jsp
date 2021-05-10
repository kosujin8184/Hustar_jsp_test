<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<html>

<head>
<title>계산기</title>
</head>
<body>

	<table>
		<tr>
			<td colspan="4">
				<input type="text" id="calc" />
			</td>
		</tr>
		<tr>
			<td colspan="4">
				<input type="text" id="monitor" />
			</td>
		</tr>
		<tr>
			<td><input type="button" value="7"  id="btn7" class="num"/></td>
			<td><input type="button" value="8" id="btn8"  class="num" /></td>
			<td><input type="button" value="9"  id="btn9" class="num"/></td>
			<td><input type="button" value="+" id="btnadd" class="calc" /></td>
		</tr>
		<tr>
			<td><input type="button" value="4" id="btn4"  class="num"/></td>
			<td><input type="button" value="5" id="btn5" class="num"/></td>
			<td><input type="button" value="6" id="btn6"  class="num"/></td>
			<td><input type="button" value="-" id="btnsub"  class="calc" /></td>
		</tr>
		<tr>
			<td><input type="button" value="1"  id="btn1"  class="num"/></td>
			<td><input type="button" value="2"  id="btn2" class="num"/></td>
			<td><input type="button" value="3"  id="btn3"  class="num" /></td>
			<td><input type="button" value="*" id="btnmul"  class="calc"/></td>
		</tr>
		<tr>
			<td><input type="button" value="C"  id="btndel"  class="clear"/></td>
			<td><input type="button" value="0" id="btn0"  class="num"/></td>
			<td><input type="button" value="="  id="btnres"  class="result"/></td>
			<td><input type="button" value="/" id="btndiv"  class="calc"/></td>
		</tr>
	</table>
	
</body>
</html>

<!-- 제이쿼리 호출하기 -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<script>

/*
 * 예제) 계산기를 만들어보세요.
 */

$(document).ready(function(){
	//document.write(eval("1+2"));
	//fn_click();
});
 
 var calc = "";
 var flag = "";
 
 $('.num').bind('click', function(){
	 flag="num";
	 var monitor =  $('#monitor').val();
	 $('#monitor').val(monitor +  $(this).val());
 });
 
 $('.calc').bind('click', function(){
	if(flag=="calc"){
		alert("연속으로 연산자가 입력되었습니다.");
	}else if("" == calc + $('#monitor').val()){
		alert("처음에 연산자가  입력되었습니다.");
	}else{

		flag="calc";
		calc = calc + $('#monitor').val() + $(this).val();
		$('#calc').val(calc);
		$('#monitor').val("");
	} 
 });
 
 
$('.clear').bind('click', function(){
	calc=""
	$('#calc').val("");
	$('#monitor').val("");
		
});

$('.result').bind('click', function(){
	if(flag=="calc"){
		alert("연속으로 연산자가 입력되었습니다.");
	}else if("" == calc + $('#monitor').val()){
		alert("처음에 연산자가  입력되었습니다.");
	}else{
		calc = calc + $('#monitor').val();
		$('#calc').val(calc);
		$('#monitor').val(eval(calc));
		calc="";
	}
});
 

</script>















