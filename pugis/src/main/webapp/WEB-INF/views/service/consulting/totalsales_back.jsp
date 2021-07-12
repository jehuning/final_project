<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Test</title>
</head>
<body>
<div id="totalsales">
<table border="1">
<tr>
<th>일자</th>
<th>고객 아이디</th>
<th>티켓매출</th>
<th>부대시설매출</th>
<th>총매출</th>
</tr>

<c:forEach var="ts" items="${totalSales}" varStatus="status">
	<tr><!-- 첫번째 줄 시작 -->
		<td>${ts.sales_date}</td>
		<td>${ts.customer_id}</td>
		<td>${ts.customer_ticketSales}</td>
		<td>${ts.customer_facilitySales}</td>
		<td>${ts.total_sales}</td>
	</tr><!-- 첫번째 줄 끝 -->
</c:forEach>
	<tr></tr>
	<tr>
		<td rowspan="2" colspan="2"> </td>
		<td>티켓 매출 총합</td>
		<td>부대시설 매출 총합</td>
		<td>전체 매출 총합</td>
	</tr>
	<tr>
		<td>${totalSalesSum.tsum}</td>
		<td>${totalSalesSum.fsum}</td>
		<td>${totalSalesSum.customer_salesSum}</td>
	</tr>
	
</table>


<form action="/pugis/sales/totalexceldown" method="post">
<input type="submit" value='엑셀 다운로드'>
</form>
  
</div>
</body>
</html>
