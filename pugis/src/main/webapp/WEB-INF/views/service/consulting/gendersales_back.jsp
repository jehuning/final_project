<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<title>전일 매출 보고서</title>

<link rel="stylesheet" href="${path}/resources/css/table.css" />
<link rel="stylesheet" href="${path}/resources/css/common.css" />
</head>
<body>
<div id="gendersales">
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
		<td>${totalSalesSum.gender_salesSum}</td>
	</tr>
</table>




</div>

</body>
</html>
