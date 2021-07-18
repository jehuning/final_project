<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="false" %>
<html lang="ko" >
<head>
	<title>Test</title>
	<meta charset='utf-8' />
   
    <script>


    </script>
  
    
</head>
<body>

<div id="consultList">
<input type="hidden" id="selectedSize" value="${fn:length(consultList) }">
<table id="consultTable" border="1">
<tr>
<th><input type="checkbox" id="checkAll" onclick="checkAll()"/></th>
<th>상담일</th>
<th>상담아이디</th>
<th>고객아이디</th>
<th>고객명</th>
<th>등급</th>
<th>지역</th>
<th>성별</th>
<th>생년월일</th>
<th>휴대폰번호</th>
<th>상담여부</th>
</tr>

<c:forEach var="cl" items="${consultList}" varStatus="status">
<tr style = "cursor:pointer;" onClick = "HighlightRow(this)"><!-- 해당줄 링크 -->
	<td><input type="checkbox" name="check" value="${cl.consult_schedule_id}" onchange="changeCheck(this)"/>
	<td>${cl.consult_date}</td>
	<td>${cl.consult_schedule_id}</td>
	<td>${cl.customer_id}</td>
	<td>${cl.customer_name}</td>
	<td>${cl.customer_address}</td>
	<td>${cl.customer_grade}</td>
	<td>${cl.customer_gender}</td>
	<td>${cl.customer_birth}</td>
	<td>${cl.customer_phone}</td>
	<td><c:choose>
			<c:when test="${cl.consult_content == null}">미완료</c:when>
			<c:otherwise>완료</c:otherwise>
		</c:choose>
	</td>
</tr><!-- 첫번째 줄 끝 -->
</c:forEach>
</table>



</div>
	
	<div id="pageList">
           <ul class="pagination">
          	
           <c:if test="${pageList.prevPage == true}">
            <li>
            <a href="#" onclick="prevPL(this)" >이전</a>
	          	 <input type="hidden" id="prevPL" value="${pageList.pageNumfirst-1}" />
          	 </li>
          	</c:if>
         
           <c:forEach var="i" begin="${pageList.pageNumfirst}" end="${pageList.pageNumlast}" varStatus = "status" >
        		<c:choose>
				    <c:when test="${pageList.pi.currentPage eq i}">
				      <li>${i}</li> 
				    </c:when>
				    <c:otherwise>
					<li><a class="page" href="#" onclick="intoPage(this)"><input type="hidden" id="cPage" value="${status.current}" />${i}</a></li>  					
					</c:otherwise>
				</c:choose>
			</c:forEach>
			
             <c:if test="${pageList.nextPage  == true}">
	            <li>
	           	<a href="#" onclick="nextPL(this)">다음</a>
	          	 <input type="hidden" id="nextPL" value="${pageList.pageNumlast+1}"/>
	          	 </li>
          	</c:if>
          
           
           </ul>
              
      </div>

</body>
</html>