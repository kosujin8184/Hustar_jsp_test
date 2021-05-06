<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<html>

<head>
<title>제어문, 반복문(if, for, while, switch case, do while)</title>
</head>


<body>

</body>

</html>


<script>
function fn_sample1(money){
	
	var money=prompt("지갑에 있는 돈을 알려주세요.");
	
	if(money > 5000){
		alert("엄청 부자시네요");
	}
	else if(money > 3000){
		alert("조금 부자시네요");
	}
	else{
		alert("음.....");
	}
}
//fn_sample1();


function fn_sample2(){
	
	for(var i=1; i<=10; i++){
		document.write(i + "<br />");
	}
}
//fn_sample2();


function fn_sample3(){
	
	for(var i=1; i<=10; i=i+1){
		
		if(i ==4 ){
			continue;
		}
		if(i==8){
			break;
		}
		document.write(i + "<br />");
	}
}
//fn_sample3();





/*
 * 예제) 구구단을 출력해보세요.(2단 ~ 9단까지, 각 단 사이에는 한줄씩 비워주세요.)
 */
 
 function fn_sample4(){
	 
	 for(var i=2; i<=9; i++){
		 for(var j=1; j<=9; j++){
			 document.write(i + " x " + j +" = "+ (i*j));
			 document.write("<br />");
		 }
		 document.write("<br />");
	 }
 }
 
 //fn_sample4();
 
 
 /*
 * 예제) prompt를 활용해 입력받은 단수의 구구단을 출력해주세요.
 */
function fn_sample5(){
	 
	 var msg = prompt("몇 단을 출력하실건가요?");
	 
	 document.write(msg+"단<br/>");
	 for(var i=1; i<=9; i++){
		 document.write(msg + " x " + i +" = "+ (msg*i) + "<br/>");
	 }
 }
 
// fn_sample5();
 
 
 
 function fn_sample6(grade){
	
	 switch(grade){
	 	case "1":
	 		alert("1학년");
	 		break;
	 	case "2":
	 		alert("2학년");
	 		break;
	 	default:
	 		alert("모르겠어요.");
	 		break;
	 }
 }
 //fn_sample6("2");
 
 
 
 
 /*
 * 예제) '네이버, 다음, 구글 중 즐겨쓰는 포털사이트는?' prompt에서 값을 입력받아 해당되는 사이트로 이동
 */

 function fn_sample7(){
	 
	 var url = prompt('네이버, 다음, 구글 중 즐겨쓰는 포털사이트는?');
	
	 switch(url){
	 	case "네이버":
	 		location.href="http://www.naver.com";
	 		break;
	 	case "다음":
	 		location.href="http://www.daum.net";
	 		break;
	 	case "구글":
	 		location.href="http://www.google.com";
	 		break;
	 	default:
	 		alert("모르겠어요.");
	 		break;
	 }
 }
 //fn_sample7();
 
 
 
 function fn_sample8(){
	 
	 var i=1;
	 
	 while(i <= 10){
		 document.write(i + "<br/>");
		 i++;
		 
		 if(i == 11){
			 break;
		 }
	 }
	 
 }
 fn_sample8();
 
</script>























