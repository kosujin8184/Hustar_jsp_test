<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<html>

<head>
<title>Animation</title>
</head>

<body>

	<div>
		<div id="div1" style="width:100px; height:100px; background-color:yellow;"></div>
		<input type="button" id="btn1_1" value="hide" />
		<input type="button" id="btn1_2" value="show" />
		<input type="button" id="btn1_3" value="toggle" />
	</div>
	
	<div>
		<div id="div2" style="width:100px; height:100px; background-color:red;"></div>
		<input type="button" id="btn2_1" value="fadeOut" />
		<input type="button" id="btn2_2" value="fadeIn" />
		<input type="button" id="btn2_3" value="fadeToggle" />
	</div>
	
	<div>
		<div id="div3" style="width:100px; height:100px; background-color:blue;"></div>
		<input type="button" id="btn3_1" value="slideUp" />
		<input type="button" id="btn3_2" value="slideDown" />
		<input type="button" id="btn3_3" value="slideToggle" />
	</div>
	
	<div>
		<div id="div4" style="width:100px; height:100px; background-color:green;"></div>
		<input type="button" id="btn4" value="fadeTo" />
	</div>
	
	<div>
		<div id="div5" style="width:100px; height:100px; background-color:orange;"></div>
		<input type="button" id="btn5" value="시작" />
	</div>
	
	<div>
		<div id="div6" style="width:100px; height:100px; background-color:purple;"></div>
		<input type="button" id="btn6_1" value="늘어남" />
		<input type="button" id="btn6_2" value="줄어듬" />
	</div>
	
	<div>
		<div id="div7" style="width:100px; height:100px; background-color:black;"></div>
		<input type="button" id="btn7_1" value="좌" />
		<input type="button" id="btn7_2" value="우" />
		<input type="button" id="btn7_3" value="상" />
		<input type="button" id="btn7_4" value="하" />
	</div>
</body>

</html>

<!-- 제이쿼리 호출하기 -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<script>
/*버튼 눌렀을 때 div1 숨겨지기======================================================*/
$('#btn1_1').bind('click', function(){
	$('#div1').hide(1000); //1000은 1초
});
/*버튼 눌렀을 때 div1 보이기*/
$('#btn1_2').bind('click', function(){
	$('#div1').show(2000);
});
/*버튼 눌렀을 때 div1 토글(사라지고 생기고)*/
$('#btn1_3').bind('click', function(){
	$('#div1').toggle(500);
});


/*버튼 눌렀을 때 div2 fadeOut=======================================================*/
$('#btn2_1').bind('click', function(){
	$('#div2').fadeOut(1000); //1000은 1초
});
/*버튼 눌렀을 때 div2 fadeIn*/
$('#btn2_2').bind('click', function(){
	$('#div2').fadeIn(2000); //1000은 1초
});
/*버튼 눌렀을 때 div2 fadeToggle*/
$('#btn2_3').bind('click', function(){
	$('#div2').fadeToggle(500); //1000은 1초
});


/*버튼 눌렀을 때 div3 slideUp========================================================*/
$('#btn3_1').bind('click', function(){
	$('#div3').slideUp(); //1000은 1초
});
/*버튼 눌렀을 때 div3 slideDown*/
$('#btn3_2').bind('click', function(){
	$('#div3').slideDown(); //1000은 1초
});
/*버튼 눌렀을 때 div3 slideToggle*/
$('#btn3_3').bind('click', function(){
	$('#div3').slideToggle(); //1000은 1초
});


/*버튼 눌렀을 때 div4 fadeTo========================================================*/
//fadeTo(시간,투명도)는 투명도를 조절하는 것이다.
$('#btn4').bind('click', function(){
	$('#div4').fadeTo(1000, 0, function(){
		alert("완료되었습니다.");
	});
});


/*버튼 눌렀을 때 div5 깜빡이게========================================================*/
$('#btn5').bind('click', function(){
	fn_hide();
});


function fn_hide(){
	$('#div5').fadeTo(500, 0, function(){
		fn_show();
	});
}

function fn_show(){
	$('#div5').fadeTo(500, 1, function(){
		fn_hide();
	});
}


/*버튼 눌렀을 때 div6 늘어남========================================================*/
$('#btn6_1').bind('click', function(){
	$('#div6').animate({width:'1000px', height:'300px'}, 1000, 'linear', function(){
		
	}); //animate(css값, 시간, 에니메이션값,콜백함수)
});
/*버튼 눌렀을 때 div6 줄어듬*/
$('#btn6_2').bind('click', function(){
	$('#div6').animate({width:'100px', height:'100px'}, 1000, 'linear', function(){
		
	});
});


/*버튼 눌렀을 때 div7 좌========================================================*/
var marginL=0;
$('#btn7_1').bind('click', function(){
	marginL = marginL - 100;
	$('#div7').animate({marginLeft:marginL + 'px'}, 100, 'linear', function(){
		
	}); 
});
/*버튼 눌렀을 때 div7 우*/
$('#btn7_2').bind('click', function(){
	marginL = marginL + 100;
	$('#div7').animate({marginLeft:marginL + 'px'}, 100, 'linear', function(){
		
	}); 
});
/*버튼 눌렀을 때 div7 상*/
var marginT=0;

$('#btn7_3').bind('click', function(){
	marginT = marginT - 100;
	$('#div7').animate({marginTop: marginT + 'px'}, 100, 'linear', function(){
		
	}); 
});
/*버튼 눌렀을 때 div7 하*/
$('#btn7_4').bind('click', function(){
	marginT = marginT + 100;
	$('#div7').animate({marginTop: marginT + 'px'}, 100, 'linear', function(){
		
	}); 
});
</script>















