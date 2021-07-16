<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html lang="ko" xmlns:th="http://www.thymeleaf.org">
<head>
	<title>Test</title>
	<meta charset='utf-8' />
    <link href='fullcalendar/main.css' rel='stylesheet' />
    <script src='fullcalendar/main.js'></script>
    <script>


    </script>
  
    
</head>
<body>

<div id="customerList">
<input type="hidden" id="tatalPage" value="${pageList.totalPage}">
<table border="1">
<tr>

<th>고객아이디</th>
<th>고객명</th>
<th>지역</th>
<th>등급</th>
<th>성별</th>
<th>생년월일</th>
<th>휴대폰번호</th>
</tr>
<c:forEach var="cl" items="${customerList}" varStatus="status">
<tr><!-- 첫번째 줄 시작 -->
	<td><input type="checkbox" name="chk"  value="${cl.customer_id}"/></td>
	<td>${cl.customer_id}</td>
	<td>${cl.customer_name}</td>
	<td>${cl.customer_address}</td>
	<td>${cl.customer_grade}</td>
	<td>${cl.customer_gender}</td>
	<td>${cl.customer_birth}</td>
	<td>${cl.customer_phone}</td>
	
</tr><!-- 첫번째 줄 끝 -->
</c:forEach>
</table>



</div>
	
	<div id="pageList">
           <ul class="pagination">
          	
           <c:if test="${pageList.prevPage} == true">
            <li>
            <a href="#" onclick="prevPL(this)" >이전</a>
	          	 <input type="hidden" id="prevPL" value="${pageList.pageNumfirst-1}" />
          	 </li>
          	</c:if>
         
           <c:forEach var="i" begin="${pageList.pageNumfirst}" end="${pageList.pageNumlast}">
        		<c:choose>
				    <c:when test="${pageList.pi.currentPage eq pageList.pageNumfirst-1+i}">
				      <li>${startNum + i}</li> 
				    </c:when>
				    <c:otherwise>
					<li><a class="page" href="#" onclick="intoPage(this)">${startNum + i}</a></li>  					
					</c:otherwise>
				</c:choose>
			</c:forEach>
			
             <c:if test="${pageList.nextPage} == true"> <--! 다음페이지 -->
	            <li>
	           	<a href="#" onclick="nextPL(this)">다음</a>
	          	 <input type="hidden" id="nextPL" value="${pageList.pageNumlast+1}"/>
	          	 </li>
          	</c:if>
          
           
           </ul>
              
      </div>

</body>
</html>
