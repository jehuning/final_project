<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>전일 매출 보고서</title>

<!--브라우저 스타일 초기화-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />

<link rel="stylesheet" href="./css/previousSR.css" />
<link rel="stylesheet" href="./css/common.css" />
</head>
<body>

<script type="text/javascript">
	function Main() {
		location.href="index.jsp";
	}
	
	function previousSR() {
		location.href="previousSR.jsp";
	}
	
	function srList() {
		location.href="srList.jsp";
	}
	  	
</script>

  <!-- SIDEBAR -->
  <section class="sidebar">
    <div class="inner">

      <a href="javascript:Main()" class="main">
        <img src="./image/main_temp.png" alt="main">
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


  <!-- PREVIOUS SALES REPORT -->
  <section class="previousSR">
    <div class="inner">
      <p class="show">전일 매출조회</p>
      <p class="select">일자 선택</p>
      <form name="selectForm" action="select" method="POST">
        <input type="date" id="search_date" value="2021-06-01">
        <input type="submit" id="dateSubmit" value="적용">
      </form>

      <div class="sidemenu">
        <form name="sortForm" action="sort" method="post">
          <input type="button" value="전일 총 매출" class="totalsales" onClick="location.href='totalsales.jsp'">
          <input type="button" value="성별" class="gendersales" onClick="location.href='gendersales.jsp'">
          <input type="button" value="연령별" class="agesales" onClick="location.href='agesales'">
          <input type="button" value="티켓 종류별" class="ticketsales" onClick="location.href='ticketsales'">
          <input type="button" value="부대시설별" class="facilitysales" onClick="location.href='facilitysales'">
      	</form>
      </div>
    </div>


    <!-- LIST TABLE -->
    <div class="srresult">
      <div class="inner">
     	<table border="1">
			<tr>
				<th>제목</th>
				<th>등록일</th>
			</tr>
			<!-- <c:>
				버튼1 클릭하면 totalsales 출력
				버튼2 클릭하면 gendersales 출력
				버튼3 클릭하면 agesales 출력
				버튼4 클릭하면 ticketsales 출력
				버튼5 클릭하면 facilitysales 출력
			 -->
		</table>
      </div>
      <form action="update" method="post">
        <input type="button" value="전일 매출 보고서 등록" class="upload" onclick="">
      </form>
    </div>

  </section>
</body>

</html>