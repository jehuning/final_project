<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>우수고객상담 스케줄생성</title>
	<style id="applicationStylesheet" type="text/css">

        table {
            z-index: 1;
            position: absolute;
            overflow: visible;
            left: 262px;
            top: 250px;
            width: 420px;
            height: 270px;
            border: 1px solid #444444;
            border-collapse: collapse;
        }

		.mediaViewInfo { 
			--web-view-name: 웹 1366 – 8;
			--web-view-id: _1366__8;
			--web-scale-on-resize: true;
			--web-enable-deep-linking: true;
		}

		:root {
			--web-view-ids: _1366__8;
		}

		* {
			margin: 0;
			padding: 0;
			box-sizing: border-box;
			border: none;
		}

		#_1366__8 {
			position: absolute;
			width: 1366px;
			height: 768px;
			background-color: rgba(255,255,255,1);
			overflow: hidden;
			--web-view-name: 웹 1366 – 8;
			--web-view-id: _1366__8;
			--web-scale-on-resize: true;
			--web-enable-deep-linking: true;
		}

		
		

		#-__p {
			left: 33px;
			top: 277px;
			position: absolute;
			overflow: visible;
			width: 101px;
			white-space: nowrap;
			text-align: left;
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: lighter;
			font-size: 20px;
			color: rgba(112,112,112,1);
		}

		#__ {
			left: 14px;
			top: 132px;
			position: absolute;
			overflow: visible;
			width: 133px;
			white-space: nowrap;
			text-align: left;
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: normal;
			font-size: 20px;
			color: rgba(112,112,112,1);
		}

		#_ {
			left: 14px;
			top: 380px;
			position: absolute;
			overflow: visible;
			width: 93px;
			white-space: nowrap;
			text-align: left;
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: normal;
			font-size: 20px;
			color: rgba(112,112,112,1);
		}

		#__s {
			left: 14px;
			top: 449px;
			position: absolute;
			overflow: visible;
			width: 75px;
			white-space: nowrap;
			text-align: left;
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: normal;
			font-size: 20px;
			color: rgba(112,112,112,1);
		}

		#-__ {
			left: 33px;
			top: 310px;
			position: absolute;
			overflow: visible;
			width: 123px;
			white-space: nowrap;
			text-align: left;
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: bold;
			font-size: 20px;
			color: rgba(112,112,112,1);
		}

		# {
			left: 14px;
			top: 201px;
			position: absolute;
			overflow: visible;
			width: 70px;
			white-space: nowrap;
			text-align: left;
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: bold;
			font-size: 20px;
			color: rgba(112,112,112,1);
		}

		#ScheduleMake {
			position: absolute;
			overflow: visible;
			width: 192px;
			height: 45px;
			left: 1102px;
			top: 640px;
		}
        #SelectDate {
            left: 262px;
            top: 530.69px;
            position: absolute;
            overflow: visible;
            width: 152px;
            white-space: nowrap;
            font-family: Apple SD Gothic Neo;
            font-style: normal;
            font-weight: nomal;
            font-size: 17px;
            color: rgba(112,112,112,1);
        }
/*Schedule Select part*/

        #ScheduleSelect {
            z-index: 2;
            position: absolute;
            overflow: visible;
            width: 150px;
            height: 31px;
            left: 251px;
            top: 172px;
        }

        #RecFill {
            fill: #EBEBEB;
            stroke: rgba(112,112,112,1);
            stroke-width: 1px;
            stroke-linejoin: miter;
            stroke-linecap: butt;
            stroke-miterlimit: 4;
            shape-rendering: auto;
        }

		.RecFill {
			position: absolute;
			overflow: visible;
			width: 1075px;
			height: 428px;
			left: 219px;
			top: 156px;
		}

		#ConsultingInput {
			stroke: rgba(112,112,112,1);
			stroke-width: 1px;
			position: absolute;
			overflow: visible;
			width: 865px;
			height: 74px;
			left: 219px;
			top: 662px;
		}

		#EventSelect {
			position: absolute;
			overflow: visible;
			width: 152px;
			height: 31px;
			left: 251px;
			top: 172px;
		}

		#ResultPrint {
			fill: rgba(121,0,0,1);
			stroke: rgba(112,112,112,1);
			stroke-width: 1px;
			stroke-linejoin: miter;
			stroke-linecap: butt;
			stroke-miterlimit: 4;
			shape-rendering: auto;
		}

		.ResultPrint {
			position: absolute;
			overflow: visible;
			width: 865px;
			height: 54px;
			left: 219px;
			top: 599px;
		}

		#_ba {
			left: 219px;
			top: 39px;
			position: absolute;
			overflow: visible;
			width: 101px;
			white-space: nowrap;
			text-align: left;
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: bold;
			font-size: 29px;
			color: rgba(112,112,112,1);
		}

		#_bb {
			left: 219px;
			top: 89px;
			position: absolute;
			overflow: visible;
			width: 131px;
			white-space: nowrap;
			text-align: left;
			font-family: Apple SD Gothic Neo;
			font-style: normal;
			font-weight: normal;
			font-size: 25px;
			color: rgba(112,112,112,1);
		}

       

        #CustomerFind {
            left: 924px;
            top: 173px;
            position: absolute;
            overflow: visible;
            width: 152px;
            white-space: nowrap;
            font-family: Apple SD Gothic Neo;
            font-style: normal;
            font-weight: nomal;
            font-size: 20px;
            color: rgba(112,112,112,1);
        }


        

		#CustomerFindField {
			fill: rgba(59,129,22,1);
			stroke: rgba(112,112,112,1);
			stroke-width: 1px;
			stroke-linejoin: miter;
			stroke-linecap: butt;
			stroke-miterlimit: 4;
			shape-rendering: auto;
		}

		.CustomerFindField {
			position: absolute;
			overflow: visible;
			width: 543px;
			height: 350px;
			left: 729px;
			top: 217px;
		}

        #CalendarField {
            fill: #FFFFFF;
            stroke: rgba(112,112,112,1);
            stroke-width: 1px;
            stroke-linejoin: miter;
            stroke-linecap: butt;
            stroke-miterlimit: 4;
            shape-rendering: auto;
        }

		.CalendarField {
			position: absolute;
			overflow: visible;
			width: 444px;
			height: 350px;
			left: 250px;
			top: 218px;
		}

		


        /* SIDEBAR */
        .sidebar .inner {
            width: 189px;
            height: 100%;
            position: fixed;
            border-right: 1px solid #EAEAEA;
        }

        .sidebar .main {
            font-size: 20px;
            display: block;
            height: 100px;
            position: relative;
        }

            .sidebar .main > img {
                height: 59px;
				bottom: 59px;
                position: absolute;
                top: 40px;
                left: 27px;
                
                margin: auto;
            }

        .sidebar .main-menu {
        }

            .sidebar .main-menu .item:hover {
                background-color: #EAEAEA;
                color: #fff;
                transition: .2s;

            }

            .sidebar .main-menu .item .item__name h3 {
                display: block;
               
                color: black; /*사이드바 글자 컬러*/
                cursor: pointer;
                font-weight: 500;
                text-align: center;
            }

            .sidebar .main-menu ul.list__group {
            }

                .sidebar .main-menu ul.list__group li {
                }

                    .sidebar .main-menu ul.list__group li a {
                        color: black; /*소메뉴 컬러*/
                        display: block;
                        padding: 20px;
                        font-weight: 300;
                        text-align: center;
                        display: none;
                    }

            .sidebar .main-menu .item:hover ul.list__group li a {
                display: block;
                transition: .2s;
            }

            .sidebar .main-menu ul.list__group li a::before {
                content: "-";
                width: 12px;
                height: 1px;
                padding-left: 4px;
            }

            .sidebar .main-menu .item .item__name h3:hover,
            .sidebar .main-menu ul.list__group li a:hover {
                color: #fff;
                transition: .2s;
            }
        /* SIDEBAR */

	</style>







	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script language="javascript">var today = new Date(); //오늘 날짜
		var date = new Date();

		//이전달
		function beforem() //이전 달을 today에 값을 저장
		{
			today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
			autoReload(); //만들기
		}

		//다음달
		function nextm()  //다음 달을 today에 저장
		{
			today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
			autoReload();
		}

		//오늘선택
		function thisMonth() {
			today = new Date();
			autoReload();
		}

		function autoReload() {
			var nMonth = new Date(today.getFullYear(), today.getMonth(), 1); //현재달의 첫째 날
			var lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0); //현재 달의 마지막 날
			var tbcal = document.getElementById("calendar"); // 테이블 달력을 만들 테이블
			var yearmonth = document.getElementById("yearmonth"); //  년도와 월 출력할곳
			yearmonth.innerHTML = today.getFullYear() + "년 " + (today.getMonth() + 1) + "월"; //년도와 월 출력

			if (today.getMonth() + 1 == 12) //  눌렀을 때 월이 넘어가는 곳
			{
				before.innerHTML = ("<" + today.getMonth()) + "월";
				next.innerHTML = "1월" + ">";

			}
			else if (today.getMonth() + 1 == 1) //  1월 일 때
			{
				before.innerHTML = "<" + "12월";
				next.innerHTML = (today.getMonth() + 2) + "월" + ">";
			}
			else //   12월 일 때
			{
				before.innerHTML = "<" + (today.getMonth()) + "월";
				next.innerHTML = (today.getMonth() + 2) + "월" + ">";
			}


			// 남은 테이블 줄 삭제
			while (tbcal.rows.length > 2) {
				tbcal.deleteRow(tbcal.rows.length - 1);
			}
			var row = null;
			row = tbcal.insertRow();
			var cnt = 0;
			var dayCheck = (nMonth.getDay() == 0) ? 7 : nMonth.getDay(); //일요일을 마지막으로 넣기 위해서.

			// 1일 시작칸 찾기
			for (i = 0; i < (dayCheck - 1); i++) {
				cnt = cnt + 1;  //요일값
				cell = row.insertCell();

				if (i > 4) { //주말
					cell.style.backgroundColor = "#f7f7f7";
				}
			}


			// 달력 출력
			for (i = 1; i <= lastDate.getDate(); i++) // 1일부터 마지막 일까지
			{
				cell = row.insertCell();

				var str = "";

				str += "<div>" + i + "</div>";
				var day = (i < 10) ? "0" + i : i;
				str += "<div id='" + day + "'></div>"; //나중에 원하는 날에 일정을 넣기위해 id값을 날자로 설정
				cell.innerHTML = str;

				cnt = cnt + 1;
				if (cnt % 7 == 6) {//토요일
					var str = "";
					str += "<div>" + i + "</div>";
					var day = (i < 10) ? "0" + i : i;
					str += "<div id='" + day + "'>";
					str += "</div>";
					cell.innerHTML = str;
					cell.style.color = "#009de0";
					cell.style.backgroundColor = "#f7f7f7";
				}
				if (cnt % 7 == 0) { //일요일
					var str = "";
					str += "<div>" + i + "</div>";
					var day = (i < 10) ? "0" + i : i;
					str += "<div id='" + day + "'>";
					str += "</div>";
					cell.innerHTML = str;
					row = calendar.insertRow();// 줄 추가
					cell.style.color = "#ed5353";
					cell.style.backgroundColor = "#f7f7f7";
				}

				//마지막 날짜가 지나면 일요일까지 칸 그리기
				if (lastDate.getDate() == i && ((cnt % 7) != 0)) {
					var add = 7 - (cnt % 7);
					for (var k = 1; k <= add; k++) {
						cell = row.insertCell();
						cnt = cnt + 1;
						if (cnt % 7 == 6) {//토요일
							cell.style.backgroundColor = "#f7f7f7";
						}
						if (cnt % 7 == 0) { //일요일
							cell.style.backgroundColor = "#f7f7f7";
						}
					}
				}

				//오늘날짜배경색
				if (today.getFullYear() == date.getFullYear() && today.getMonth() == date.getMonth() && i == date.getDate()) {
                    cell.style.backgroundColor = "#D5D5D5"; //오늘날짜배경색
				}

				//마지막 날짜가 지나면 일요일까지 칸 그리기
				if (lastDate.getDate() == i && ((cnt % 7) != 0)) {
					var add = 7 - (cnt % 7);
					for (var k = 1; k <= add; k++) {
						cell = row.insertCell();
						cnt = cnt + 1;
						if (cnt % 7 == 6) {//토요일
							cell.style.backgroundColor = "#f7f7f7";
						}
						if (cnt % 7 == 0) { //일요일
							cell.style.backgroundColor = "#f7f7f7";
						}
					}
				}

			}
		}</script>




</head>
<body onload="autoReload();">

			
	<!--Calendar-->

	<table id="calendar">
		<tr>
			<td>
				<a id="before" href="javascript:beforem()"></a>
			</td>
			<td colspan="4" align="center">
				<div id="yearmonth"></div>
			</td>
			<td>
				<a id="next" href="javascript:nextm()"></a>
			</td>
			<td>
			</td>
		</tr>
		<tr>
			<td width="14%"> 월 </td>
			<td width="14%"> 화 </td>
			<td width="14%"> 수 </td>
			<td width="14%"> 목 </td>
			<td width="14%"> 금 </td>
			<td width="14%"><font color="#009de0">토</font></td>
			<td width="14%"><font color="#ed5353">일</font></td>
		</tr>
	</table>

	
	<script> </script>

	<div id="_1366__8">


		<!-- SIDEBAR -->
		<section class="sidebar">
			<div class="inner">

				<a href="javascript:Main()" class="main">
					<img src="main_temp.png" alt="main">
				</a>

				<div class="main-menu">
					<div class="item">
						<div class="item__name">
							<h3>일일 매출 보고서</h3>
						</div>
						<ul class="list__group">
							<li class="list__contents">
								<a href="javascript:previousSR()">전일매출보고서</a>
							</li>
							<li class="list__contents">
								<a href="javascript:srList()">매출보고서목록</a>
							</li>

						</ul>
					</div>
					<div class="item">
						<div class="item__name">
							<h3>고객 상담</h3>
						</div>
						<ul class="list__group">
							<li class="list-contents">
								<a href="javascript:void(0)">우수고객 상담</a>
							</li>
							<li class="list__contents">
								<a href="javascript:void(0)">마케팅 상담</a>
							</li>
							<li class="list__contents">
								<a href="javascript:void(0)">전체 상담 조회</a>
							</li>
						</ul>
					</div>
					<div class="item">
						<div class="item__name">
							<h3>고객의 소리(Q&A)</h3>
						</div>
						<ul class="list__group"></ul>
					</div>
					<div class="item">
						<div class="item__name">
							<h3>고객 설문</h3>
						</div>
						<ul class="list__group">
							<li class="list__contents">
								<a href="javascript:void(0)">고객 설문 작성</a>
							</li>
							<li class="list__contents">
								<a href="javascript:void(0)">고객 설문 배포</a>
							</li>
							<li class="list__contents">
								<a href="javascript:void(0)">고객 설문 결과</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<!-- SIDEBAR -->
		<!-- 스케줄일정생성파트-->

		

		<div id="ScheduleSelect">
		<form  method="POST" action="finalPHP1.php">
			스케쥴 시작일 <input type="text" maxlength='4'name="StartYear" />년 <input type="text" maxlength='2'name="StarMonth" />월 <input type="text" maxlength='2' name="StartDay" />일<br />
			<input type="submit" name="submit" />
		</form>
				</rect>
			</div>


		<!-- 고객 필터 OPTgroup -->
		<!--출력고객 수-->
		<select id="CustomerPrintCount" name="CustomerPrintCount">
			<option value=""> CustomerCount </option>
			<option value="countFive">5명씩</option>
			<option value="countTen">10명씩</option>
			<option value="countFif">15명ㅅ</option>
		</select>


		<!--ㅈㅣ역-->
		<select id="RegionSelect" name="RegionSelect">
			<option value=""> 지역 </option>
			<optgroup label="서울특별시">
				<option value="gangnam">강남구</option>
				<option value="gwangjin">광진구</option>
			</optgroup>
			<optgroup label="경기도">
				<option value="boondang">분당</option>
				<option value="incheon">인천</option>
				<option value="boocheon">부천</option>
			</optgroup>
			<optgroup label="강원도">
				<option value="gangreung">강릉</option>
				<option value="chuncheon">춘천</option>
			</optgroup>
			<optgroup label="경상도">
				<option value="busan">부산</option>
			</optgroup>
		</select>
		<!--고객등급-->
		<select id="CustomerGrade" name="CustomerGrade">
			<option value=""> 고객등급 </option>
			<option value="vip"> VIP</option>
			<option value="gold">GOLD</option>
			<option value="shilver">SILVER</option>
			<option value="bronze">BRONZE</option>
			<option value="nomal">NOMAL</option>
			</optgroup>
		</select>

		<svg class="ResultPrint">
			<rect id="ResultPrint" rx="0" ry="0" x="0" y="0" width="865" height="54">
			</rect>
		</svg>
		<div id="_ba">
			<span>고객상담</span>
		</div>
		<div id="_bb">
			<span>전체상담조회</span>
		</div>

		<svg class="CalendarField">
			<rect id="CalendarField" rx="0" ry="0" x="0" y="0" width="444" height="350">
			</rect>
		</svg>

		<svg class="CustomerFindField">
			<rect id="CustomerFindField" rx="0" ry="0" x="0" y="0" width="543" height="350">
			</rect>
		</svg>

		<div id="CustomerFind">
			<h4>고객조회</h4>
		</div>

		<div id="SelectDate">
			<span>선택하신 일자</span>
		</div>

	</div>

	




</body >
</html>