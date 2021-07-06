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
<th>일자</th>
<th>성별</th>
<th>티켓 매출</th>
<th>부대시설 매출</th>
<th>총 매출</th>
</tr>

<c:forEach var="gs" items="${genderSales}" varStatus="status">
<tr><!-- 첫번째 줄 시작 -->
<td>${gs.sales_date}</td>
<td>${gs.gender_group}</td>
<td>${gs.gender_ticketSales}</td>
<td>${gs.gender_facilitySales}</td>
<td>${gs.gender_sales}</td>
</tr><!-- 첫번째 줄 끝 -->
</c:forEach>

</table>
</body>
</html>
