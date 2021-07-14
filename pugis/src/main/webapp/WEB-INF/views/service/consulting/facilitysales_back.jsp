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
<div id="facilitysales">
<table border="1">
<tr>
<th>일자</th>
<th>부대시설명</th>
<th>매출</th>
</tr>

<c:forEach var="fs" items="${facilitySales}" varStatus="status">
<tr><!-- 첫번째 줄 시작 -->
<td>${fs.sales_date}</td>
<td>${fs.facility_name}</td>
<td>${fs.facility_sales}</td>
</tr><!-- 첫번째 줄 끝 -->
</c:forEach>

<tr></tr>
	<tr>
		<td rowspan="2" colspan="2"> </td>
		<td>전체 매출 총합</td>
	</tr>
	<tr>
		
		<td>${facilitySalesSum.facility_salesSum}</td>
	</tr>
</table>



</div>

</body>
</html>
