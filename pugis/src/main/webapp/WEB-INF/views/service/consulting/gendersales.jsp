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
<th>성별</th>
</tr>

<tr>
<td>${bygendersales.getTicket_name()}</td>
<td>${bygendersales.getTicket_sales()}</td>
<td>${bygendersales.getCustomer_gender()}</td>
</tr>

</table>
</body>
</html>
