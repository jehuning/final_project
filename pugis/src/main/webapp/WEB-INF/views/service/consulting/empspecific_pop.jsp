<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

		
			
<table id="empSpecific" border="1">
		<tr>
			<th>직원명</th>
			<th>부서</th>
			<th>직급</th>
			<th>성별</th>
			<th>휴대폰번호</th>
			<th>생년월일</th>
			<th>입사일</th>
		
		</tr>
	
		<tr>
			
			<td>${empSpecific.emp_name}</td>
            <td>${empSpecific.dept_name}</td>
            <td>${empSpecific.job_name}</td>
           <td>${empSpecific.emp_gender}</td>
           <td>${empSpecific.emp_phone}</td>
			<td>${empSpecific.emp_birth}</td>
			<td>${empSpecific.emp_entry}</td>
	
		</tr>
	
</table>
			
			
</body>
</html>