<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<html>

<head>
<title>변수, 함수 선언</title>
</head>


<body>

</body>

</html>


<script>
/*변수 선언하기*/
var string="나는 문자열입니다.";		//var은 변수선언이라는 뜻
document.write(string);	//write를 하면 화면에 보인다.


var number1="1000";	//따옴표가 붙으면 문자열
var number2=500;
document.write("<br />");
document.write(number1 + number2);
document.write("<br />");
document.write(parseInt(number1)+number2);


var number1=1000;	
var number2=500;
document.write("<br />");
document.write(number1 + number2);


/*배열선언 방법*/
var arr1 = new Array("1", "2", "3");
var arr2 = new Array();
arr2[0]="1";
arr2[1]="2";
arr2[2]="3";

console.log(number1+number2);	//콘솔에 띄우기
console.log(arr1);



/*함수 선언하기*/
 
function fn_br(){
	document.write("<br />");
}

function fn_message(msg1, msg2){
	
	fn_br();
	//document.write("메세지입니다.");
	document.write(msg1);
	
	fn_br();
	fn_br();
	document.write(msg2);
}

fn_message("메세지1 입니다.","메세지2 입니다.");	//파라미터 전달하는 함수호출하기






</script>















