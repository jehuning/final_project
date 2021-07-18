<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
	#ConsultInputTextarea{/*상담내용 적는 칸*/
			position: fixed;
			top : 85px;
			z-index: 5;
			border: 1px solid #707070;
			position: absolute;
			width: 517px;
			height: 255px;
		}
	#ConsultCusSelecResult {/*상담고객 알림 칸 / 상담할 고객 알려주는 곳 */
		
			position: fixed;
			overflow: visible;
			width: 517px;
			height: 64px;
			border: solid 1px #707070;
			/*border-radius: 5px;*/
			font-size: 16px;
			resize: both;
			z-index: 3;
		}
	.btn {
			position : fixed;
			top: 350px;
			left : 140px;
			vertical-align: middle; /* Input 과 타 요소들의 텍스트 높이를 동일하게 세로 정렬한다 */
			display: inline-block; /* a나 span 태그의 경우 inline-block 요소처리 */
			line-height: 1;
			cursor: pointer; /* input type에 따라 커서의 모양이 다르다. */
			/* 패딩은 Input과 다른 태그들이 달라야 한다 */
			padding: 15px 60px;
			/* 디자인 요소들 */
			transition: all 0.3s;
			/*box-shadow: inset 0 1px 0 rgba(255,255,255,.2);*/
			/*text-shadow: 0 -1px 0 rgba(0,0,0,.4);*/
			/*border-radius: 6px;*/
			font-family: Apple SD Gothic Neo;
			font-size: 15px;
			text-transform: uppercase;
			/* 요소마다 border 의 색상을 다르게 주기 위해서 속성들을 따로 기입한다 */
			border-style: solid;
			border-width: 1px;
		}

		

		.SubmitBtn {
			border-color: #707070;
			background: #FFFFFF;
			color: #707070;
		}

			.SubmitBtn:hover {
				background: #E0E0E0;
			}
</style>



</head>
<body>
	<!-- 상담고객 선정결과 / 상담할 사람 알려주는 곳-->
		<div id ="ConsultCusSelecResult">
			
				김철수 (서울/010-0000-0000) 고객을 상담합니다.
			
	
		</div>	
	<!-- 상담내용 적는 칸  -->
		<textarea id="ConsultInputTextarea">
			상담 내용 적는 칸
		</textarea>
	
	<!--Btn-->
		<a class='btn SubmitBtn' id="SaveConsultBtn">상담내용작성</a>

</body>
</html>