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
<th>연령대별</th>
<th>티켓 매출</th>
<th>부대시설 매출</th>
<th>총 매출</th>
</tr>

<c:forEach var="as" items="${ageSales}" varStatus="status">
<tr><!-- 첫번째 줄 시작 -->
<td>${as.sales_date}</td>
<td>${as.age_group}</td>
<td>${as.age_ticketSales}</td>
<td>${as.age_facilitySales}</td>
<td>${as.age_sales}</td>
</tr><!-- 첫번째 줄 끝 -->
</c:forEach>

</table>
</body>
</html>
