<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<html>

<head>
<title>경고문, 페이지 이동</title>
</head>


<body>

</body>

</html>


<script>

/*경고문 띄우는 함수선언*/
 
 
function fn_message(msg){
	alert(msg);	//화면에 경고문 띄우기
}
//fn_message("안녕하세요.");


function fn_message2(msg1, msg2){
	
	var result = confirm("처음 오신건가요?");	//사용자가 선택을 할 수있게 만들어주는 창 띄우기
	
	if(result){
		//'예'를 누르면
		alert(msg1);
	}
	else{
		//취소를 누르면
		alert(msg2);
	}
	
}
//fn_message2("처음뵙겠습니다.","간만이군요.");


function fn_message3(){
	var msg = prompt("이름을 입력해주세요.");	//문자를 입력받기
	
	if(msg){
		//이름이 입력됐을 때만 출력하라.
		alert("당신의 이름은 " + msg + " 입니다.");
	}
	
}
//fn_message3();


/*페이지 이동 함수*/
function fn_link(url){
	location.href=url;	//url로 이동하라
}
//fn_link("https://www.naver.com");





/*
 * 예제) prompt에서 "이동하실 URL을 입력하세요." 메세지와 함께 url을 입력받아 예를 클릭시 URL로 이동하는 스크립트를 작성하세요.
 */
 
function fn_exam1(){
	 var msg = prompt("이동하실 URL을 입력하세요.");
	 url=msg;
	 
	 if(msg){
		 location.href=url;
	 }
	 else{
		 fn_exam1();
	 } 
 }
 
 fn_exam1();

</script>















