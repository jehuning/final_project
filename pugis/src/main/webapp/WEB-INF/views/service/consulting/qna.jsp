<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.ArrayList" %>
 <%@ page import="java.io.PrintWriter" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>고객의 소리 (QnA)</title>
<!--브라우저 스타일 초기화-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />

<link rel="stylesheet" href="${path}/resources/css/main.css" type="text/css"/>
<link rel="stylesheet" href="${path}/resources/css/common.css" type="text/css"/>

<!-- link rel="stylesheet" href="style.css"-->
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
	location.href=location.href;
}
function mconsult() {
	location.href="../mconsult/main";
}
function searchCon() {
	location.href="../consultsearch/main";
}



</script>





<style>
*{
  margin: 0;
  padding: 0;
  user-select: none;
  box-sizing: border-box;
  color: #707070;
  font-family: 'Apple SD Gothic Neo', sans-serif;
}
#side{
with:100%
 
}
.sidebar{
  position: fixed;
  width: 250px;
  height: 100%;
  left: 0;
  border-right: 1px solid;
  float:left;
}
.sidebar .text{
  font-size: 25px;
  font-weight: 600;
  line-height: 65px;
  text-align: center;
  letter-spacing: 1px; 
}
#main{
	text-decoration: none;
	 color: #707070;
}
nav ul{
  height: 100%;
  width: 100%;
  list-style: none;
}
nav ul li{
  line-height: 60px;
  border-top: 0px solid;
}

nav ul li a{
  position: relative;
  text-decoration: none;
  font-size: 18px;
  font-weight: 500;
  display: block;
  width: 100%;
  padding-left: 40px;
  border-left: 1px solid transparent;
  font-weight: bold;
  color: #707070;
}
nav ul ul li{
  line-height: 42px;
  border-top: none;
}
nav ul ul li a{
  font-size: 17px;
  padding-left: 80px;
  font-weight: bold;
  color: #707070;
}
nav ul ul{
  position: static;
  display: none;
}
nav ul .show-1.show1{
  display: block;
}
nav ul .show-2.show2{
  display: block;
}
nav ul .show-3.show3{
  display: block;
}
#content{
 	width:80%;
 	padding:0px;
    float:right;   
}
#maintitle{
	font-size:32px;
	margin-bottom:50px;
    font-weight: 700;
    margin-top:50px;
    top: 30px;
    left: 350px;    	 
}
#title a{
	 font-weight: 800;
	 color: #707070;
}
#box{
   width: 60%;
   height:50px;
   margin-top:50px;
   border: 1px solid black;
   border-radius:5px;
}
#btn{
	width:80px;
	height:50px;
	border: 1px solid;
	border-radius:5px;
}
.btn2{
	width:100px;
	height:50px;
	border: 1px solid;
	border-radius:50px;
	margin-left:100px;
}
.searchbox{
	text-align: center;
	
}
.manybtn{
	text-align: center;
	margin-top:40px;
	margin-right:100px;
	
}

#list{
	width:65%;
	text-align: left;
	margin-top:100px;
	margin-left: auto;
	margin-right: auto;
	text-align: center;
	border-collapse: collapse;  
	border: 1px solid black;
}
#name{
	background-color: #bbdefb;
}
#first{
	width:200px;
}
#con {
	text-decoration: none;
}
table tr {
	height:50px;
}
#page {
	width:80%;
 	text-align: center;
    float:right;   
    margin-top:50px;
}
#page a{
 	text-decoration: none;
 	color : black;
 	font-size: 18px;
 	margin-left:25px;
 	margin-right:25px;
}
#searchBox{
	width:65%;
	margin-top:50px;
	margin-left: auto;
	margin-right: auto;
	text-align: center;
}
#typelist{
	height : 50px;
	border: 1px solid black;
	border-radius:5px;
	font-size: 18px;
	color: #707070;
}
#keywordInput{
	width:70%;
	height:50px;
	border: 1px solid;
	border-radius:5px;
	font-size: 18px;
}
#searchBtn{
	width:80px;
	height:50px;
	border: 1px solid;
	border-radius:5px;
	font-size: 18px;
	 color: #707070;
}
#searchlist{
	width:65%;
	margin-top:30px;
	margin-left: auto;
	margin-right: auto;
	text-align: center;
	font-size: 20px;
	
}
#pagenum{
	width:80%;
 	text-align: center;
    float:right;   
    margin-top:50px;
}
.page123{
    text-decoration: none;
    font-size: 18px;
}
#titlelink{
	text-decoration: none;
}
#pagenum li {
	list-style:none;
}
#category{
 	text-align: center;
    margin-top:50px;
}
.catebtn{
	width:100px;
	height:50px;
	border: 1px solid;
	border-radius:50px;
	font-size: 18px;
	margin-left: 60px;
	margin-right: 60px;
	color: #707070;
}

#human{
	width :70px;
	width :70px;
	margin-top:40px;
}
#nonelinktitle{
	text-decoration: none;
}
.sidebar a{
	text-decoration: none;
}
</style>
</head>
<body>
<%
	int pageNumber = 1;
	if (request.getParameter("pageNumber") != null) {
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
	}
	
%>
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

	<div id="content">
		<div id="maintitle"><h1><a id ="titlelink" href="http://localhost:8090/pugis/qna/list">고객의 소리(Q&A)</a></h1></div>
				<form id = "searchBox">
							<select name="searchType" class="form-control" id ="typelist">
								<option value="n"<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
								<option value="t"<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
								<option value="c"<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
								<option value="tc"<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
							</select>
								<input type="text" name="keyword" id="keywordInput" value="<c:if test="${scri.searchType == 't' or 'c' or 'tc'}"><c:out value="${scri.keyword}" /></c:if>" class="form-control"/>
								<span class="input-group-btn">
									<button id="searchBtn" type="button" class="btn btn-default">검색</button> 	
								</span>
					</form>			
					 <%-- 카테고리 버튼 --%>	
					<div class="category row" id ="category">
						<div class="col-xs-2 col-sm-2">				
								<button class="catebtn" id="facilityBtn" type="button" <c:out value="${scri.searchType eq 'facility' ? 'selected' : ''}"/>>시설</button>
								<button class="catebtn" id="ticketBtn" type="button" <c:out value="${scri.searchType eq 'ticket' ? 'selected' : ''}"/>>티켓</button>
								<button class="catebtn" id="homeBtn" type="button" <c:out value="${scri.searchType eq 'home' ? 'selected' : ''}"/>>홈페이지</button>
								<button class="catebtn" id="etcBtn" type="button" <c:out value="${scri.searchType eq 'etc' ? 'selected' : ''}"/>>기타</button>
						</div>	
						<%-- 카테고리 스크립트 --%>
						<script>
							$(function(){
								$('#facilityBtn').click(function() {
										self.location = "list" + '${pageMaker.makeQuery(1)}' + "&searchType=facility" + "&keyword=시설";
									});
								}); 
							$(function(){
								$('#ticketBtn').click(function() {
										self.location = "list" + '${pageMaker.makeQuery(1)}' + "&searchType=ticket" + "&keyword=티켓";
									});
								});
							$(function(){
								$('#homeBtn').click(function() {
										self.location = "list" + '${pageMaker.makeQuery(1)}' + "&searchType=home" + "&keyword=홈페이지";
									});
								});
							$(function(){
								$('#etcBtn').click(function() {
										self.location = "list" + '${pageMaker.makeQuery(1)}' + "&searchType=etc" + "&keyword=기타";
									});
								});
					</script>						
				</div>
						<script>
							 $(function(){
								 $('#searchBtn').click(function() {
									 self.location = "list" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
								 });
							 });   
						</script>
		

				<form role="form" method="get">
		
					<table class="table table-hover" id = "searchlist">
						<thead>
							<tr><th>카테고리</th><th>제목</th><th>작성자</th><th>등록일</th></tr>
						</thead>
						<c:forEach items="${list}" var = "list">
						<tbody id ="tablebody">
							<tr>
								<td><c:out value="${list.question_category}" /></td>
								<td>
									<a id="nonelinktitle" href="/pugis/qna/readView?reg_id=${list.reg_id}&page=${scri.page}&perPageNum=${scri.perPageNum}&searchType=${scri.searchType}&keyword=${scri.keyword}"><c:out value="${list.question_title}" /></a>
								</td>
								<td><c:out value="${list.customer_id}" /></td>
								<td><fmt:formatDate value="${list.reg_date}" pattern="yyyy-MM-dd"/></td>
							</tr>
							</tbody>
						</c:forEach>	 	
					</table>
			</form>
			</div>
					<div class="col-md-offset-3" id = "pagenum">
							<c:if test="${pageMaker.prev}">
								<a class="page123" href="list${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a>
							</c:if> 							
							<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
								<c:out value="${pageMaker.cri.page == idx ? '' : ''}" />
								<a class="page123" href="list${pageMaker.makeSearch(idx)}">${idx}</a>
							</c:forEach>							
							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<a class="page123" href="list${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a>
							</c:if> 				
					</div>
					
	<!--			<div class="col-md-offset-3" id = "pagenum">
						<ul class="pagination">
							<c:if test="${pageMaker.prev}">
								<li ><a class="page123" href="list${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
							</c:if> 
							
							<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
								<li<c:out value="${pageMaker.cri.page == idx ? 'class=info' : ''}" />>
								<a class="page123" href="list${pageMaker.makeSearch(idx)}">${idx}</a></li>
							</c:forEach>
							
							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a class="page123" href="list${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
							</c:if> 
						</ul>
					</div>
					  -->		
	      <script>
         $('.btn').click(function(){
           $(this).toggleClass("click");
           $('.sidebar').toggleClass("show");
         });
           $('.btn-1').click(function(){
             $('nav ul .show-1').toggleClass("show1");
             $('nav ul .first').toggleClass("rotate");
           });
           $('.btn-2').click(function(){
             $('nav ul .show-2').toggleClass("show2");
             $('nav ul .second').toggleClass("rotate");
           });
           $('.btn-3').click(function(){
               $('nav ul .show-3').toggleClass("show3");
               $('nav ul .third').toggleClass("rotate");
             });
           $('nav ul li').click(function(){
             $(this).addClass("active").siblings().removeClass("active");
           });
      </script>
</body>
</html>