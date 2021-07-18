<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<c:set var="path" value="${pageContext.request.contextPath}" />    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>우수고객 상담</title>
	<style id="applicationStylesheet" type="text/css">
		/* 페이지리스트 가로정렬 */ 
		ul {
		    list-style:none;
		    margin:0;
		    padding:0;
			}
			
		li {
		    margin: 0 0 0 0;
		    padding: 0 0 0 0;
		    border : 0;
		    float: left;
			}



		.mediaViewInfo {
			--web-view-name: 웹 1366 – 8;
			--web-view-id: _1366__8;
			--web-scale-on-resize: true;
			--web-enable-deep-linking: true;
		}

		:root {
			--web-view-ids: _1366__8;
		}

		* {
			margin: 0;
			padding: 0;
			box-sizing: border-box;
			border: none;
		}

		#_1366__8 {
			position: absolute;
			width: 1366px;
			height: 768px;
			overflow: hidden;
			--web-view-name: 웹 1366 – 8;
			--web-view-id: _1366__8;
			--web-scale-on-resize: true;
			--web-enable-deep-linking: true;
		}




		#-__p {
			left: 33px;
			top: 277px;
			position: absolute;
			overflow: visible;
			width: 101px;
			white-space: nowrap;
			text-align: left;
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: lighter;
			font-size: 20px;
			color: rgba(112,112,112,1);
		}

		#__ {
			left: 14px;
			top: 132px;
			position: absolute;
			overflow: visible;
			width: 133px;
			white-space: nowrap;
			text-align: left;
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: normal;
			font-size: 20px;
			color: rgba(112,112,112,1);
		}

		#_ {
			left: 14px;
			top: 380px;
			position: absolute;
			overflow: visible;
			width: 93px;
			white-space: nowrap;
			text-align: left;
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: normal;
			font-size: 20px;
			color: rgba(112,112,112,1);
		}

		#__s {
			left: 14px;
			top: 449px;
			position: absolute;
			overflow: visible;
			width: 75px;
			white-space: nowrap;
			text-align: left;
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: normal;
			font-size: 20px;
			color: rgba(112,112,112,1);
		}

		#-__ {
			left: 33px;
			top: 310px;
			position: absolute;
			overflow: visible;
			width: 123px;
			white-space: nowrap;
			text-align: left;
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: bold;
			font-size: 20px;
			color: rgba(112,112,112,1);
		}


			/*Customer Print table css*/
			
		#customerList{
		    width: 100%;
		    border-top: 1px solid #444444;
		    border-collapse: collapse;
		  }
		  th, td {
		    border-bottom: 1px solid #444444;
		    padding: 10px;
		  }

			
			
			

		#SelectDate {
			z-index : 1;
			left: 275px;
			top: 291px;
			position: absolute;
			overflow: visible;
			white-space: nowrap;
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: normal;
			font-size: 17px;
			color: rgba(112,112,112,1);
		}

		#SelectDateResult {
			position: absolute;
			overflow: visible;
			width: 135px;
			height: 22px;
			left: 392px;
			top: 561px;
			color: black;
		}


		/*ㅂㅓ튼 css*/
		.btn {
			/* 필수적으로 입력해 주어야 하는 속성 */
			vertical-align: middle; /* Input 과 타 요소들의 텍스트 높이를 동일하게 세로 정렬한다 */
			display: inline-block; /* a나 span 태그의 경우 inline-block 요소처리 */
			line-height: 1;
			cursor: pointer; /* input type에 따라 커서의 모양이 다르다. */
			/* 패딩은 Input과 다른 태그들이 달라야 한다 */
			padding: 15px 60px;
			/* 디자인 요소들 */
			transition: all 0.3s;
			/*box-shadow: inset 0 1px 0 rgba(255,255,255,.2);*/
			/*text-shadow: 0 -1px 0 rgba(0,0,0,.4);*/
			/*border-radius: 6px;*/
			font-family: Apple SD Gothic Neo;
			font-size: 15px;
			text-transform: uppercase;
			/* 요소마다 border 의 색상을 다르게 주기 위해서 속성들을 따로 기입한다 */
			border-style: solid;
			border-width: 1px;
		}

		input.btn {
			/* Input은 다른 태그들과 패딩값이 다르게 입력된다. top + 1, bottom -1 을 해준다. */
			padding: 9px 12px;
		}

		.SubmitBtn {
			border-color: #707070;
			background: #FFFFFF;
			color: #707070;
		}

			.SubmitBtn:hover {
				background: #E0E0E0;
			}







		#SearchBtn { /*ㅈㅗㅎㅗㅣ*/
			z-index: 1;
			position: absolute;
			overflow: visible;
			left: 1193px;
			top: 244px;
			width: 91px;
			height: 31px;
		}

		#SaveBtn { /*ㅅㅡㅋㅔㅈㅠㄹㅅㅐㅇㅅㅓㅇ*/
			z-index: 1;
			position: absolute;
			overflow: visible;
			left: 1121px;
			top: 657px;
			width: 192px;
			height: 45px;
		}

		#ScheduleBtn { /*적용*/
			z-index: 1;
			position: absolute;
			overflow: visible;
			left: 626px;
			top: 245px;
			width: 91px;
			height: 31px;
		}


		/*Schedule Select part*/


		#ScheduleStartSelect {
			z-index: 3;
			position: absolute;
			overflow: visible;
			width: 168px;
			height: 31px;
			left: 269px;
			top: 244px;
		}

		#ScheduleEndSelect {
			z-index: 1;
			position: absolute;
			overflow: visible;
			width: 155px;
			height: 31px;
			left: 454px;
			top: 244px;
		}


		#ScheduleSelect {
			z-index: 2;
			position: absolute;
			overflow: visible;
			width: 150px;
			height: 31px;
			left: 251px;
			top: 172px;
		}

		#RecFill {
			fill: #EBEBEB;
			stroke: rgba(112,112,112,1);
			stroke-width: 1px;
			stroke-linejoin: miter;
			stroke-linecap: butt;
			stroke-miterlimit: 4;
			shape-rendering: auto;
		}

		.RecFill {
			position: absolute;
			overflow: visible;
			width: 1075px;
			height: 428px;
			left: 219px;
			top: 156px;
		}

		#ConsultingInput {
			stroke: rgba(112,112,112,1);
			stroke-width: 1px;
			position: absolute;
			overflow: visible;
			width: 865px;
			height: 74px;
			left: 219px;
			top: 662px;
		}

		#EventSelect { /*행사 선택 부분*/
			z-index: 3;
			position: absolute;
			overflow: visible;
			width: 348px;
			height: 31px;
			left: 269px;
			top: 244px;
		}

		#ResultPrint {
		
			position: absolute;
			overflow: visible;
			width: 865px;
			height: 91px;
			left: 238px;
			top: 633px;
			border: solid 1px #707070;
			/*border-radius: 5px;*/
			font-size: 16px;
			z-index: 5;
		
			
		}


		#CustomerConsultingTitle {
			left: 219px;
			top: 39px;
			position: absolute;
			overflow: visible;
			width: 101px;
			white-space: nowrap;
			text-align: left;
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: bold;
			font-size: 29px;
			color: rgba(112,112,112,1);
		}

		#AllConsultSearch {
			left: 230px;
			top: 120px;
			position: absolute;
			overflow: visible;
			width: 131px;
			white-space: nowrap;
			text-align: left;
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: normal;
			font-size: 25px;
			color: rgba(112,112,112,1);
		}

		/* 1차배경 */
		#RectField {
			fill: #FFFFFF;
			border: solid 1px #707070;
		}

		.RectField {
			z-index: 1;
			position: absolute;
			overflow: visible;
			width: 1075px;
			height: 428px;
			left: 238px;
			top: 188px;
		}

		/*customer Find field setting*/

		#CustomerFind {
			z-index: 2;
			left: 998px;
			top: 208px;
			position: absolute;
			overflow: visible;
			width: 152px;
			white-space: nowrap;
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: normal;
			font-size: 20px;
			color: rgba(112,112,112,1);
		}
		
		#CustomerFindFieldArea{
		position: absolute;
		overflow: visible;
		z-index: 1;
		width: 964px;
		height: 168px;
		left: 279px;
		top: 384px;
		border: solid 1px #707070; 
		
		}
		

		#EventSelectTitle {
			z-index: 3;
			left: 452px;
			top: 214px;
			position: absolute;
			overflow: visible;
			width: 152px;
			white-space: nowrap;
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: normal;
			font-size: 20px;
			color: rgba(112,112,112,1);
		}

		#CustomerPrintCount {
			z-index: 1;
			position: absolute;
			overflow: visible;
			width: 373px;
			height: 31px;
			left: 810px;
			top: 244px;
		}



		#CustomerFind {
			left: 994px;
			top: 214px;
			position: absolute;
			overflow: visible;
			width: 152px;
			white-space: nowrap;
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: normal;
			font-size: 20px;
			color: rgba(112,112,112,1);
		}
		
		#SelectCustomerNumb{/*조회된 고객 > N명*/
			z-index : 4;
			left: 818px;
			top: 290px;
			position: absolute;
			overflow: visible;
			white-space: nowrap;
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: normal;
			font-size: 15px;
			color: rgba(112,112,112,1);
		
		}

		#searchedCustomer{
			position: absolute;
			overflow: scroll;
			width: 473px;
			height: 285px;
			left: 811px;
			top: 310px;
			
		}

		#CustomerFindField {
			fill: #FFFFFF;
			stroke: rgba(112,112,112,1);
			stroke-width: 1px;
			stroke-linejoin: miter;
			stroke-linecap: butt;
			stroke-miterlimit: 4;
			shape-rendering: auto;
		}

		.CustomerFindField {
			position: absolute;
			width: 1027px;
			height: 263px;
			left: 267px;
			top: 334px;
		}


		#CustomerFindFieldCheckBox {
			z-index: 1;
			color: rgba(112,112,112,1);
			stroke-width: 1px;
			position: absolute;
			overflow: visible;
			width: 31px;
			height: 179px;
			left: 826px;
			top: 384px;
		}


		#CustomerFindFieldNumb {
			z-index:1;
			fill: #FFFFFF;
			stroke: rgba(112,112,112,1);
			stroke-width: 1px;
			stroke-linejoin: miter;
			stroke-linecap: butt;
			stroke-miterlimit: 4;
			shape-rendering: auto;
			position: absolute;
			overflow: visible;
			width: 132px;
			height: 20px;
			left: 714.5px;
			top: 560.61px;
			
		}
		
		#ScheduleDateResult{
			z-index: 3;
			color: rgba(112,112,112,1);
			stroke-width: 1px;
			position: absolute;
			overflow: visible;
			width: 865px;
			height: 91px;
			left: 238px;
			top: 633px;
		
		}



/*sub title*/
			#VipCustomerConsultingTitle{
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: normal;
			font-size: 23px;
			color: rgba(112,112,112,1);
			position: absolute;
			overflow: visible;
			left: 238px;
			top: 121px;
			
			}
			#MaketingcustomerTitle{
			z-index: 3;
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: normal;
			font-size: 23px;
			color: rgba(112,112,112,1);
			position: absolute;
			overflow: visible;
			left: 556px;
			top: 121px;
			
			}
			#AllConsultSearchTitle{
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: normal;
			font-size: 23px;
			color: rgba(112,112,112,1);
			position: absolute;
			overflow: visible;
			left: 846px;
			top: 121px;
			
			}





		/* SIDEBAR */

		#sidebar .inner {
			width: 188.5px;
			height: 100%;
			position: fixed;
			border-right: 1px solid #EAEAEA;
		}

		#sidebar .main {
			font-size: 20px;
			display: block;
			height: 100px;
			position: relative;
		}

			#sidebar .main > img {
				height: 59px;
				bottom: 59px;
				position: absolute;
				top: 40px;
				left: 27px;
				margin: auto;
			}

		#sidebar .main-menu {
		}

			#sidebar .main-menu .item:hover {
				background-color: #EAEAEA;
				color: #fff;
				transition: .2s;
			}

			#sidebar .main-menu .item .item__name h3 {
				display: block;
				color: black; /*사이드바 글자 컬러*/
				cursor: pointer;
				font-weight: 500;
				text-align: left;
			}

			#sidebar .main-menu ul.list__group {
			}

				#sidebar .main-menu ul.list__group li {
				}

					#sidebar .main-menu ul.list__group li a {
						color: black; /*소메뉴 컬러*/
						display: block;
						padding: 20px;
						font-weight: 400;
						text-align: left;
						display: none;
					}

			#sidebar .main-menu .item:hover ul.list__group li a {
				display: block;
				transition: .2s;
			}

			#sidebar .main-menu ul.list__group li a::before {
				content: "-";
				width: 12px;
				height: 1px;
				padding-left: 4px;
			}

			#sidebar .main-menu .item .item__name h3:hover,
			#sidebar .main-menu ul.list__group li a:hover {
				color: #fff;
				transition: .2s;
			}

		/* 우수고객조회 백그라운두
		*/
		#AllConsultSearch {
			z-index: -1;
			position: absolute;
			overflow: visible;
			left: 225px;
			top: 100px;
			width: 1103px;
			height: 643px;
		}
		
		#MaketingcustomerBackground {
			z-index: 1;
			position: absolute;
			overflow: visible;
			left: 225px;
			top: 100px;
			width: 1103px;
			height: 643px;
		}
		#VIPcustomerBackground {
			z-index: -1;
			position: absolute;
			overflow: visible;
			left: 225px;
			top: 100px;
			width: 1103px;
			height: 643px;
		}
	</style>


	<!--브라우저 스타일 초기화-->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
	
	<!-- AJAX -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	
	<!-- jQuery -->
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

	<script>$('textarea:first').click(function () {
			$t = $(this).val().replace(/<br\s*\/?>/img, "x");
			$(this).html($t)
		});</script>
	
	<!-- 스케줄날짜지정 js -->
	<script>
	var sDate;
	var fDate;
	
		function sdateChange(date){
		sDate = date.value;
		}
		function fdateChange(date){
			fDate = date.value;
		}
	function printDate(){
		var message = "선택하신 일자는" + sDate + "~" +fDate+ "입니다."
		console.log(message);
		document.getElementById("SelectedDate").innerHTML = message;
		
	}
	
	</script>
	
	<!-- 조회된 고객 출력 js -->
	<script>
	var fCusReg;<!--고객 지역-->
	var fCusGrd;<!--고객 등-->
	
		
	function printDate(){
		var message = "조회된 고객 > " + <!-- N(데이터값) --> + "명 입니다."
		console.log(message);
		document.getElementById("SelectCustomerNumb").innerHTML = message;
		
	}
	
	</script>
	
	
	<!--고객조회버튼 ajax-->
	<script> 
	$(function() {
		
		$("#SearchBtn").on('click', function() {		
			var pageListSize = $("#CustomerPrintCount").val();
			var address = $("#RegionSelect").val();
			var grade = $("#CustomerGrade").val();
			
			$.ajax({
				type: "get",
				url : "customer",
				dataType: "text",
				cache : false,
				contentType: 'application/json; charset=utf-8',
				data :				
				{"plsize":pageListSize, "address":address, "p":"1", "grade":grade},
				success : function(result) {

					var html = jQuery('<div>').html(result);
					var contents = html.find("div#customerList").html();
					$("#searchedCustomer").html(contents);
					
					var page = html.find("div#pageList").html();
					$("#CustomerFindFieldNumb").html(page);
				},
				error: function(error) {
					console.log("전송 실패");
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}		
			});
		});
	});
	</script>
	
	<!--페이지조회버튼 ajax-->
	<script> 
	function intoPage(){
			var p = $(".page").text();
			var pageListSize = $("#CustomerPrintCount").val();
			var address = $("#RegionSelect").val();
			var grade = $("#CustomerGrade").val();
			
			$.ajax({
				type: "get",
				url : "customer",
				dataType: "text",
				cache : false,
				contentType: 'application/json; charset=utf-8',
				data :				
				{"plsize":pageListSize, "address":address, "p":p, "grade":grade},
				success : function(result) {

					var html = jQuery('<div>').html(result);
					var contents = html.find("div#customerList").html();
					$("#searchedCustomer").html(contents);
					
					var page = html.find("div#pageList").html();
					$("#CustomerFindFieldNumb").html(page);
				},
				error: function(error) {
					console.log("전송 실패");
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}		
			});
	};
	</script>
	
	<!--이전페이지리스트버튼 ajax-->
	<script> 
	function prevPL(){
			var p = $("#prevPL").val();
			var pageListSize = $("#CustomerPrintCount").val();
			var address = $("#RegionSelect").val();
			var grade = $("#CustomerGrade").val();
			
			$.ajax({
				type: "get",
				url : "customer",
				dataType: "text",
				cache : false,
				contentType: 'application/json; charset=utf-8',
				data :				
				{"plsize":pageListSize, "address":address, "p":p, "grade":grade},
				success : function(result) {

					var html = jQuery('<div>').html(result);
					var contents = html.find("div#customerList").html();
					$("#searchedCustomer").html(contents);
					
					var page = html.find("div#pageList").html();
					$("#CustomerFindFieldNumb").html(page);
				},
				error: function(error) {
					console.log("전송 실패");
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}		
			});
	};
	</script>
	
	<!--이전페이지리스트버튼 ajax-->
	<script> 
	function prevPL(){
			var p = $("#nextPL").val();
			var pageListSize = $("#CustomerPrintCount").val();
			var address = $("#RegionSelect").val();
			var grade = $("#CustomerGrade").val();
			
			$.ajax({
				type: "get",
				url : "customer",
				dataType: "text",
				cache : false,
				contentType: 'application/json; charset=utf-8',
				data :				
				{"plsize":pageListSize, "address":address, "p":p, "grade":grade},
				success : function(result) {

					var html = jQuery('<div>').html(result);
					var contents = html.find("div#customerList").html();
					$("#searchedCustomer").html(contents);
					
					var page = html.find("div#pageList").html();
					$("#CustomerFindFieldNumb").html(page);
				},
				error: function(error) {
					console.log("전송 실패");
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}		
			});
	};
	</script>
	
	
	
	
	<!--스케줄생성 버튼 ajax-->
	<script>
	$(function() {
		
		$("#SaveBtn").on('click', function() {		
			sDate;
			fDate;
			alert(sDate);
			alert(fDate);

		
			$.ajax({
				type: "get",
				url : "customer",
				dataType: "text",
				processData: false, 
				cache : false,
				contentType: 'application/json; charset=utf-8',
				data :				
				{"plsize":pageListSize, "address":address, "p":"1", "grade":grade},
				success : function(result) {
					
					$("#searchedCustomer").html(result);
				},
				error: function(error) {
					console.log("전송 실패");
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

				}		
			});
		
		});
	});
	
	
</script>



</head>
<body onload="autoReload();">

	<!-- 배경 svg -->
	<svg id="AllConsultSearch">
  <g data-name="AllConsultSearchWhite" transform="translate(4454 2588)" fill="#fff">
    <path d="M -3351.5 -1945.500366210938 L -4453.4990234375 -1945.500366210938 L -4453.4990234375 -2042.000366210938 L -4453.4990234375 -2042.500366210938 L -4453.5 -2042.500366210938 L -4453.5 -2516.5009765625 L -4453.4990234375 -2517.0009765625 L -4453.4990234375 -2517.50048828125 L -3845.99951171875 -2517.50048828125 L -3845.49951171875 -2517.50048828125 L -3845.49951171875 -2518.00048828125 L -3845.49951171875 -2587.499755859375 L -3542.500732421875 -2587.499755859375 L -3542.500732421875 -2518.00048828125 L -3542.500732421875 -2517.50048828125 L -3542.000732421875 -2517.50048828125 L -3351.5 -2517.50048828125 L -3351.5 -1945.500366210938 Z" stroke="none"/>
    <path d="M -3352 -1946.000244140625 L -3352 -2517.00048828125 L -3542.000732421875 -2517.00048828125 L -3543.000732421875 -2517.00048828125 L -3543.000732421875 -2518.00048828125 L -3543.000732421875 -2586.999755859375 L -3844.99951171875 -2586.999755859375 L -3844.99951171875 -2518.00048828125 L -3844.99951171875 -2517.00048828125 L -3845.99951171875 -2517.00048828125 L -4452.9990234375 -2517.00048828125 L -4453 -2516.0009765625 L -4453 -2043.00048828125 L -4452.9990234375 -2043.00048828125 L -4452.9990234375 -2042.00048828125 L -4452.9990234375 -1946.000244140625 L -3352 -1946.000244140625 M -3351 -1945.000244140625 L -4453.9990234375 -1945.000244140625 L -4453.9990234375 -2042.00048828125 L -4454 -2042.00048828125 L -4454 -2517.0009765625 L -4453.9990234375 -2517.0009765625 L -4453.9990234375 -2518.00048828125 L -3845.99951171875 -2518.00048828125 L -3845.99951171875 -2587.999755859375 L -3542.000732421875 -2587.999755859375 L -3542.000732421875 -2518.00048828125 L -3351 -2518.00048828125 L -3351 -1945.000244140625 Z" stroke="none" fill="#707070"/>
  </g>
</svg>
	
	
	<svg id="MaketingcustomerBackground">
  <g data-name="MaketingcustomerBackground" transform="translate(3018 2588)" fill="#ebebeb">
    <path d="M -1915.499389648438 -1945.5 L -3017.499755859375 -1945.5 L -3017.499755859375 -2041.999267578125 L -3017.499755859375 -2517.000244140625 L -3017.499755859375 -2517.499267578125 L -2713.99951171875 -2517.499267578125 L -2713.49951171875 -2517.499267578125 L -2713.49951171875 -2517.999267578125 L -2713.49951171875 -2587.49951171875 L -2410.499267578125 -2587.49951171875 L -2410.499267578125 -2517.999267578125 L -2410.499267578125 -2517.499267578125 L -2409.999267578125 -2517.499267578125 L -1915.499389648438 -2517.499267578125 L -1915.499389648438 -1945.5 Z" stroke="none"/>
    <path d="M -1915.999389648438 -1946 L -1915.999389648438 -2516.999267578125 L -2409.999267578125 -2516.999267578125 L -2410.999267578125 -2516.999267578125 L -2410.999267578125 -2517.999267578125 L -2410.999267578125 -2586.99951171875 L -2712.99951171875 -2586.99951171875 L -2712.99951171875 -2517.999267578125 L -2712.99951171875 -2516.999267578125 L -2713.99951171875 -2516.999267578125 L -3016.999755859375 -2517.000244140625 L -3016.999755859375 -2041.999267578125 L -3016.999755859375 -1946 L -1915.999389648438 -1946 M -1914.999389648438 -1945 L -3017.999755859375 -1945 L -3017.999755859375 -2041.999267578125 L -3017.999755859375 -2517.000244140625 L -3017.999755859375 -2517.999267578125 L -2713.99951171875 -2517.999267578125 L -2713.99951171875 -2587.99951171875 L -2409.999267578125 -2587.99951171875 L -2409.999267578125 -2517.999267578125 L -1914.999389648438 -2517.999267578125 L -1914.999389648438 -1945 Z" stroke="none" fill="#707070"/>
  </g>
</svg>
	
	
	
	<svg id="VIPcustomerBackground">
		<g data-name="VIPcustomerBackground" transform="translate(1436 835)" fill="#fff">
			<path d="M -333.4998779296875 -192.5001373291016 L -1435.500244140625 -192.5001373291016 L -1435.500244140625 -365.4606628417969 L -1435.500244140625 -834.499755859375 L -1132.5 -834.499755859375 L -1132.5 -764.2201538085938 L -1132.5 -763.7201538085938 L -1132 -763.7201538085938 L -333.4998779296875 -763.7201538085938 L -333.4998779296875 -192.5001373291016 Z" stroke="none" />
			<path d="M -333.9998474121094 -193.0001678466797 L -333.9998474121094 -763.2200317382812 L -1132 -763.2200317382812 L -1133 -763.2200317382812 L -1133 -764.2200317382812 L -1133 -833.999755859375 L -1435.000244140625 -833.999755859375 L -1435.000244140625 -365.4607238769531 L -1435.000244140625 -193.0001678466797 L -333.9998474121094 -193.0001678466797 M -332.9998474121094 -192.0001678466797 L -1436.000244140625 -192.0001678466797 L -1436.000244140625 -365.4607238769531 L -1436.000244140625 -834.999755859375 L -1132 -834.999755859375 L -1132 -764.2200317382812 L -332.9998474121094 -764.2200317382812 L -332.9998474121094 -192.0001678466797 Z" stroke="none" fill="#707070" />
		</g>
	</svg>
	
	<svg class="RectField">
		<!--밑 1차 배경-->
		<rect id="RectField" rx="0" ry="0" x="0" y="0" width="1075" height="428">
		</rect>
	</svg>
	<svg class="CustomerFindField">
		<rect id="CustomerFindField" rx="0" ry="0" x="0" y="0" width="1027" height="263">
		</rect>
	</svg>

	<div id="_1366__8">

	<!-- SIDEBAR -->
		<section id="sidebar">
			<div class="inner">

				<a href="javascript:Main()" class="main">
					<img src="main_temp.png" alt="main">
				</a>

				<div class="main-menu">
					<div class="item">
						<div class="item__name">
							<h3>일일 매출 보고서</h3>
						</div>
						<ul class="list__group">
							<li class="list__contents">
								<a href="javascript:previousSR()">전일매출보고서</a>
							</li>
							<li class="list__contents">
								<a href="javascript:srList()">매출보고서목록</a>
							</li>

						</ul>
					</div>
					<div class="item">
						<div class="item__name">
							<h3>고객 상담</h3>
						</div>
						<ul class="list__group">
							<li class="list-contents">
								<a href="javascript:void(0)">우수고객 상담</a>
							</li>
							<li class="list__contents">
								<a href="javascript:void(0)">마케팅 상담</a>
							</li>
							<li class="list__contents">
								<a href="javascript:void(0)">전체 상담 조회</a>
							</li>
						</ul>
					</div>
					<div class="item">
						<div class="item__name">
							<h3>고객의 소리(Q&A)</h3>
						</div>
						<ul class="list__group"></ul>
					</div>
					<div class="item">
						<div class="item__name">
							<h3>고객 설문</h3>
						</div>
						<ul class="list__group">
							<li class="list__contents">
								<a href="javascript:void(0)">고객 설문 작성</a>
							</li>
							<li class="list__contents">
								<a href="javascript:void(0)">고객 설문 배포</a>
							</li>
							<li class="list__contents">
								<a href="javascript:void(0)">고객 설문 결과</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
	
	
	<!-- 상위메뉴명 -->
	<div id="CustomerConsultingTitle">
		<span>고객상담</span>
	</div>
	<!-- 하위메뉴명 -->
	<div id="VipCustomerConsultingTitle">
		<span>우수고객상담 ></span>
	</div>
	<div id="MaketingcustomerTitle">
		<span>마케팅상담 ></span>
	</div>
	<div id="AllConsultSearchTitle">
		<span>전체상담조회 ></span>
	</div>
	
	
	<!--소제목-->
	<div id="EventSelectTitle">
		<h4>상담할 행사 선택</h4>
	</div>
<!-- 고객 조회 필터 OPTgroup -->
		<!--출력고객 수-->
		<select id="EventSelect" name="EventSelect" >
			<option value=""selected disabled hidden> 행사선택</option>
			<option value="5">5명</option>
			<option value="10">10명</option>
			<option value="15">15명</option>
		</select>


	


	<!-- 선택된 스케줄 기간 출력칸 -->
	<div id="SelectDate">
		<span id="SelectedDate">선택하신 일자</span>

	</div>
	<!-- 선택된 고객 숫자 출력칸 -->
	<div id="SelectCustomerNumb">
		<span id="SelectCustomerNumb">조회된 고객</span>

	</div>


		
		
		<!--고객조회-->

		<div id="CustomerFind">
			<h4>랜덤고객조회</h4>
		</div>
	
	<!-- 고객 조회 필터 OPTgroup -->
		<!--출력고객 수-->
		<select id="CustomerPrintCount" name="CustomerPrintCount" >
			<option value=""selected disabled hidden> 출력고객 수 </option>
			<option value="5">5명</option>
			<option value="10">10명</option>
			<option value="15">15명</option>
		</select>


		
		
		<!-- 검색된 고객 리스트 출력칸 -->
		<div id="searchedCustomer">
		</div>		
		

		<div id="CustomerFindFieldArea">
		</div>
		<!--customerFindSelect Number-->
			<div id="CustomerFindFieldNumb">
		            1	|   2    |  	3	 |    4	    |   5
		</div>
		
		
		
		<!--Btn-->
		<a class='btn SubmitBtn' id="SaveBtn">스케쥴생성</a>
		<input type='button' class='btn SubmitBtn' id="SearchBtn" value='조회' />
		<input type='button' class='btn SubmitBtn' id="ScheduleBtn" value='적용'  onclick="printDate()" />
	
		<div>
			<textarea id = "ResultPrint">
				
				
				N명 YYYY/MM/DD ~ YY/MM/DD기간에 스케줄 배치 완료
			</textarea>
		</div> 
		
		<div >
		
			
	
	</div>


	
	
	
</body>
</html>