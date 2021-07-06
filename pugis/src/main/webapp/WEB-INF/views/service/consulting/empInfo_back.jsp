<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Test</title>
</head>
<body>
<table border="1">
<tr>
<th>사번</th>
<th>사원명</th>
</tr>

<tr>
<td>${empSummary.getEmp_id()}</td>
<td>${empSummary.getEmp_name()}</td>
</tr>
<c:forEach var="sl" items="${scheduleList}" varStatus="status">
<tr><!-- 직원 스케줄 (오늘부터 해당하는 월 말일까지의 리스트) -->
	<td>${sl.schedule_date}</td>
	<td>${sl.schedule_name}</td>
</tr><!-- 첫번째 줄 끝 -->
</c:forEach>
</table>




</body>
</html>
