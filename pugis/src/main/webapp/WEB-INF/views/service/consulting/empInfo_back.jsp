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
<th>사번</th>
<th>사원명</th>
</tr>

<tr>
<td>${empSummary.getEmp_id()}</td>
<td>${empSummary.getEmp_name()}</td>
</tr>

</table>
</body>
</html>
