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

<!-- link rel="stylesheet" href="style.css" -->
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript">
		
		$(document).ready(function(){
			var formObj = $("form[name='readForm']");

			// 삭제
			$(".delete_btn").on("click", function(){
				
				var deleteYN = confirm("삭제하시겠습니까?");
				if(deleteYN == true){
					
				formObj.attr("action", "/pugis/qna/delete");
				formObj.attr("method", "post");
				formObj.submit();
					
				}
			})
			
			// 목록
			$(".list_btn").on("click", function(){
				
				location.href = "http://localhost:8090/pugis/qna/list";
			})
			
			// 댓글 작성
			$(".replyWriteBtn").on("click", function(){
				var formObj = $("form[name='replyForm']");
				formObj.attr("action", "/pugis/qna/replyWrite");
				formObj.submit();
			});
			
			//댓글 삭제
			$(".replyDeleteBtn").on("click", function(){
				if(confirm("삭제 하시겠습니까?")){
					formObj.attr("action", "/pugis/qna/replyDelete");
					formObj.attr("method", "post");
					formObj.submit();
		            
		         alert("답글이 삭제되었습니다.");
			}
				
				location.href = "/pugis/qna/replyDelete?reg_id=${read.reg_id}"
				+ "&page=${scri.page}"
				+ "&perPageNum=${scri.perPageNum}"
				+ "&searchType=${scri.searchType}"
				+ "&keyword=${scri.keyword}"
				+ "&reply_id="+$(this).attr("data-reply_id");
			});
		})
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
#all{
width:100%
 
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
#headline{
	margin-top:50px;
	width:65%;
	text-align: left;
	margin-left: auto;
	margin-right: auto;
}
#midle{
	margin-top:0px;
	width:65%;
	text-align: center;
	margin-left: auto;
	margin-right: auto;
}
#midlebtn{
	margin-top:25px;
	margin-left: auto;
	margin-right: 17.5%;
	text-align: right;
}
#answer{
	margin-top:25px;
	width:65%;
	text-align: left;
	margin-left: auto;
	margin-right: auto;
}
#myans{
	margin-top:10px;
	width:65%;
	text-align: center;
	margin-left: auto;
	margin-right: auto;
}
#answerbtn{
	text-align: right;
	margin-top:25px;
	margin-left: auto;
	margin-right: 17.5%;
}
#headline label{
	font-size: 18px;
	font-weight:middle;
}
#midle label {
	font-size: 18px;
	font-weight:middle;
}	
#title{
	width:30%;
	height:50px;
	font-size: 18px;
	border:0px;
}
#writer{
	width:20%;
	height:50px;
	font-size: 18px;
	border:0px;
}
#midletitle{
	margin-bottom:10px;
	text-align: left;
}
#anscontent{
	width:100%;
	height:150px;
	resize: none; 
	font-size:18px;
	border: 1px solid;
	padding:10px;
	overflow-y: scroll;
}
#midlebtn button{
	width:80px;
	height:50px;
	border: 1px solid;
	border-radius:5px;
	font-size: 18px;
	font-weight:middle;
}
#answerbtn button{
	width:80px;
	height:50px;
	border: 1px solid;
	border-radius:5px;
	font-size: 18px;
}
#answer label{
	font-size:18px;
}
#answer_writer{
	width:200px;
	height:30px;

}
#answer_content{
	width:100%;
	height:150px;
	font-size: 18px;
	border: 1px solid;
	padding:10px;
	resize: none; 
	overflow-y: scroll;
}
#reply{
	margin-top:25px;
	width:65%;
	margin-left: auto;
	margin-right: auto;
}
#replydate{
	text-align: left;
	margin-left: auto;
	margin-right: auto;
}
#replycontent{
	margin-top:10px;
	text-align: left;
	margin-left: auto;
	margin-right: auto;
}
#replybox{
	margin-top:10px;
	width:100%;
	text-align: center;
	margin-left: auto;
	margin-right: auto;
	
}
#replybutton{
	width:%;
	text-align: right;
	margin-top:25px;
	margin-left: auto;
	margin-right: 0%;
	
}
#reply p{
	font-size:18px;
}
#ansinabox{
	width:100%;
	height:150px;
	padding:10px;
	border:1px solid black;
	resize: none; 
	font-size: 18px;
	overflow-y: scroll;
}
#replybutton button{
	width:80px;
	height:50px;
	border: 1px solid;
	border-radius:5px;
	font-size: 18px;
}
#titlelink{
	text-decoration: none;

}
#human{
	width :70px;
	width :70px;
	margin-top:40px;
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
<div id="all">
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


	<div id="content">
		<div id="maintitle"><h1><a id ="titlelink" href="http://localhost:8090/pugis/qna/list">고객의 소리(Q&A)</a></h1></div>
				
				<form id = "headline">
					<label for="title" class="col-sm-2 control-label">제목</label>
					<input type="text" id="title" name="title" class="form-control" value="${read.question_title}" readonly="readonly" />

					<label for="writer" class="col-sm-2 control-label">작성자</label>
					<input type="text" id="writer" name="writer" class="form-control" value="${read.customer_id}"  readonly="readonly"/>

					<label for="regdate" class="col-sm-2 control-label">작성날짜</label>
					<fmt:formatDate value="${read.reg_date}" pattern="yyyy-MM-dd" />	
				</form>	
				<form id = "midle">
					<div id ="midletitle">
					<label for="content" class="col-sm-2 control-label" >내용</label>
					</div>
					<textarea id="anscontent" name="content" class="form-control" readonly="readonly"><c:out value="${read.question_content}" /></textarea>
				</form>			
				<div id = "midlebtn">
					<button type="button" class="delete_btn btn btn-danger">삭제</button>
					<button type="button" class="list_btn btn btn-primary">목록</button>	
				</div>
					
				
				<form id ="reply">
					<c:forEach items="${replyList}" var="replyList">
							<div id = "replydate">
								<p>작성 날짜 : <fmt:formatDate value="${replyList.answer_date}" pattern="yyyy-MM-dd" /></p>
							</div>
							<div id ="replycontent">
								<p>답변</p>
							</div>
							<div id = "replybox">	
								<textarea id="ansinabox">${replyList.answer_content}</textarea>
							</div>
							
							<div id="replybutton">
								<button type="button" class="replyDeleteBtn btn btn-danger" data-reply_id="${replyList.reply_id}">삭제</button>
							</div>	
					</c:forEach>
				</form>
							
	  			<form name="replyForm" method="post" >
					<input type="hidden" id="reg_id" name="reg_id" value="${read.reg_id}" />
					<input type="hidden" id="page" name="page" value="${scri.page}"> 
					<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"> 
					<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"> 
					<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}"> 
	<div id ="answer">
	    <label for="answer_writer" style="margin-right:5px;">답변 작성자 </label><input type="text" id="answer_writer" name="answer_writer" />
	    </div>
	    <div id ="myans">    
	    <label for="answer_content"></label><textarea id="answer_content" name="answer_content" placeholder="답변을 작성해주세요"/></textarea>
	  </div>
	  <div id ="answerbtn">
	 	 <button type="button" class="replyWriteBtn">작성</button>
	 </div>		
				
				</form>

				<form name="readForm" role="form" method="post">
					<input type="hidden" id="reg_id" name="reg_id" value="${read.reg_id}" />
					<input type="hidden" id="page" name="page" value="${scri.page}"> 
					<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"> 
					<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"> 
					<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}"> 
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