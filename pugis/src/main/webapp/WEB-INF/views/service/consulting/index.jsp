<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>서비스팀 메인페이지</title>

	<!-- AJAX -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	
	<!-- jQuery -->
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

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
	$( document ).ready(function() {
	  // 페이지 로딩시 실행할 함수
	  	var s = '<%=(String)session.getAttribute("start_time")%>';
	  	if( s != 'null'){
	  		alert(s)
	  		$('.start').css({"background-color":"yellow"});
			$('#sTime').text(s);
	  	}
	  	var l = '<%=(String)session.getAttribute("leave_time")%>';
		if(l != 'null'){
		$('.leave').css({"background-color":"yellow"});
		$('#lTime').text(l);
		}
	  
	});




	function Main() {
		location.href= "../emp/main"; //컨트롤러를 호출하여 jsp로 이동하여야 함 (로그인 세션야이디 전달필요)
	}
	
	function previousSR() {
		location.href="../rconsult/main"; //컨트롤러를 호출하여 jsp로 이동하여야 함
	}
	
	function srList() {
		location.href="srList.jsp"; //컨트롤러를 호출하여 jsp로 이동하여야 함
	}
	  	
	/*$.ajax({
		url: '',
		type: 'post',
		success: function(res) {
			
		}
	});*/	
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
	
	function start(){
		var emp_id = '<%=(String)session.getAttribute("emp_id")%>';
		var today = new Date();
		var hour = String(today.getHours())
		var minute;
		if(String(today.getMinutes()).lenth == 1){minute = "0"+String(today.getMinutes());}else{minute = String(today.getMinutes());};
		var start_time = hour + ":" + minute;
		
		$.ajax({
			type: "get",
			url : "../commute/start",
			dataType: "text",
			cache : false,
			contentType: 'application/json; charset=utf-8',
			data :				
			{"id":emp_id, "start":start_time},
			success : function(result) {
				
					$('.start').css({"background-color":"yellow"});
					$('#sTime').text(start_time);
			},
			error: function(error) {
				console.log("전송 실패");
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}		
		});
		
	}
	
	function leave(){
		var emp_id = '<%=(String)session.getAttribute("emp_id")%>';
		var today = new Date();
		var hour = String(today.getHours())
		var minute;
		if(String(today.getMinutes()).lenth == 1){minute = "0"+String(today.getMinutes());}else{minute = String(today.getMinutes());};
		var leave_time = hour + ":" + minute;
		
		
		$.ajax({
			type: "get",
			url : "../commute/leave",
			dataType: "text",
			cache : false,
			contentType: 'application/json; charset=utf-8',
			data :				
			{"id":emp_id, "leave":leave_time},
			success : function(result) {
				
					$('.leave').css({"background-color":"yellow"});
					$('#lTime').text(leave_time);
			},
			error: function(error) {
				console.log("전송 실패");
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}		
		});
		
		
		
	}
	
	
	
	
	
	
	
	function A_popup() {
		var url = "../commute/history"+'?id='+'<%=(String)session.getAttribute("emp_id")%>';
		var name = "상세 출결현황";
		var option = "width = 500, height = 500, top = 100, left = 200, location = no, scrollbars = yes";
		window.open(url, name, option);
	}
	
	function E_popup() {
		var url = "../emp/specific"+'?id='+'<%=(String)session.getAttribute("emp_id")%>';
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
          		<a href="javascript:start()" class="start">출근 <font size="1"><span id="sTime"></span></font></a>   <!-- Ajax로 컨트롤러 호출(직원 세션아이디 넘김) -->
          		<a href="javascript:leave()" class="leave">퇴근 <font size="1"><span id="lTime"></span></font></a>
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
    
      <div style="padding: 15px 20px;" class="personal__schedule">
		<p>개인 일정</p>
		<table border="1">
		<c:forEach var="empScheduleList" items="${empScheduleList}" varStatus="status">
			<tr>
				
				<td>${empScheduleList.schedule_name}</td>
				<td><font size="1">
				<fmt:parseDate var="start_date" value="${empScheduleList.start_date}" pattern="yyyymmdd" />
						<fmt:formatDate var="sDate" value="${start_date}" pattern="mm/dd"/>
					<fmt:parseDate var="end_date" value="${empScheduleList.end_date}" pattern="yyyymmdd" />
						<fmt:formatDate var="eDate" value="${end_date}" pattern="mm/dd"/>
				[${sDate}~${eDate}]
					</font>
				</td>
			</tr>
		</c:forEach>
		</table>
      </div>
      
      <div style="padding: 15px 20px;" class="service__schedule">
        <p>서비스팀 일정</p>
        <table border="1">
        <c:forEach var="deptScheduleList" items="${deptScheduleList}" varStatus="status">
			<tr>
				<td>${deptScheduleList.schedule_name}</td>
				<td><font size="1">
				<fmt:parseDate var="start_date" value="${deptScheduleList.start_date}" pattern="yyyymmdd" />
						<fmt:formatDate var="sDate" value="${start_date}" pattern="mm/dd"/>
					<fmt:parseDate var="end_date" value="${deptScheduleList.end_date}" pattern="yyyymmdd" />
						<fmt:formatDate var="eDate" value="${end_date}" pattern="mm/dd"/>
				[${sDate}~${eDate}]
					</font></td>
				
			</tr>
		</c:forEach>
        </table>
      </div>
      
      <div style="display: flex; flex-direction: column;" class="consult__schedule">
      <p>오늘의 우수 고객 상담</p>
      	<div style="padding: 15px 20px;  overflow: auto;" class="regular_consult">
      		
      		<table border="1">
       	 	<c:forEach var="rgConsultList" items="${rgConsultList}" varStatus="status">
				<tr>
					<td>${rgConsultList.customer_name}<font size="2">(${rgConsultList.customer_id})</font></td>
					<td><c:if test="${rgConsultList.consult_content != null}">
						[완료]
					</c:if>
					</td>
				</tr>
			</c:forEach>
        	</table>
      	</div>
      	<p>오늘의 마케팅 상담</p>
      	<div style="padding: 15px 20px; overflow: auto;" class="marketing_consult">
      		
      		<table border="1">
       	 	<c:forEach var="mkConsultList" items="${mkConsultList}" varStatus="status">
				<tr>
					<td colspan="2">${mkConsultList.consult_name}</td>
				</tr>
				<tr>
					<td>${mkConsultList.customer_name}<font size="2">(${mkConsultList.customer_id})</font></td>
					<td><c:if test="${mkConsultList.consult_content != null}">
						[완료]
					</c:if>
					</td>
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