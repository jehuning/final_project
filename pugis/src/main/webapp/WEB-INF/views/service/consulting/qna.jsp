<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.ArrayList" %>
 <%@ page import="java.io.PrintWriter" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객의 소리 (QnA)</title>
<link rel="stylesheet" href="style.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style>
*{
  margin: 0;
  padding: 0;
  user-select: none;
  box-sizing: border-box;
}
#side{
with:100%
 
}
.sidebar{
  position: fixed;
  width: 20%;
  height: 100%;
  left: 0;
  border-right: 3px solid;
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
}
nav ul{
  height: 100%;
  width: 100%;
  list-style: none;
}
nav ul li{
  line-height: 60px;
  border-top: 3px solid;
}

nav ul li a{
  position: relative;
  text-decoration: none;
  font-size: 18px;
  font-weight: 500;
  display: block;
  width: 100%;
  padding-left: 40px;
  border-left: 3px solid transparent;
}
nav ul ul li{
  line-height: 42px;
  border-top: none;
}
nav ul ul li a{
  font-size: 17px;
  padding-left: 80px;
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
#title{
	 margin-left:50px;
	 margin-top:50px;
}
#box{
   width: 60%;
   height:50px;
   margin-top:50px;
   border: 3px solid black;
   border-radius:5px;
}
#btn{
	width:80px;
	height:50px;
	border: 3px solid;
	border-radius:5px;
}
.btn2{
	width:100px;
	height:50px;
	border: 3px solid;
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
	border: 3px solid black;
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
	border: 3px solid black;
	border-radius:5px;
	font-size: 18px;
}
#keywordInput{
	width:50%;
	height:50px;
	border: 3px solid;
	border-radius:5px;
	font-size: 18px;
}
#searchBtn{
	width:80px;
	height:50px;
	border: 3px solid;
	border-radius:5px;
	font-size: 18px;
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
	width:80px;
	height:50px;
	border: 3px solid;
	border-radius:5px;
	font-size: 18px;
	margin-left: 40px;
	margin-right: 40px;
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
<div id="side">
	<nav class="sidebar">
		<div class="text" ><a id="main" href="main.jsp">메인 페이지</a></div>
		<ul>
			<li><a href="#" class="btn-1">일일 매출 보고서<span class="fas fa-caret-down first"></span></a>
			<ul class="show-1">
				<li><a href="#">aaa</a></li>
				<li><a href="#">bbb</a></li>			
			</ul>
			</li>
			<li><a href="#"class="btn-2">고객 상담<span class="fas fa-caret-down second"></span></a>
			<ul class="show-2">
				<li><a href="#">ccc</a></li>
				<li><a href="#">ddd</a></li>			
				<li><a href="#">fff</a></li>			
			</ul>
			</li>	
			<li><a href="/pugis/qna/list">고객의 소리(Q&A)</a></li>	
			<li><a href="#" class="btn-3">고객 설문<span class="fas fa-caret-down third"></span></a>
			<ul class="show-3">
				<li><a href="#">ccc</a></li>
				<li><a href="#">ddd</a></li>			
				<li><a href="#">fff</a></li>			
			</ul>
			</li>			
		</ul>
	</nav>
	</div>
	<div id="content">
		<h1 id="title"><a id ="titlelink" href="/pugis/qna/list">고객의 소리(Q&A)</a></h1>
				<form id = "searchBox">
							<select name="searchType" class="form-control" id ="typelist">
								<option value="n"<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
								<option value="t"<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
								<option value="c"<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
								<option value="tc"<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
							</select>
								<input type="text" name="keyword" id="keywordInput" value="<c:if test="${scri.searchType == 't' || scri.searchType == 'c' || scri.searchType == 'tc'}"><c:out value="${scri.keyword}" /></c:if>" class="form-control"/>
								<span class="input-group-btn">
									<button id="searchBtn" type="button" class="btn btn-default">검색</button> 	
								</span>
								<br/>
								<br/>
					 <%-- 카테고리 버튼 --%>	
					<div class="category row">
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
					</form>

				<form role="form" method="get">
		
					<table class="table table-hover" id = "searchlist">
						<thead>
							<tr><th>카테고리</th><th>제목</th><th>작성자</th><th>등록일</th></tr>
						</thead>
						
						<c:forEach items="${list}" var = "list">
							<tr>
								<td><c:out value="${list.question_category}" /></td>
								<td>
									<a href="/pugis/qna/readView?reg_id=${list.reg_id}&page=${scri.page}&perPageNum=${scri.perPageNum}&searchType=${scri.searchType}&keyword=${scri.keyword}"><c:out value="${list.question_title}" /></a>
								</td>
								<td><c:out value="${list.customer_id}" /></td>
								<td><fmt:formatDate value="${list.reg_date}" pattern="yyyy-MM-dd"/></td>
							</tr>
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