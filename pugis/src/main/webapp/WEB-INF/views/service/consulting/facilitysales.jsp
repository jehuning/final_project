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
<th>부대시설명</th>
<th>가격</th>
</tr>

<tr>
<td>${byfacilitysales.getTicket_name()}</td>
<td>${byfacilitysales.getTicket_sales()}</td>
</tr>

</table>
</body>
</html>
