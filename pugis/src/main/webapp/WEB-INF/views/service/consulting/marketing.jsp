<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<c:set var="path" value="${pageContext.request.contextPath}" />    
 <!DOCTYPE html>   
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>우수고객 상담</title>
	<!--브라우저 스타일 초기화-->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
	<style type="text/css">
		@CHARSET "UTF-8";
/* 페이지리스트 가로정렬 */ 
		.pagination ul {
		    list-style:none;
		    margin:0;
		    padding:0;
			}
			
		.pagination li {
		    margin: 0 0 0 0;
		    padding: 0 0 0 0;
		    border : 0;
		    float: left;
			}

		#VipCustomerConsultingTitle{
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: normal;
			font-size: 23px;
			color: rgba(112,112,112,1);
			position: absolute;
			overflow: visible;
			left: 286px;
			top: 114px;
			
			}
			#MaketingcustomerTitle{
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: normal;
			font-size: 23px;
			color: rgba(112,112,112,1);
			position: absolute;
			overflow: visible;
			left: 600px;
			top: 114px;
			
			}
			#AllConsultSearchTitle{
			z-index:1;
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: normal;
			font-size: 23px;
			color: rgba(112,112,112,1);
			position: absolute;
			overflow: visible;
			left: 942px;
			top: 114px;
			
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
			left: 315px;
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
			left: 382px;
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
			padding: 15px 52px;
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
			left: 1233px;
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
			width: 90px;
			height: 30px;
		}

		#ScheduleBtn { /*적용*/
			z-index: 1;
			position: fixed;
			overflow: visible;
			left: 666px;
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
			left: 412px;
			top: 284px;
		}

		#ScheduleEndSelect {
			z-index: 1;
			position: fixed;
			overflow: visible;
			width: 155px;
			height: 31px;
			left: 597px;
			top: 284px;
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
			left: 1044px;
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
		overflow: auto;
		z-index: 1;
		width: 1025px;
		height: 262px;
		left: 308px;
		top: 334px;
		border: solid 1px #707070; 
		
		}
		

		#ScheduleSetting {
			left: 978px;
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
			width: 200px;
			height: 31px;
			left: 820px;
			top: 244px;
		}
		#CustomerPrintCount1 {
			z-index: 1;
			position: fixed;
			overflow: visible;
			width: 200px;
			height: 31px;
			left: 1030px;
			top: 244px;
		}
	

		#CustomerGrade {
			z-index: 1;
			position: fixed;
			overflow: visible;
			width: 180px;
			height: 31px;
			left: 411px;
			top: 244px;
		}


		#CustomerFind {
			left: 494px;
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




		/* 우수고객조회 백그라운두
		#VIPcustomerBackground {
			z-index: -1;
			position: fixed;
			overflow: visible;
			left: 275px;
			top: 100px;
			width: 1103px;
			height: 643px;
		}
	*/
	#AllConsultSearch {
		
			position: fixed;
			overflow: visible;
			left: 275px;
			top: 100px;
			width: 1103px;
			height: 643px;
		}
		
		#MaketingcustomerBackground {
			
			position: fixed;
			overflow: visible;
			left: 275px;
			top: 100px;
			width: 1103px;
			height: 643px;
		}
		#VIPcustomerBackground {
			
			position: fixed;
			overflow: visible;
			left: 275px;
			top: 100px;
			width: 1103px;
			height: 643px;
		}
	
	
	</style>
	


	
	<!--공통 css 불러오기-->
	<link rel="stylesheet" href="${path}/resources/css/common.css" type="text/css"/>
	<!-- AJAX -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<!-- jQuery -->
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
	
	
	
	<!-- 사이드바 js -->
	<script>
	function Main() {
		location.href= "../emp/login"; //컨트롤러를 호출하여 jsp로 이동하여야 함 (로그인 세션야이디 전달필요)
	}
	
	function previousSR() {
		location.href="../sales/main"; //컨트롤러를 호출하여 jsp로 이동하여야 함
	}
	function rconsult() {
		location.href="../rconsult/main"; //컨트롤러를 호출하여 jsp로 이동하여야 함
	}
	
	function qna() {
		location.href="../qna/list";
	}
	function mconsult() {
		location.href="../mconsult/main";
	}
	function searchCon() {
		location.href="../consultsearch/main";
	}
	
	
	
	</script>
	
	<!-- 조회 종류 선택 셀렉박스 -->
	<script>
	var condition; /* 조회 종류*/
	var start;
	var finish;
	function searchCondition(con){
		$("#ScheduleStartSelect").attr("disabled",false);
		condition= $(con).val();
		/*alert(condition)*/
		if(condition == "ALL" || condition =="RG"||condition=="MK"){
			
			$("#CustomerGrade").attr("disabled",true);
		}else{
			$("#CustomerGrade").attr("disabled",false);
			condition= null;
		}
	}
	function mkCondition(con){
		var index= $(con).val();
		var list = new Array();
		var list1 = new Array();
		var list2= new Array();
		
		<c:forEach items="${mkConList}" var="mk">
			list.push("${mk.consult_code}");
			list1.push("${mk.mkconsult_start}");
			list2.push("${mk.mkconsult_finish}");
		</c:forEach>
		
		mk_code = list[index];
		start = list1[index];
		finish = list2[index];
				
		
		/*
		alert(mk_code);
		alert(start);
		alert(finish);
		*/
	}
	</script>
	
	<!-- 스케줄날짜지정 js -->
	<script>
	var sDate;
	var fDate;
	
		function sdateChange(date){
		sDate = date.value;
		$("#ScheduleEndSelect").attr("disabled",false);
		start = date.value.replaceAll("-","");
		}
		function fdateChange(date){
			fDate = date.value;
			finish = date.value.replaceAll("-","");
		}
	function printDate(){
		var message = "조회할 기간은" + sDate + "~" +fDate+ "입니다."
		document.getElementById("SelectCustomerNumb").innerHTML = message;
		
	}
	
	</script>
	
	
	<!-- 조회 방법 지정 -->
	<script>
	function printCondition(){
		
		
			var sy = start.substring(0,4);
			var sm = start.substring(4,6);
			var sd = start.substring(6,8);
			$("#ScheduleStartSelect").val(sy+"-"+sm+"-"+sd);
			$("#ScheduleStartSelect").attr("disabled",true);
			var fy = finish.substring(0,4);
			var fm = finish.substring(4,6);
			var fd = finish.substring(6,8);
			$("#ScheduleEndSelect").val(fy+"-"+fm+"-"+fd);
			$("#ScheduleEndSelect").attr("disabled",true);
		
		
		
		
	/*	$("#ScheduleStartSelect").val();
		$("#ScheduleStartSelect").val();
	*/	
	}
	
	</script>
	
	
	
	<!--고객조회버튼 ajax-->
	<script> 
	$(function() {
			
			$("#SearchBtn").on('click', function() {		
				var pageListSize = $("#CustomerPrintCount").val();
				var selectSize = $("#CustomerPrintCount1").val();
				
				
				$.ajax({
					type: "get",
					url : "customer",
					dataType: "text",
					cache : false,
					contentType: 'application/json; charset=utf-8',
					data :				
					{"plsize":pageListSize,  "p":"1", "selectSize":selectSize},
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
			var selectSize = $("#CustomerPrintCount1").val();
			
			$.ajax({
				type: "get",
				url : "customer",
				dataType: "text",
				cache : false,
				contentType: 'application/json; charset=utf-8',
				data :				
				{"plsize":pageListSize, "p":p, "selectSize":selectSize},
				success : function(result) {

					var html = jQuery('<div>').html(result);
					var contents = html.find("div#customerList").html();
					$("#CustomerFindFieldArea").html(contents);
					
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
			var selectSize = $("#CustomerPrintCount1").val();
			
			$.ajax({
				type: "get",
				url : "customer",
				dataType: "text",
				cache : false,
				contentType: 'application/json; charset=utf-8',
				data :				
				{"plsize":pageListSize,  "p":"1", "selectSize":selectSize},
				success : function(result) {

					var html = jQuery('<div>').html(result);
					var contents = html.find("div#customerList").html();
					$("#CustomerFindFieldArea").html(contents);
					
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
	
	<!--다음페이지리스트버튼 ajax-->
	<script> 
	function nextPL(){
			var p = $("#nextPL").val();
			var pageListSize = $("#CustomerPrintCount").val();
			var selectSize = $("#CustomerPrintCount1").val();
			
			$.ajax({
				type: "get",
				url : "customer",
				dataType: "text",
				cache : false,
				contentType: 'application/json; charset=utf-8',
				data :				
				{"plsize":pageListSize,  "p":"1", "selectSize":selectSize},
				success : function(result) {

					var html = jQuery('<div>').html(result);
					var contents = html.find("div#customerList").html();
					$("#CustomerFindFieldArea").html(contents);
					
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
	
	<!-- 전체선택 -->
	<script>
	
		function checkAll(){
		 if( $("#checkAll").is(':checked') ){
		        $("input[name=check]").prop("checked", true);
		     	
		 }else{
		        $("input[name=check]").prop("checked", false);
		        	
		      }
		};
	     
		/*function changeCheck(c){
			$(c).prop("checked")
			
			
		}*/
		
	</script>
	
	<!--스케줄생성 버튼 ajax-->
	<script>
	/* 로우 선택시 하이라이트
	var id; 
	function HighlightRow(obj){
		var table = document.getElementById("consultTable");
		var tr = table.getElementsByTagName("tr");
		for(var i=0; i<tr.length; i++){
			tr[i].style.background = "white";
		}
		obj.style.backgroundColor = "#e0fcfa";
		id = $(obj).children().find('input').val();
		console.log(id);
		$('#scheduleSaveResult').focus();
	}*/
	
	
	
	$(function() {
			
			$("#SaveBtn").on('click', function() {		
				
				 var customerIdList = [];
	             
	             $('input[name="check"]:checked').each(function(i){//체크된 리스트 인덱스로 차례로 돌며 배열에 저장
	            	 customerIdList.push($(this).val());
	             });
	            
				
				$.ajax({
					type: "get",
					url : "save",
					dataType: "text",
					cache : false,
					contentType: 'application/json; charset=utf-8',
					data :				
					{"start":start, "finish":finish, "cList":customerIdList, "mk_code" : mk_code},
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
		<g data-name="VIPcustomerBackground" transform="translate(1436 835)" fill="#fff">
			<path d="M -333.4998779296875 -192.5001373291016 L -1435.500244140625 -192.5001373291016 L -1435.500244140625 -365.4606628417969 L -1435.500244140625 -834.499755859375 L -1132.5 -834.499755859375 L -1132.5 -764.2201538085938 L -1132.5 -763.7201538085938 L -1132 -763.7201538085938 L -333.4998779296875 -763.7201538085938 L -333.4998779296875 -192.5001373291016 Z" stroke="none" />
			<path d="M -333.9998474121094 -193.0001678466797 L -333.9998474121094 -763.2200317382812 L -1132 -763.2200317382812 L -1133 -763.2200317382812 L -1133 -764.2200317382812 L -1133 -833.999755859375 L -1435.000244140625 -833.999755859375 L -1435.000244140625 -365.4607238769531 L -1435.000244140625 -193.0001678466797 L -333.9998474121094 -193.0001678466797 M -332.9998474121094 -192.0001678466797 L -1436.000244140625 -192.0001678466797 L -1436.000244140625 -365.4607238769531 L -1436.000244140625 -834.999755859375 L -1132 -834.999755859375 L -1132 -764.2200317382812 L -332.9998474121094 -764.2200317382812 L -332.9998474121094 -192.0001678466797 Z" stroke="none" fill="#707070" />
		</g>
	</svg>
		
	
	
	
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
              <a href="javascript:rconsult()">우수고객 상담</a>
            </li>
            <li class="list__contents">
              <a href="javascript: mconsult()">마케팅 상담</a>
            </li>
            <li class="list__contents">
              <a href="javascript:searchCon()">전체 상담 조회</a>
            </li>
          </ul>
        </div>
        <div class="item">
          <div class="item__name">
             <h3><a href="javascript:qna()">고객의 소리(Q&A)</a></h3>
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
	<div id="MaketingcustomerTitle">
		<span>마케팅상담 스케줄 생성</span>
	</div>
	<div id="AllConsultSearchTitle">
		<span>전체 상담 조회 </span>
	</div>
	
	
	<!--스케쥴 일정-->
	<div id="ScheduleSetting">
		<h4>랜덤 고객 조회 조건 선택</h4>
	</div>


	<!-- 스케줄일정생성파트-->
	<!--Schedule Start -->
	
	<input type="date" id="ScheduleStartSelect" placeholder="시작일 선택" onchange="sdateChange(this)" disabled/> 

	<!--Schedule End-->
	<input type="date" id="ScheduleEndSelect" placeholder="종료일 선택" onchange="fdateChange(this)" disabled/>






	<!-- 선택된 스케줄 기간 출력칸 -->
	<div id="SelectDate">
		<span id="SelectedDate"></span>

	</div>
	<!-- 선택된 고객 숫자 출력칸 -->
	<div id="SelectCustomerNumb">
		<span id="SelectCustomerNumb"></span>
		
	</div>


		
		
		<!--고객조회-->

		<div id="CustomerFind">
			<h4>스케줄 기간 선택</h4>
		</div>
	
		<!-- 조회 종류 선택 -->
		<select id="CustomerPrintCount" name="CustomerPrintCount" >
			<option value=""selected disabled hidden>페이지당 출력 수 </option>
			<option value="5">5명</option>
			<option value="10">10명</option>
			<option value="20">20명</option>
			<option value="50">50명</option>
		</select>

		<select id="CustomerPrintCount1" name="CustomerPrintCount1" >
			<option value=""selected disabled hidden>조회할 고객 수 </option>
			<option value="10">10명</option>
			<option value="20">20명</option>
			<option value="50">50명</option>
			<option value="100">100명</option>
		</select>
		
		<!--마케팅행사종류선택-->
		
			<select id="CustomerGrade" name="CustomerGrade" onchange="mkCondition(this)">
				
					<option value=""selected disabled>마케팅 행사 선택</option>
				<c:forEach  var="mk" items="${mkConList}" varStatus="status">
					<option value="${status.index}">${mk.event_name}</option>
				</c:forEach>
			</select>
	
		<!-- 검색된 고객 리스트 출력칸 -->
		<div id="CustomerFindFieldArea">
		</div>		
		

	
		<!--customerFindSelect Number-->
		<div id="CustomerFindFieldNumb">
		</div>
		
		
		
		<!--Btn-->
		<a class='btn SubmitBtn' id="SaveBtn">스케줄 생성</a>
		<input type='button' class='btn SubmitBtn' id="SearchBtn" value='조회' />
		<input type='button' class='btn SubmitBtn' id="ScheduleBtn" value='적용'  onclick="printCondition()" />
	
		<div id = "CustomerFindHeader">
		
		
		</div>
		
		
		
		
		


			<textarea id="scheduleSaveResult">


			</textarea>
	
		
		
	


	
	
	
</body>
</html>