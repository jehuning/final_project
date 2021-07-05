<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>서비스팀 메인페이지</title>

<!--브라우저 스타일 초기화-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />

<link rel="stylesheet" href="./css/main.css" type="text/css"/>
<link rel="stylesheet" href="./css/common.css" type="text/css"/>
</head>
<body>
	
	<!-- SIDEBAR -->
	<section class="sidebar">
		<div class="inner">
			
			<a href="/pugis/index.jsp" class="main">
				<img src="./image/main_temp.png" alt="main">
			</a>
			
			<div class="main-menu">
        <div class="item">
          <div class="item__name">
            <h3>일일 매출 보고서</h3>
          </div>
          <ul class="list__group">
            <li class="list__contents">
              <a href="previousSR.jsp">전일매출보고서</a>
            </li>
            <li class="list__contents">
              <a href="srList.jsp">매출보고서목록</a>
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
				<img src="./image/main_temp.png" alt="profile">
			</a>
      <div class="emp__info">
        <div class="emp__dept">서비스 1팀</div>
        <div class="emp__position">
          <span class="emp__name">홍길동</span>
          <span class="emp__grade">사원</span>
        </div>
        <div class="emp__attendBtn">
          <a href="javascript:void(0)" class="btn">출근</a>
          <a href="javascript:void(0)" class="btn">퇴근</a>
        </div>
        <div class="emp__details">
          <a href="javascript:void(0)" class="attend__more">상세 출결현황</a><br />
          <a href="javascript:void(0)" class="emp__more">사원정보</a>
        </div>
      </div>
    </div>
  </section>


  <!-- SCHEDULE DETAILS -->
  <section class="schedule-details">
    <div class="inner">
      <div class="personal__schedule">

      </div>
      <div class="service__schedule">
        
      </div>
    </div>
  </section>

</body>
</head>
</html>