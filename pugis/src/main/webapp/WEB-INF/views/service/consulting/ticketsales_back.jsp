<%@ page language="java" contentType="text/html; charset=EUC-KR"
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
<th>티켓 종류</th>
<th>매출</th>
</tr>

<c:forEach var="ts" items="${ticketSales}" varStatus="status">
	<tr><!-- 첫번째 줄 시작 -->
		<td>${ts.sales_date}</td>
		<td>${ts.ticket_name}</td>
		<td>${ts.ticket_sales}</td>
	</tr><!-- 첫번째 줄 끝 -->
</c:forEach>
<tr></tr>
	<tr>
		<td rowspan="2" colspan="2"> </td>
		<td>전체 매출 총합</td>
	</tr>
	<tr>
		<td>${ticketSalesSum.ticket_salesSum}</td>
	</tr>
</table>
</body>
</html>
