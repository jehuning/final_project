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
<title>서비스팀 로그인</title>

<!--브라우저 스타일 초기화-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />

<link rel="stylesheet" href="${path}/resources/css/main.css" type="text/css"/>
<link rel="stylesheet" href="${path}/resources/css/common.css" type="text/css"/>

<!-- link rel="stylesheet" href="style.css" -->
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

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
	width:50%;
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
	margin-left: 40px;
	margin-right: 40px;
	color: #707070;
}
#tablebody td{
	border: 1px;
}
#human{
	width :70px;
	width :70px;
	margin-top:40px;
}
#nonelinktitle{
	text-decoration: none;
}
.inner{
	text-align: center;
}
#emp_id{
	width:400px;
	height:50px;
	margin-bottom:25px;
	font-size: 18px;
	padding-left:7px;
}
#emp_pwd{
	width:400px;
	height:50px;
	margin-bottom:25px;
	font-size: 18px;
	padding-left:7px;
}
#loginbtn{
	width:400px;
	height:50px;
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
<div id="side">
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

	</div>
	<div id="content">
		<div id="maintitle"><h1><a id ="titlelink">서비스팀 로그인 페이지</a></h1></div>
		<div class="inner">
		<form name='homeForm' method="post" action="http://localhost:8090/pugis/emp/main">
			<c:if test="${member == null}">
				<div></br></br></br></br>
					<label for="emp_id"></label>
					<input type="text" id="emp_id" name="emp_id" placeholder="아이디">
				</div>
				<div>
					<label for="emp_pwd"></label>
					<input type="password" id="emp_pwd" name="emp_pwd" placeholder="비밀번호">
				</div>
				<div>
					<button id ="loginbtn" type="submit" class="home_btn btn btn-primary">로그인</button>
				</div>
			</c:if>
	<!-- 
			<c:if test="${member != null }">
				<div>
					<p>${member.emp_id}님 환영 합니다.</p>
				</div>
			</c:if>
	-->		
			<c:if test="${msg == false}">
				<p style="color: red;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>
			</c:if>
		</form>
	</div>
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