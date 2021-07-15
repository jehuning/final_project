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



		#SelectDate {
			left: 281px;
			top: 562.69px;
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
			top: 255px;
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
			left: 640.7px;
			top: 559.69px;
			width: 84px;
			height: 26px;
		}


		/*Schedule Select part*/


		#ScheduleStartSelect {
			z-index: 3;
			position: absolute;
			overflow: visible;
			width: 227px;
			height: 31px;
			left: 269px;
			top: 255px;
		}

		#ScheduleEndSelect {
			z-index: 1;
			position: absolute;
			overflow: visible;
			width: 227px;
			height: 31px;
			left: 506px;
			top: 255px;
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

		#EventSelect {
			position: absolute;
			overflow: visible;
			width: 152px;
			height: 31px;
			left: 251px;
			top: 172px;
		}

		#ResultPrint {
		}

		textarea {
			position: absolute;
			overflow: visible;
			width: 865px;
			height: 91px;
			left: 238px;
			top: 633px;
			border: solid 1px #707070;
			/*border-radius: 5px;*/
			font-size: 16px;
			resize: both;
		}


		/*checkbox*/
		.put_custom_wrap {
			z-index: 1;
			position: absolute;
			width: 130px;
			height: 31px;
			left: 810px;
			top: 285px;
		}

			.put_custom_wrap input[type=checkbox]::-ms-check {
				border: solid 1px #fff;
			}

			.put_custom_wrap input[type=checkbox] {
				-webkit-appearance: none;
				position: relative;
				top: 2px;
				left: -1px;
				width: 22px;
				height: 22px;
				vertical-align: middle;
			}

				.put_custom_wrap input[type=checkbox] + label {
					display: inline-block;
					cursor: pointer;
					position: relative;
					padding-left: 25px;
					margin-right: 15px;
					font-size: 13px;
				}

					.put_custom_wrap input[type=checkbox] + label:before {
						content: "";
						display: inline-block;
						width: 20px;
						height: 20px;
						margin-right: 10px;
						position: absolute;
						top: 0;
						left: 0;
						bottom: 1px;
						background-color: #ccc;
						/* border-radius:2px; */
						box-shadow: inset 0px 1px 1px 0px rgba(0, 0, 0, .3), 0px 1px 0px 0px rgba(255, 255, 255, .8);
					}

				.put_custom_wrap input[type=checkbox]:checked + label:before {
					content: "\2713";
					text-shadow: 1px 1px 1px rgba(0, 0, 0, .2);
					font-size: 18px;
					font-weight: 800;
					color: #fff;
					background: green;
					text-align: center;
					line-height: 18px;
				}
		/*---*/


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

		#VipCustomerConsultingTitle {
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
			fill: #f2f2f1;
			border: solid 1px #707070;
		}

		.RectField {
			position: absolute;
			overflow: visible;
			width: 1075px;
			height: 428px;
			left: 238px;
			top: 188px;
		}

		/*customer Find field setting*/

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

		#ScheduleSetting {
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
			width: 130px;
			height: 31px;
			left: 810px;
			top: 255px;
		}

		#RegionSelect {
			z-index: 1;
			position: absolute;
			overflow: visible;
			width: 109px;
			height: 31px;
			left: 952px;
			top: 255px;
		}

		#CustomerGrade {
			z-index: 1;
			position: absolute;
			overflow: visible;
			width: 112px;
			height: 31px;
			left: 1071px;
			top: 255px;
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
			width: 473px;
			height: 285px;
			left: 811px;
			top: 310px;
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
			width: 135px;
			height: 22px;
			left: 968px;
			top: 595px;
			border: solid 1px black;
		}



		/* calendar setting*/

		#calendar {
			z-index: 1;
			position: absolute;
			overflow: visible;
			left: 281px;
			top: 319.86px;
			width: 443.7px;
			height: 225.36px;
			border: 1px solid #707070;
			border-collapse: collapse;
		}


		#CalendarField {
			fill: #FFFFFF;
			stroke: rgba(112,112,112,1);
			stroke-width: 1px;
			stroke-linejoin: miter;
			stroke-linecap: butt;
			stroke-miterlimit: 4;
			shape-rendering: auto;
		}

		.CalendarField {
			position: absolute;
			overflow: visible;
			width: 467.48px;
			height: 285px;
			left: 269px;
			top: 310px;
		}




		/* SIDEBAR */

		.sidebar .inner {
			width: 188.5px;
			height: 100%;
			position: fixed;
			border-right: 1px solid #EAEAEA;
		}

		.sidebar .main {
			font-size: 20px;
			display: block;
			height: 100px;
			position: relative;
		}

			.sidebar .main > img {
				height: 59px;
				bottom: 59px;
				position: absolute;
				top: 40px;
				left: 27px;
				margin: auto;
			}

		.sidebar .main-menu {
		}

			.sidebar .main-menu .item:hover {
				background-color: #EAEAEA;
				color: #fff;
				transition: .2s;
			}

			.sidebar .main-menu .item .item__name h3 {
				display: block;
				color: black; /*사이드바 글자 컬러*/
				cursor: pointer;
				font-weight: 500;
				text-align: left;
			}

			.sidebar .main-menu ul.list__group {
			}

				.sidebar .main-menu ul.list__group li {
				}

					.sidebar .main-menu ul.list__group li a {
						color: black; /*소메뉴 컬러*/
						display: block;
						padding: 20px;
						font-weight: 400;
						text-align: left;
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
	
	<!-- 스케줄에 등록할 고객 선택 전체선택/해제 기능 -->
	<script>
	$(function(){
	    //체크박스 클릭
	    $("#checkall").click(function(){
	        //클릭되었으면
	        alert("첵박");
	        if($("#checkall").prop("checked")){
	            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
	            $("input[name=chk]").prop("checked",true);
	            //클릭이 안되있으면
	        }else{
	            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
	            $("input[name=chk]").prop("checked",false);
	        }
	    });
	});



	
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
	
	<!--달력 구현 자바스크립트 -->
	<script language="javascript"> 
		var today = new Date(); //오늘 날짜
		var date = new Date();

		//이전달
		function beforem() //이전 달을 today에 값을 저장
		{
			today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
			autoReload(); //만들기
		}

		//다음달
		function nextm()  //다음 달을 today에 저장
		{
			today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
			autoReload();
		}

		//오늘선택
		function thisMonth() {
			today = new Date();
			autoReload();
		}

		function autoReload() {
			var nMonth = new Date(today.getFullYear(), today.getMonth(), 1); //현재달의 첫째 날
			var lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0); //현재 달의 마지막 날
			var tbcal = document.getElementById("calendar"); // 테이블 달력을 만들 테이블
			var yearmonth = document.getElementById("yearmonth"); //  년도와 월 출력할곳
			yearmonth.innerHTML = today.getFullYear() + "년 " + (today.getMonth() + 1) + "월"; //년도와 월 출력

			if (today.getMonth() + 1 == 12) //  눌렀을 때 월이 넘어가는 곳
			{
				before.innerHTML = ("<" + today.getMonth()) + "월";
				next.innerHTML = "1월" + ">";

			}
			else if (today.getMonth() + 1 == 1) //  1월 일 때
			{
				before.innerHTML = "<" + "12월";
				next.innerHTML = (today.getMonth() + 2) + "월" + ">";
			}
			else //   12월 일 때
			{
				before.innerHTML = "<" + (today.getMonth()) + "월";
				next.innerHTML = (today.getMonth() + 2) + "월" + ">";
			}


			// 남은 테이블 줄 삭제
			while (tbcal.rows.length > 2) {
				tbcal.deleteRow(tbcal.rows.length - 1);
			}
			var row = null;
			row = tbcal.insertRow();
			var cnt = 0;
			var dayCheck = (nMonth.getDay() == 0) ? 7 : nMonth.getDay(); //일요일을 마지막으로 넣기 위해서.

			// 1일 시작칸 찾기
			for (i = 0; i < (dayCheck - 1); i++) {
				cnt = cnt + 1;  //요일값
				cell = row.insertCell();

				if (i > 4) { //주말
					cell.style.backgroundColor = "#f7f7f7";
				}
			}


			// 달력 출력
			for (i = 1; i <= lastDate.getDate(); i++) // 1일부터 마지막 일까지
			{
				cell = row.insertCell();

				var str = "";

				str += "<div>" + i + "</div>";
				var day = (i < 10) ? "0" + i : i;
				str += "<div id='" + day + "'></div>"; //나중에 원하는 날에 일정을 넣기위해 id값을 날자로 설정
				cell.innerHTML = str;

				cnt = cnt + 1;
				if (cnt % 7 == 6) {//토요일
					var str = "";
					str += "<div>" + i + "</div>";
					var day = (i < 10) ? "0" + i : i;
					str += "<div id='" + day + "'>";
					str += "</div>";
					cell.innerHTML = str;
					cell.style.color = "#009de0";
					cell.style.backgroundColor = "#f7f7f7";
				}
				if (cnt % 7 == 0) { //일요일
					var str = "";
					str += "<div>" + i + "</div>";
					var day = (i < 10) ? "0" + i : i;
					str += "<div id='" + day + "'>";
					str += "</div>";
					cell.innerHTML = str;
					row = calendar.insertRow();// 줄 추가
					cell.style.color = "#ed5353";
					cell.style.backgroundColor = "#f7f7f7";
				}

				//마지막 날짜가 지나면 일요일까지 칸 그리기
				if (lastDate.getDate() == i && ((cnt % 7) != 0)) {
					var add = 7 - (cnt % 7);
					for (var k = 1; k <= add; k++) {
						cell = row.insertCell();
						cnt = cnt + 1;
						if (cnt % 7 == 6) {//토요일
							cell.style.backgroundColor = "#f7f7f7";
						}
						if (cnt % 7 == 0) { //일요일
							cell.style.backgroundColor = "#f7f7f7";
						}
					}
				}

				//오늘날짜배경색
				if (today.getFullYear() == date.getFullYear() && today.getMonth() == date.getMonth() && i == date.getDate()) {
					cell.style.backgroundColor = "#D5D5D5"; //오늘날짜배경색
				}

				//마지막 날짜가 지나면 일요일까지 칸 그리기
				if (lastDate.getDate() == i && ((cnt % 7) != 0)) {
					var add = 7 - (cnt % 7);
					for (var k = 1; k <= add; k++) {
						cell = row.insertCell();
						cnt = cnt + 1;
						if (cnt % 7 == 6) {//토요일
							cell.style.backgroundColor = "#f7f7f7";
						}
						if (cnt % 7 == 0) { //일요일
							cell.style.backgroundColor = "#f7f7f7";
						}
					}
				}

			}
		}
		</script>



</head>
<body onload="autoReload();">

	<!-- 배경 svg -->
	<svg id="VIPcustomerBackground">
		<g data-name="VIPcustomerBackground" transform="translate(1436 835)" fill="#ebebeb">
			<path d="M -333.4998779296875 -192.5001373291016 L -1435.500244140625 -192.5001373291016 L -1435.500244140625 -365.4606628417969 L -1435.500244140625 -834.499755859375 L -1132.5 -834.499755859375 L -1132.5 -764.2201538085938 L -1132.5 -763.7201538085938 L -1132 -763.7201538085938 L -333.4998779296875 -763.7201538085938 L -333.4998779296875 -192.5001373291016 Z" stroke="none" />
			<path d="M -333.9998474121094 -193.0001678466797 L -333.9998474121094 -763.2200317382812 L -1132 -763.2200317382812 L -1133 -763.2200317382812 L -1133 -764.2200317382812 L -1133 -833.999755859375 L -1435.000244140625 -833.999755859375 L -1435.000244140625 -365.4607238769531 L -1435.000244140625 -193.0001678466797 L -333.9998474121094 -193.0001678466797 M -332.9998474121094 -192.0001678466797 L -1436.000244140625 -192.0001678466797 L -1436.000244140625 -365.4607238769531 L -1436.000244140625 -834.999755859375 L -1132 -834.999755859375 L -1132 -764.2200317382812 L -332.9998474121094 -764.2200317382812 L -332.9998474121094 -192.0001678466797 Z" stroke="none" fill="#707070" />
		</g>
	</svg>
	
	<svg class="RectField">
		<!--밑 1차 배경-->
		<rect id="RectField" rx="0" ry="0" x="0" y="0" width="1075" height="428">
		</rect>
	</svg>

	<svg class="CalendarField">
		<rect id="CalendarField" rx="0" ry="0" x="0" y="0" width="467.48" height="285">
		</rect>
	</svg>
	
	<svg class="CustomerFindField">
		<rect id="CustomerFindField" rx="0" ry="0" x="0" y="0" width="473" height="285">
		</rect>
	</svg>

	<div id="_1366__8">

	<!-- SIDEBAR -->
		<section class="sidebar">
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




	<!--Calendar-->

	<table id="calendar">
		<tr>
			<td>
				<a id="before" href="javascript:beforem()"></a>
			</td>
			<td colspan="4" align="center">
				<div id="yearmonth"></div>
			</td>
			<td>
				<a id="next" href="javascript:nextm()"></a>
			</td>
			<td>
			</td>
		</tr>
		<tr>
			<td width="14%"> 월 </td>
			<td width="14%"> 화 </td>
			<td width="14%"> 수 </td>
			<td width="14%"> 목 </td>
			<td width="14%"> 금 </td>
			<td width="14%"><font color="#009de0">토</font></td>
			<td width="14%"><font color="#ed5353">일</font></td>
		</tr>
	</table>

	<!-- 선택된 스케줄 기간 출력칸 -->
	<div id="SelectDate">
		<span id="SelectedDate">선택하신 일자</span>

	</div>


		
		
		<!--고객조회-->

		<div id="CustomerFind">
			<h4>고객조회</h4>
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
		<div id="searchedCustomer">
		</div>		
		
		<!--AllcheckboxSelect-->
		<div class="put_custom_wrap">
			<input type="checkbox" id="checkall">
			<label for="CustomerFindFieldAllCheckBox"> 전체선택 </label>
		</div>
		
		
		<!--Listcheckbox-->
		<div id="CustomerFindFieldCheckBox">
		</div>
		
		<!--customerFindSelect Number-->
		<div id="CustomerFindFieldNumb">
		</div>
		
		
		
		<!--Btn-->
		<a class='btn SubmitBtn' id="SaveBtn">스케쥴생성</a>
		<input type='button' class='btn SubmitBtn' id="SearchBtn" value='조회' />
		<input type='button' class='btn SubmitBtn' id="ScheduleBtn" value='적용'  onclick="printDate()" />
	
		
		
		
		
		
		


			<textarea>


	2월 1일 ‘서울’지역 ’VIP’ 등급 ‘김철수’ 고객님 상담 스케쥴을 선택하셨습니다.
			</textarea>
	
		
		
	</div>


	
	
	
</body>
</html>