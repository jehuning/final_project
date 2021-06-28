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
<th>입장권</th>
<th>가격</th>
<th>연령대</th>
</tr>

<tr>
<td>${byagesales.getTicket_name()}</td>
<td>${byagesales.getTicket_sales()}</td>
<td>${byagesales.getCustomer_age()}</td>
</tr>

</table>
</body>
</html>
