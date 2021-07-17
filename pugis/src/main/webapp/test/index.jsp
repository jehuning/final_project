<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="${path}/resources/css/table.css" type="text/css"/>

<!-- jQuery -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

<!-- FULLCALENDAR -->
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css">

</head>
<body>

<script type="text/javascript">
	function Main() {
		location.href="index.jsp"; //컨트롤러를 호출하여 jsp로 이동하여야 함 (로그인 세션아이디 전달필요)
	}
	
	function previousSR() {
		location.href="previousSR.jsp"; //컨트롤러를 호출하여 jsp로 이동하여야 함
	}
	
	function srList() {
		location.href="srList.jsp"; //컨트롤러를 호출하여 jsp로 이동하여야 함
	}
	
	
	document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
          header: {
              left: 'prev',
              center: 'title',
              right: 'next'
          },
          initialView: 'dayGridMonth',
          showNonCurrentDates:false,
          fixedWeekCount:false,
          height:"350px",
          handleWindowResize:true,
          aspectRatio: 1.35
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
      
      	<div style="width: 46%; float: right;" id="calendar">
      
      	</div>
    </div>
  </section>


  <!-- SCHEDULE DETAILS -->
  <section class="schedule-details">
    <div class="inner">
    
      <div style="padding: 15px 20px;" class="personal__schedule">
		<p>개인 일정</p>
		<table border="1">
		<c:forEach var="empScheduleList" items="${empScheduleList}" varStatus="status">
			<tr>
				<td style="border: 1px solid #b6b5b5; border-radius: 50%">${empScheduleList.schedule_date}</td>
				<td>${empScheduleList.schedule_name}</td>
			</tr>
		</c:forEach>
		</table>
      </div>
      
      <div style="padding: 15px 20px;" class="service__schedule">
        <p>서비스팀 일정</p>
        <table border="1">
        <c:forEach var="deptScheduleList" items="${deptScheduleList}" varStatus="status">
			<tr>
				<td style="border: 1px solid #c9c9c9 background-color: #c9c9c9; color: border-radius: 50%">${deptScheduleList.schedule_date}</td>
				<td>${deptScheduleList.schedule_name}</td>
				<td>${deptScheduleList.schedule_specific}</td>
			</tr>
		</c:forEach>
        </table>
      </div>
      
      <div style="display: flex; flex-direction: column;" class="consult__schedule">
      	<div style="padding: 15px 20px; border-bottom: 1px solid #b6b5b5; overflow: auto;" class="regular_consult">
      		<p>정기 고객 상담 일정</p>
      		<table border="1">
       	 	<c:forEach var="rgConsultList" items="${rgConsultList}" varStatus="status">
				<tr>
					<td style="border: 1px solid #b6b5b5; border-radius: 50%">${rgConsultList.schedule_date}</td>
					<td>${rgConsultList.schedule_name}</td>
					<td>${rgConsultList.schedule_specific}</td>
				</tr>
			</c:forEach>
        	</table>
      	</div>
      	
      	<div style="padding: 15px 20px; overflow: auto;" class="marketing_consult">
      		<p>마케팅 상담 일정</p>
      		<table border="1">
       	 	<c:forEach var="mkConsultList" items="${mkConsultList}" varStatus="status">
				<tr>
					<td style="border: 1px solid #c9c9c9 background-color: #c9c9c9; color: border-radius: 50%">${mkConsultList.schedule_date}</td>
					<td>${mkConsultList.schedule_name}</td>
					<td>${mkConsultList.schedule_specific}</td>
				</tr>
			</c:forEach>
        	</table>
      	</div>
      </div>
      
    </div>
  </section>

</body>
</head>
</html>