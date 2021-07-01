<%@ page language="java" contentType="text/html; charset=EUC-KR"
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

      document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
          initialView: 'dayGridMonth'
        });
        calendar.render();
      });

    </script>
  
    
</head>
<body>
<div id='calendar'></div>
<form action="/pugis/rconsult/schedule" method="post">
<table border="1">
<tr>
<th>고객아이디</th>
<th>고객명</th>

</tr>
<c:forEach var="cl" items="${customerList}" varStatus="status">
<tr><!-- 첫번째 줄 시작 -->
<td><input type="hidden" name="selecetedId[${status.index}].customer_id"  value="${cl.customer_id}"/>${cl.customer_id}</td>
<td>${cl.customer_name}</td>
</tr><!-- 첫번째 줄 끝 -->
</c:forEach>
</table>

<input type="submit" value="아이디선택" />
</form>


	<div class="page-footer clearfix">
           <ul class="pagination pagination-sm no-margin pull-right">
          	
           <c:if test="${pageList.prevPage} == true">
            <li>
           	<a th:href="@{/pugis/rconsult/selectcustomer(currentPage=${pageList.pageStart-1},pageListSize=${pageList.pi.pageListSize})}">이전</a>
          	 </li>
          	</c:if>
         
           <c:forEach var="i" begin="${pageList.pageNumfirst}" end="${pageList.pageNumlast}">
        		<c:choose>
				    <c:when test="${pageList.pi.currentPage eq pageList.pageNumfirst-1+i}">
				      <li>${startNum + i}</li> 
				    </c:when>
				    <c:otherwise>
					<li><a href="/pugis/rconsult/selectcustomer?currentPage=${startNum + i}&pageListSize=${pageList.pi.pageListSize}&address=${pageList.ci.customer_address}&grade=${pageList.ci.customer_grade}">${startNum + i}</a></li>  					</c:otherwise>
				</c:choose>
			</c:forEach>
             <c:if test="${pageList.nextPage} == true">
	            <li>
	           	<a th:href="/pugis/rconsult/selectcustomer?currentPage=${pageList.pageStart+1}&pageListSize=${pageList.pi.pageListSize}&address=${pageList.ci.customer_address}&grade=${pageList.ci.customer_grade}">이전</a>
	          	 </li>
          	</c:if>
          
           
           </ul>
              
      </div>

</body>
</html>
