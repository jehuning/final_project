<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>서비스팀 메인페이지</title>

<!--브라우저 스타일 초기화-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />

<link rel="stylesheet" href="${path}/resources/css/main.css" type="text/css"/>
<link rel="stylesheet" href="${path}/resources/css/common.css" type="text/css"/>

<!-- FULLCALENDAR -->
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css">

</head>
<body>

<script type="text/javascript">
	function Main() {
		location.href="index.jsp"; //컨트롤러를 호출하여 jsp로 이동하여야 함 (로그인 세션야이디 전달필요)
	}
	
	function previousSR() {
		location.href="previousSR.jsp"; //컨트롤러를 호출하여 jsp로 이동하여야 함
	}
	
	function srList() {
		location.href="srList.jsp"; //컨트롤러를 호출하여 jsp로 이동하여야 함
	}
	  	
	$.ajax({
		url: '',
		type: 'post',
		success: function(res) {
			
		}
	});	
	document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
          initialView: 'dayGridMonth'
//          events: [{
//        	  title: 'ㅇㅇ',
//       	  start: '2021-07-15'
//          }]
        });
        calendar.render();
      });
	
	
	function A_popup() {
		var url = "";
		var name = "상세 출결현황";
		var option = "width = 500, height = 500, top = 100, left = 200, location = no, scrollbars = yes";
		window.open(url, name, option);
	}
	
	function E_popup() {
		var url = "";
		var name = "사원정보";
		var option = "width = 500, height = 500, top = 100, left = 200, location = no, scrollbars = yes";
		window.open(url, name, option);
	}
	
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
      <h1>서비스팀 메인페이지</h1>
    </div>
  </header>


  <!-- SCHEDULE -->
  <section class="schedule">
 	<div class="inner">
      
    	<a href="javascript:void(0)" class="profile">
			<img src="${path}/resources/images/main_temp.jpg" alt="profile"> <!-- db에서 얻은 프로필파일명으로 src주소 진입 -->
		</a>
      	<div class="emp__info">
        	<div class="emp__dept">${empSummary.dept_name}</div>
        	<div class="emp__position">
          		<span class="emp__name">${empSummary.emp_name}</span>
          		<span class="emp__grade">${empSummary.job_name}</span>
        	</div>
        	<div class="emp__attendBtn">
          		<a href="javascript:void(0)" class="start">출근</a>   <!-- Ajax로 컨트롤러 호출(직원 세션아이디 넘김) -->
          		<a href="javascript:void(0)" class="leave">퇴근</a>
        	</div>
        	<div class="emp__details">
         	 	<a href="javascript:A_popup()" class="attend__more">상세 출결현황</a><br />
         	 	<a href="javascript:E_popup()" class="emp__more">사원정보</a>
        	</div>
      	</div>
      
      	<div style="width: 45.5%; float: right;" id="calendar">
      
      	</div>
    </div>
  </section>


  <!-- SCHEDULE DETAILS -->
  <section class="schedule-details">
    <div class="inner">
      <div class="personal__schedule">
		<p>ㅇㅇ</p>
      </div>
      <div class="service__schedule">
        <p>ㅇㅇ</p>
      </div>
      <div class="consult__schedule">
      	<p>ㅇㅇ</p>
      </div>
    </div>
  </section>

</body>
</head>
</html>