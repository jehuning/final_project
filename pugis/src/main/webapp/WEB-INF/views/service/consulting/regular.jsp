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
			position: fixed;
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
			position: fixed;
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
			position: fixed;
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
			position: fixed;
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
			position: fixed;
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
			position: fixed;
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
			
		#customerTable{
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
			left: 325px;
			top: 281px;
			position: fixed;
			overflow: visible;
			white-space: nowrap;
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: normal;
			font-size: 17px;
			color: rgba(112,112,112,1);
		}

		#SelectDateResult {
			position: fixed;
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
			position: fixed;
			overflow: visible;
			left: 1253px;
			top: 244px;
			width: 91px;
			height: 31px;
		}

		#SaveBtn { /*ㅅㅡㅋㅔㅈㅠㄹㅅㅐㅇㅅㅓㅇ*/
			z-index: 1;
			position: fixed;
			overflow: visible;
			left: 1171px;
			top: 657px;
			width: 192px;
			height: 45px;
		}

		#ScheduleBtn { /*적용*/
			z-index: 1;
			position: fixed;
			overflow: visible;
			left: 686px;
			top: 245px;
			width: 91px;
			height: 31px;
		}


		/*Schedule Select part*/


		#ScheduleStartSelect {
			z-index: 3;
			position: fixed;
			overflow: visible;
			width: 168px;
			height: 31px;
			left: 319px;
			top: 244px;
		}

		#ScheduleEndSelect {
			z-index: 1;
			position: fixed;
			overflow: visible;
			width: 155px;
			height: 31px;
			left: 504px;
			top: 244px;
		}


		#ScheduleSelect {
			z-index: 2;
			position: fixed;
			overflow: visible;
			width: 150px;
			height: 31px;
			left: 301px;
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
			position: fixed;
			overflow: visible;
			width: 1075px;
			height: 428px;
			left: 219px;
			top: 156px;
		}

		#ConsultingInput {
			stroke: rgba(112,112,112,1);
			stroke-width: 1px;
			position: fixed;
			overflow: visible;
			width: 865px;
			height: 74px;
			left: 219px;
			top: 662px;
		}

		#EventSelect {
			position: fixed;
			overflow: visible;
			width: 152px;
			height: 31px;
			left: 251px;
			top: 172px;
		}

		#ResultPrint {
		}

		textarea {
			position: fixed;
			overflow: visible;
			width: 865px;
			height: 91px;
			left: 288px;
			top: 633px;
			border: solid 1px #707070;
			/*border-radius: 5px;*/
			font-size: 16px;
			resize: both;
		}


		#CustomerConsultingTitle {
			left: 310px;
			top: 39px;
			position: fixed;
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

		#VipCustomerConsultingTitle {
			left: 285px;
			top: 120px;
			position: fixed;
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
			position: fixed;
			overflow: visible;
			width: 1075px;
			height: 428px;
			left: 288px;
			top: 188px;
		}

		/*customer Find field setting*/

		#CustomerFind {
			left: 1048px;
			top: 208px;
			position: fixed;
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
		position: fixed;
		overflow: scroll;
		z-index: 1;
		width: 1025px;
		height: 262px;
		left: 308px;
		top: 334px;
		border: solid 1px #707070; 
		
		}
		

		#ScheduleSetting {
			left: 502px;
			top: 194px;
			position: fixed;
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
			position: fixed;
			overflow: visible;
			width: 130px;
			height: 31px;
			left: 860px;
			top: 244px;
		}

		#RegionSelect {
			z-index: 1;
			position: fixed;
			overflow: visible;
			width: 109px;
			height: 31px;
			left: 1002px;
			top: 244px;
		}

		#CustomerGrade {
			z-index: 1;
			position: fixed;
			overflow: visible;
			width: 112px;
			height: 31px;
			left: 1121px;
			top: 244px;
		}


		#CustomerFind {
			left: 1044px;
			top: 194px;
			position: fixed;
			overflow: visible;
			width: 152px;
			white-space: nowrap;
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: normal;
			font-size: 20px;
			color: rgba(112,112,112,1);
		}
		
		#SelectCustomerNumb{
			z-index : 1;
			left: 867px;
			top: 281px;
			position: fixed;
			overflow: visible;
			white-space: nowrap;
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: normal;
			font-size: 17px;
			color: rgba(112,112,112,1);
		
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
			position: fixed;
			width: 1027px;
			height: 263px;
			left: 307px;
			top: 334px;
		}


		#CustomerFindFieldCheckBox {
			z-index: 1;
			color: rgba(112,112,112,1);
			stroke-width: 1px;
			position: fixed;
			overflow: visible;
			width: 31px;
			height: 179px;
			left: 926px;
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
			position: fixed;
			overflow: visible;
			width: 132px;
			height: 20px;
			left: 764.5px;
			top: 592px;
		}
		
		#CustomerFindHeader{
			z-index: 1;
			color: rgba(112,112,112,1);
			stroke-width: 1px;
			position: fixed;
			overflow: visible;
			width: 936px;
			height: 24px;
			left: 341px;
			top: 349px;
		}




		  /* SIDEBAR */
	  .sidebar .inner {
	    width: 250px;
	    height: 100%;
	    position: fixed;
	    border-right: 1px solid #b6b5b5;
	  }
	  .sidebar .main {
	    display: block;
	    height: 100px;
	    position: relative;
	  }
	  .sidebar .main > img {
	    height: 75px;
	    position: fixed;
	    top: 10px;
	    left: 10px;
	    bottom: 10px;
	    margin: auto;
	  }
	  .sidebar .main-menu {
	  
	  }
	  .sidebar .main-menu .item:hover {
	    background-color: #696969;
	    color: #fff;
	    transition: .2s;
	  }
	  .sidebar .main-menu .item .item__name h3 {
	    display: block;
	    padding: 11px 16px;
	    color: #000;
	    cursor: pointer;
	    text-align: center;
	  }
	  .sidebar .main-menu ul.list__group {
	    
	  }
	  .sidebar .main-menu ul.list__group li {
	    
	  }
	  .sidebar .main-menu ul.list__group li a {
	    color: #000;
	    display: block;
	    padding: -5px;
	    text-align: center;
	    display: none;
	  }
	  .sidebar .main-menu .item:hover ul.list__group li a {
	    display: block;
	    transition: .2s;
	  }
	  .sidebar .main-menu ul.list__group li a::before {
	    content: "-";
	    width: 12px;
	    height: 1px;
	    padding-left: 4px;
	  }
	  .sidebar .main-menu .item .item__name h3:hover,
	  .sidebar .main-menu ul.list__group li a:hover {
	    color: #fff;
	    transition: .2s;
	  }

		/* 우수고객조회 백그라운두
		*/

		#VIPcustomerBackground {
			z-index: -1;
			position: fixed;
			overflow: visible;
			left: 275px;
			top: 100px;
			width: 1103px;
			height: 643px;
		}
	</style>


	<!--브라우저 스타일 초기화-->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
	<!--공통 css 불러오기-->
	<link rel="stylesheet" href="${path}/resources/css/common.css" type="text/css"/>
	<!-- AJAX -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	
	<!-- jQuery -->
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

	<script>$('textarea:first').click(function () {
			$t = $(this).val().replace(/<br\s*\/?>/img, "x");
			$(this).html($t)
		});</script>
	
	<!-- 사이드바 js -->
	<script>
	function Main() {
		location.href= "../emp/main"; //컨트롤러를 호출하여 jsp로 이동하여야 함 (로그인 세션야이디 전달필요)
	}
	
	function previousSR() {
		location.href="../rconsult/main"; //컨트롤러를 호출하여 jsp로 이동하여야 함
	}
	
	function srList() {
		location.href="srList.jsp"; //컨트롤러를 호출하여 jsp로 이동하여야 함
	}
	
	
	
	</script>
	
	
	
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
	var fCusReg; /*고객 지역*/
	var fCusGrd; /* 고객 등*/
	
		
	function printSearchedCustomer(){
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
					$("#CustomerFindFieldArea").html(contents);
					
					var page = html.find("div#pageList").html();
					$("#CustomerFindFieldNumb").html(page);
					
					var message = $('#selectedSize').val()+"명이 조회되었습니다.";
					$('#SelectCustomerNumb').html(message);
					
					
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
	function intoPage(current){
			var p = $(current).text();
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
					$("#CustomerFindFieldArea").html(contents);
					
					var page = html.find("div#pageList").html();
					$("#CustomerFindFieldNumb").html(page);
					
					var chk = sessionStorage.checkAll
					alert(chk);
					if(chk == 't'){
						 $("#checkAll").prop('checked',true);
					}
					checkAll();
					
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
					$("#CustomerFindFieldArea").html(contents);
					
					var page = html.find("div#pageList").html();
					$("#CustomerFindFieldNumb").html(page);
					
					var chk = sessionStorage.checkAll
					alert(chk);
					if(chk == 't'){
						 $("#checkAll").prop('checked',true);
					}
					checkAll();
					
				},
				error: function(error) {
					console.log("전송 실패");
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}		
			});
	};
	</script>
	
	<!--다음페이지리스트버튼 ajax-->
	<script> 
	function nextPL(){
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
					$("#CustomerFindFieldArea").html(contents);
					
					var page = html.find("div#pageList").html();
					$("#CustomerFindFieldNumb").html(page);
					
					var chk = sessionStorage.checkAll
					alert(chk);
					if(chk == 't'){
						 $("#checkAll").prop('checked',true);
					}
					checkAll();
					
					
				},
				error: function(error) {
					console.log("전송 실패");
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}		
			});
	};
	</script>
	
	<!-- 전체선택 -->
	<script>
	
		function checkAll(){
		 if( $("#checkAll").is(':checked') ){
		        $("input[name=check]").prop("checked", true);
		     	sessionStorage.setItem("checkAll","t")
		 }else{
		        $("input[name=check]").prop("checked", false);
		        	sessionStorage.removeItem("checkAll")
		      }
		};
	     
	</script>
	
	<!--스케줄생성 버튼 ajax-->
	<script>
	$(function() {
		
		$("#SaveBtn").on('click', function() {		
		
			 var customerIdList = [];
             
             $('input[name="check"]:checked').each(function(i){//체크된 리스트 인덱스로 차례로 돌며 배열에 저장
            	 customerIdList.push($(this).val());
             });
             alert(sDate);
			alert(customerIdList[0]);
			$.ajax({
				type: "get",
				url : "schedule",
				dataType: "text",
				cache : false,
				contentType: 'application/json; charset=utf-8',
				data :				
				{"start":sDate, "finish":fDate, "p":"1", "cList":customerIdList},
				success : function(result) {
					
					$("#scheduleSaveResult").val(decodeURIComponent(result));
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
<body>

<!-- 배경 svg -->
	<svg id="VIPcustomerBackground">
		<g data-name="VIPcustomerBackground" transform="translate(1436 835)" fill="#ebebeb">
			<path d="M -333.4998779296875 -192.5001373291016 L -1435.500244140625 -192.5001373291016 L -1435.500244140625 -365.4606628417969 L -1435.500244140625 -834.499755859375 L -1132.5 -834.499755859375 L -1132.5 -764.2201538085938 L -1132.5 -763.7201538085938 L -1132 -763.7201538085938 L -333.4998779296875 -763.7201538085938 L -333.4998779296875 -192.5001373291016 Z" stroke="none" />
			<path d="M -333.9998474121094 -193.0001678466797 L -333.9998474121094 -763.2200317382812 L -1132 -763.2200317382812 L -1133 -763.2200317382812 L -1133 -764.2200317382812 L -1133 -833.999755859375 L -1435.000244140625 -833.999755859375 L -1435.000244140625 -365.4607238769531 L -1435.000244140625 -193.0001678466797 L -333.9998474121094 -193.0001678466797 M -332.9998474121094 -192.0001678466797 L -1436.000244140625 -192.0001678466797 L -1436.000244140625 -365.4607238769531 L -1436.000244140625 -834.999755859375 L -1132 -834.999755859375 L -1132 -764.2200317382812 L -332.9998474121094 -764.2200317382812 L -332.9998474121094 -192.0001678466797 Z" stroke="none" fill="#707070" />
		</g>
	</svg>
	
	<svg class="RectField">
		
		<rect id="RectField" rx="0" ry="0" x="0" y="0" width="1075" height="428">
		</rect>
	</svg>
	<svg class="CustomerFindField">
		<rect id="CustomerFindField" rx="0" ry="0" x="0" y="0" width="1027" height="263">
		</rect>
	</svg>

	<!-- SIDEBAR -->
	<section class="sidebar">
		<div class="inner">
			
			<a href="javascript:Main()" class="main">
				<img src="${path}/resources/images/main_temp.jpg" alt="main">
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
		<span>우수고객상담 스케줄 생성</span>
	</div>
	
	
	<!--스케쥴 일정-->
	<div id="ScheduleSetting">
		<h4>스케줄 일정</h4>
	</div>


	<!-- 스케줄일정생성파트-->
	<!--Schedule Start -->
	
	<input type="date" id="ScheduleStartSelect" placeholder="시작일 선택" onchange="sdateChange(this)"/>

	<!--Schedule End-->
	<input type="date" id="ScheduleEndSelect" placeholder="종료일 선택" onchange="fdateChange(this)"/>






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
			<h4>우수고객조회</h4>
		</div>
	
		<!-- 고객 조회 필터 OPTgroup -->
		<!--출력고객 수-->
		<select id="CustomerPrintCount" name="CustomerPrintCount" >
			<option value=""selected disabled hidden>페이지당 출력 수 </option>
			<option value="5">5명</option>
			<option value="10">10명</option>
			<option value="15">15명</option>
		</select>


		<!--ㅈㅣ역-->
		<select id="RegionSelect" name="RegionSelect">
			<option value=""> 지역 </option>
			<optgroup label="서울특별시">
				<option value="서울특별시 강남구">강남구</option>
				<option value="gwangjin">광진구</option>
			</optgroup>
			<optgroup label="경기도">
				<option value="boondang">분당</option>
				<option value="incheon">인천</option>
				<option value="boocheon">부천</option>
			</optgroup>
			<optgroup label="강원도">
				<option value="gangreung">강릉</option>
				<option value="chuncheon">춘천</option>
			</optgroup>
			<optgroup label="경상도">
				<option value="busan">부산</option>
			</optgroup>
		</select>
		<!--고객등급-->
		<select id="CustomerGrade" name="CustomerGrade">
			<option value=""> 고객등급 </option>
			<option value="1"> VIP</option>
			<option value="2">GOLD</option>
			<option value="3">SILVER</option>
			<option value="4">BRONZE</option>
			<option value="5">NOMAL</option>
		</select>
		
		<!-- 검색된 고객 리스트 출력칸 -->
		<div id="CustomerFindFieldArea">
		</div>		
		

	
		<!--customerFindSelect Number-->
		<div id="CustomerFindFieldNumb">
		</div>
		
		
		
		<!--Btn-->
		<a class='btn SubmitBtn' id="SaveBtn">스케쥴생성</a>
		<input type='button' class='btn SubmitBtn' id="SearchBtn" value='조회' />
		<input type='button' class='btn SubmitBtn' id="ScheduleBtn" value='적용'  onclick="printDate()" />
	
		<div id = "CustomerFindHeader">
		
		
		</div>
		
		
		
		
		


			<textarea id="scheduleSaveResult">


			</textarea>
	
		
		
	


	
	
	
</body>
</html>