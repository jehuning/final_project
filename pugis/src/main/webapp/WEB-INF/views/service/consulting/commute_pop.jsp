<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table id="commuteHistory" border="1">
		<tr>
		<th>출근일</th>
		<th>출근시간</th>
		<th>퇴근시간</th>
		</tr>
	<c:forEach var="cl" items="${commuteList}" varStatus="status">
		<tr><!-- 첫번째 줄 시작 -->
	
		<td>${cl.work_date}</td>
		<td>${cl.start_time}</td>
		<td>${cl.leave_time}</td>
		
	</tr><!-- 첫번째 줄 끝 -->
	</c:forEach>
</table>
	

</body>
</html>