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
	<!--공통 css 불러오기-->
	<link rel="stylesheet" href="${path}/resources/css/common.css" type="text/css"/>
	<link rel="stylesheet" href="${path}/resources/css/regular.css?after" type="text/css"/>
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
	     
	</script>
	
	<!--스케줄생성 버튼 ajax-->
	<script>
	$(function() {
		
		$("#SaveBtn").on('click', function() {		
		
			 var customerIdList = [];
             
             $('input[name="check"]:checked').each(function(i){//체크된 리스트 인덱스로 차례로 돌며 배열에 저장
            	 customerIdList.push($(this).val());
             });
            
			
			$.ajax({
				type: "get",
				url : "schedule",
				dataType: "text",
				cache : false,
				contentType: 'application/json; charset=utf-8',
				data :				
				{"start":sDate, "finish":fDate, "cList":customerIdList},
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
		<svg id="MaketingcustomerBackground">
		  <g data-name="MaketingcustomerBackground" transform="translate(3018 2588)" fill="#fff">
		    <path d="M -1915.499389648438 -1945.5 L -3017.499755859375 -1945.5 L -3017.499755859375 -2041.999267578125 L -3017.499755859375 -2517.000244140625 L -3017.499755859375 -2517.499267578125 L -2713.99951171875 -2517.499267578125 L -2713.49951171875 -2517.499267578125 L -2713.49951171875 -2517.999267578125 L -2713.49951171875 -2587.49951171875 L -2410.499267578125 -2587.49951171875 L -2410.499267578125 -2517.999267578125 L -2410.499267578125 -2517.499267578125 L -2409.999267578125 -2517.499267578125 L -1915.499389648438 -2517.499267578125 L -1915.499389648438 -1945.5 Z" stroke="none"/>
		    <path d="M -1915.999389648438 -1946 L -1915.999389648438 -2516.999267578125 L -2409.999267578125 -2516.999267578125 L -2410.999267578125 -2516.999267578125 L -2410.999267578125 -2517.999267578125 L -2410.999267578125 -2586.99951171875 L -2712.99951171875 -2586.99951171875 L -2712.99951171875 -2517.999267578125 L -2712.99951171875 -2516.999267578125 L -2713.99951171875 -2516.999267578125 L -3016.999755859375 -2517.000244140625 L -3016.999755859375 -2041.999267578125 L -3016.999755859375 -1946 L -1915.999389648438 -1946 M -1914.999389648438 -1945 L -3017.999755859375 -1945 L -3017.999755859375 -2041.999267578125 L -3017.999755859375 -2517.000244140625 L -3017.999755859375 -2517.999267578125 L -2713.99951171875 -2517.999267578125 L -2713.99951171875 -2587.99951171875 L -2409.999267578125 -2587.99951171875 L -2409.999267578125 -2517.999267578125 L -1914.999389648438 -2517.999267578125 L -1914.999389648438 -1945 Z" stroke="none" fill="#707070"/>
		  </g>
		</svg>
			
			<svg id="AllConsultSearch">
		  <g data-name="AllConsultSearchWhite" transform="translate(4454 2588)" fill="#fff">
		    <path d="M -3351.5 -1945.500366210938 L -4453.4990234375 -1945.500366210938 L -4453.4990234375 -2042.000366210938 L -4453.4990234375 -2042.500366210938 L -4453.5 -2042.500366210938 L -4453.5 -2516.5009765625 L -4453.4990234375 -2517.0009765625 L -4453.4990234375 -2517.50048828125 L -3845.99951171875 -2517.50048828125 L -3845.49951171875 -2517.50048828125 L -3845.49951171875 -2518.00048828125 L -3845.49951171875 -2587.499755859375 L -3542.500732421875 -2587.499755859375 L -3542.500732421875 -2518.00048828125 L -3542.500732421875 -2517.50048828125 L -3542.000732421875 -2517.50048828125 L -3351.5 -2517.50048828125 L -3351.5 -1945.500366210938 Z" stroke="none"/>
		    <path d="M -3352 -1946.000244140625 L -3352 -2517.00048828125 L -3542.000732421875 -2517.00048828125 L -3543.000732421875 -2517.00048828125 L -3543.000732421875 -2518.00048828125 L -3543.000732421875 -2586.999755859375 L -3844.99951171875 -2586.999755859375 L -3844.99951171875 -2518.00048828125 L -3844.99951171875 -2517.00048828125 L -3845.99951171875 -2517.00048828125 L -4452.9990234375 -2517.00048828125 L -4453 -2516.0009765625 L -4453 -2043.00048828125 L -4452.9990234375 -2043.00048828125 L -4452.9990234375 -2042.00048828125 L -4452.9990234375 -1946.000244140625 L -3352 -1946.000244140625 M -3351 -1945.000244140625 L -4453.9990234375 -1945.000244140625 L -4453.9990234375 -2042.00048828125 L -4454 -2042.00048828125 L -4454 -2517.0009765625 L -4453.9990234375 -2517.0009765625 L -4453.9990234375 -2518.00048828125 L -3845.99951171875 -2518.00048828125 L -3845.99951171875 -2587.999755859375 L -3542.000732421875 -2587.999755859375 L -3542.000732421875 -2518.00048828125 L -3351 -2518.00048828125 L -3351 -1945.000244140625 Z" stroke="none" fill="#707070"/>
		  </g>
		</svg>


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
              <a href="javascript:rconsult()">우수고객 상담</a>
            </li>
            <li class="list__contents">
              <a href="javascript:mconsult()">마케팅 상담</a>
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
		<span>우수고객상담 ></span>
	</div>
	<div id="MaketingcustomerTitle">
		<span>마케팅상담 ></span>
	</div>
	<div id="AllConsultSearchTitle">
		<span>전체상담조회 ></span>
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
			<option value="20">20명</option>
			<option value="50">50명</option>
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