<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>전일 매출 보고서</title>

<!--브라우저 스타일 초기화-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />

<!-- AJAX -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- jQuery -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

<link rel="stylesheet" href="${path}/resources/css/previousSR.css" />
<link rel="stylesheet" href="${path}/resources/css/common.css" />

</head>
<body>

<script type="text/javascript">
// 페이지 이동
	function Main() {
		location.href="../emp/main";
	}
	
	function previousSR() {
		location.href=location.href;
	}
	
// 일정 선택 >> DB 정보 주고받기
	var pickedDate ;
	var search_date;
	
	function dateChange(date){
			pickedDate = date.value;
			
		}
	
	
	
	$(function() {
		document.getElementById('pickdate').valueAsDate = new Date();
		pickedDate = document.getElementById('pickdate').value;
		search_date = pickedDate.replaceAll('-','').substring(2,8);
		
		request = {

			type: "get",
			dataType: "text",
			processData: false, 
			cache : false,
			contentType: 'application/x-www-form-urlencoded',
			error: function(error) {
				console.log("전송 실패");
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

			}		
		}
		
		$("#totalsales").on('click', function() {		
			pickedDate = document.getElementById('pickdate').value;
			search_date = pickedDate.replaceAll('-','').substring(2,8);			
			console.log(search_date);
			request.url = "totallist";
			request.data = 				
				"search_date="+search_date;
			request.success = function(result) {

				var html = jQuery('<div>').html(result);
				var contents = html.find("div#totalsales").html();
				$("#srresult").html(contents);
				$("#excel").attr("action", "totalexceldown?search_date="+search_date);
			}
			$.ajax(request);
		
		});
		

		$("#gendersales").on('click', function() {		
			pickedDate = document.getElementById('pickdate').value;
			search_date = pickedDate.replaceAll('-','').substring(2,8);
			console.log(search_date);
			request.url = "genderlist";
			request.data = 				
				"search_date="+search_date;
			request.success = function(result) {
				var html = jQuery('<div>').html(result);
				var contents = html.find("div#gendersales").html();
				$("#srresult").html(contents);
				$("#excel").attr("action", "genderexceldown?search_date="+search_date);
			}
			$.ajax(request);
			
		});
		

		$("#agesales").on('click', function() {		
			pickedDate = document.getElementById('pickdate').value;
			search_date = pickedDate.replaceAll('-','').substring(2,8);
			console.log(search_date);
			request.url = "agelist";
			request.data = 				
				"search_date="+search_date;
			request.success = function(result) {
				var html = jQuery('<div>').html(result);
				var contents = html.find("div#agesales").html();
				$("#srresult").html(contents);
				$("#excel").attr("action", "ageexceldown?search_date="+search_date);
			}
			$.ajax(request);
		
		});
		

		$("#ticketsales").on('click', function() {	
			pickedDate = document.getElementById('pickdate').value;
			search_date = pickedDate.replaceAll('-','').substring(2,8);
			console.log(search_date);
			request.url = "ticketlist";
			request.data = 				
				"search_date="+search_date;
			request.success = function(result) {
				var html = jQuery('<div>').html(result);
				var contents = html.find("div#ticketsales").html();
				$("#srresult").html(contents);
				$("#excel").attr("action", "ticketexceldown?search_date="+search_date);
			}
			$.ajax(request);
			
		});
		

		$("#facilitysales").on('click', function() {	
			pickedDate = document.getElementById('pickdate').value;
			search_date = pickedDate.replaceAll('-','').substring(2,8);
			console.log(search_date);
			request.url = "facilitylist";
			request.data = 				
				"search_date="+search_date;
			request.success = function(result) {
				var html = jQuery('<div>').html(result);
				var contents = html.find("div#facilitysales").html();
				$("#srresult").html(contents);
				$("#excel").attr("action", "facilityexceldown?search_date="+search_date);
			}
			$.ajax(request);
			
		});
	});
	  	
</script>

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


  <!-- HEADER -->
  <header>
    <div class="main-text">
      <h1>일일 매출 보고서</h1>
    </div>
  </header>


  <!-- PREVIOUS SALES REPORT -->
  <section class="previousSR">
    <div class="inner">
      <p class="show">전일 매출조회</p>
      <p class="select">일자 선택</p>
      <form name="selectForm" action="select" method="post">
        <input type="date" id="pickdate" placeholder="날짜 선택" onchange="dateChange(this)"/>
      </form>

      <div class="sidemenu">
        <form name="sortForm" action="sort" method="post">
          <input type="button" value="전일 총 매출" id="totalsales" />
          <input type="button" value="성별" id="gendersales" />
          <input type="button" value="연령별" id="agesales" />
          <input type="button" value="티켓 종류별" id="ticketsales" />
          <input type="button" value="부대시설별" id="facilitysales" />
        </form>
      </div>
    </div>

    <!-- LIST TABLE -->
    <div class="srresult">
      <div class="inner">
     	<div id="srresult">
			
		</div>
      </div>
     
      <form id="excel" name="saveForm" action="/pugis/sales/exceldown" method="post">
        <input type="submit" value="일일 매출 보고서 엑셀 저장" class="save" />
      </form>
    </div>

  </section>
</body>

</html>