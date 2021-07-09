<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>매출 보고서 목록</title>

<!--브라우저 스타일 초기화-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />

<!-- DATEPICKER -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- jQuery -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

<link rel="stylesheet" href="${path}/resources/css/srList.css" />
<link rel="stylesheet" href="${path}/resources/css/common.css" />

</head>
<body>

<script type="text/javascript">

// 페이지 이동
	function Main() {
		location.href="index.jsp";
	}
	
	function previousSR() {
		location.href="previousSR.jsp";
	}
	
	function srList() {
		location.href="srList.jsp";
	}
	

// 테이블 연결
	
	$(function() {
		$("#totalsales").click(function() {
			$("#srresult").load("totalsales_back.jsp");
		});
	});
	
	$(function() {
		$("#gendersales").click(function() {
			$("#srresult").load("gendersales_back.jsp");
		});
	});
	
	$(function() {
		$("#agesales").click(function() {
			$("#srresult").load("agesales_back.jsp");
		});
	});
	
	$(function() {
		$("#ticketsales").click(function() {
			$("#srresult").load("ticketsales_back.jsp");
		});
	});
	
	$(function() {
		$("#facilitysales").click(function() {
			$("#srresult").load("facilitysales_back.jsp");
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
              <a href="javascript:previousSR">전일매출보고서</a>
            </li>
            <li class="list__contents">
              <a href="javascript:srList">매출보고서목록</a>
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


  <!-- SALES REPORTS LIST -->
  <section class="srList">
    <div class="inner">
      <p class="show">매출 보고서 리스트</p>
      <p class="select">일자 선택</p>
      <form name="selectForm" action="select" method="post">
        <input type="text" id="datepicker" />
        <input type="button" value="적용" id="dateSubmit" />
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

    <div class="listresult">
      <div class="inner">
		 <table id="srresult" border="1">
			
		 </table>
      </div>
      <form action="save" method="post">
        <input type="button" value="일일 매출 보고서 엑셀 저장" class="save" onclick="">
      </form>
    </div>
  </section>
</body>

</html>