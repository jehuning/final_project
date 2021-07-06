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

</table>
</body>
</html>
