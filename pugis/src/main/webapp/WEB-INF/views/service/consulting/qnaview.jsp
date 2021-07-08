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
	<script type="text/javascript">
		
		$(document).ready(function(){
			var formObj = $("form[name='readForm']");

			// 삭제
			$(".delete_btn").on("click", function(){
				
				var deleteYN = confirm("삭제하시겠습니까?");
				if(deleteYN == true){
					
				formObj.attr("action", "/pugis2/qna/delete");
				formObj.attr("method", "post");
				formObj.submit();
					
				}
			})
			
			// 목록
			$(".list_btn").on("click", function(){
				
				location.href = "http://localhost:8090/pugis2/qna/list";
			})
			
			// 댓글 작성 View
			$(".replyWriteBtn").on("click", function(){
				var formObj = $("form[name='replyForm']");
				formObj.attr("action", "/pugis2/qna/replyWrite");
				formObj.submit();
			});
			
			//댓글 삭제 View
			$(".replyDeleteBtn").on("click", function(){
				location.href = "/pugis2/qna/replyDeleteView?reg_id=${read.reg_id}"
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
}
#all{
width:100%
 
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
#maintitle{
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
#headline{
	margin-top:25px;
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
	margin-right: 20%;
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
	margin-right: 20%;
}
#headline label{
	font-size: 18px;
}
#midle label {
	font-size: 18px;
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
	height:100px;
	overflow : hidden;
	font-size:18px;
	border: 3px solid;
	padding:10px;
}
#midlebtn button{
	width:80px;
	height:50px;
	border: 3px solid;
	border-radius:5px;
	font-size: 18px;
}
#answerbtn button{
	width:80px;
	height:50px;
	border: 3px solid;
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
	height:100px;
	overflow : hidden;
	font-size: 18px;
	border: 3px solid;
	padding:10px;
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
	width:65%;
	text-align: right;
	margin-top:25px;
	margin-left: auto;
	margin-right: 20%;
	
}
#reply p{
	font-size:18px;
}
#ansinabox{
	width:100%;
	height:100px;
	padding:10px;
	border:3px solid black;
	overflow : hidden;
	font-size: 18px;
}
#replybutton button{
	width:80px;
	height:50px;
	border: 3px solid;
	border-radius:5px;
	font-size: 18px;
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
			<li><a href="qna.jsp">고객의 소리(Q&A)</a></li>	
			<li><a href="#" class="btn-3">고객 설문<span class="fas fa-caret-down third"></span></a>
			<ul class="show-3">
				<li><a href="#">ccc</a></li>
				<li><a href="#">ddd</a></li>			
				<li><a href="#">fff</a></li>			
			</ul>
			</li>			
		</ul>
	</nav>

	<div id="content">
		<h1 id="maintitle">고객의 소리(Q&A)</h1>
				
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