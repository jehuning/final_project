<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html lang="ko">
<head>
    <!--브라우저 스타일 초기화-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
    <!--브라우저 스타일 초기화-->

    <script><%--
$('textarea:first').click(function(){
    $t = $(this).val().replace(/<br\s*\/?>/img,"x");
    $(this).html($t)
});
-->


</script>



    <title></title>
    <style>


        /*body {margin: 0;}*/
        ul.vertical {
            list-style-type: none;
            margin: 0;
            padding: 0;
            width: 200px;
            background-color: white;
            /*position: fixed; 고정위치에 있게 합니다. */
            /*height: 100%; 전체 높이를 사용하도록 합니다. */
            overflow: auto; /* 사이드바 메뉴가 아주 많아져 스크롤이 필요하면 자동으로 생성되도록 합니다. */
        }

        li.vertical {
            border-bottom: 1px solid #bbb;
        }

            li.vertical:last-child {
                border-bottom: none;
            }

            li.vertical a.vertical {
                display: block;
                color: #EAEAEA;
                padding: 10px 0 10px 20px;
                text-decoration: none;
            }

            li.vertical a.active {
                background-color: #EAEAEA;
                color: black;
            }

            li.vertical a.vertical:hover:not(.active) {
                background-color: white;
                color: black;
            }



        /* SIDEBAR */
        .sidebar .inner {
            width: 250px;
            height: 100%;
            position: fixed;
            border-right: 1px solid #EAEAEA;
        }

        .sidebar .main {
            font-family: 'Apple SD Gothic Neo';
            display: block;
            height: 100px;
            position: relative;
        }

            .sidebar .main > img {
                height: 75px;
                position: absolute;
                top: 10px;
                left: 10px;
                bottom: 10px;
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
                padding: 11px 16px;
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
</head>
<body>

  <!--  <textarea>
hello world<br />



nice to meet you<br />



good bye <br>



</textarea>
-->

    <h1>문제5. 데이터 입력받아 화면에 출력하기</h1>
    <form method="POST" action="finalPHP1.php">
        이름: <input type="text" name="name" /><br />
        나이: <input type="text" name="age" /><br />
        키: <input type="text" name="height" /><br />
        직업: <input type="text" name="job" /><br />
        <input type="submit" name="submit" />
    </form>


    <ul class="vertical">

        <li class="vertical"><a class="vertical" href="#"> 일일매출 보고서 </a></li>


        <li class="vertical"><a class="vertical" href="#"> 고객상담 </a></li>

        <li class="vertical"><a class="vertical active" href="#"> 고객의 소리 </a></li>

        <li class="vertical"><a class="vertical" href="#"> 고객 설문 </a></li>

    </ul>

    <!-- SIDEBAR -->
    <section class="sidebar">
        <div class="inner">

            <a href="javascript:Main()" class="main">
                <img src="./image/main_temp.png" alt="main">
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
                            <a href="javascript:CustomerList_Back()">매출보고서목록</a>
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

    <form id="ScheduleSelect" action="action.jsp">
        <p>스케줄 일정 선택:</p>
        <div>
            <label for="StartSchedule">스케줄 시작일: </label><input type="date" id="StartDate" name="StartDate"

        </div>

        <label for="EndSchedule">  스케줄 종료일 </label><input type="date" id="EndDate" name="EndDate"

        <div><input type="submit" value="전송"></div>
        <input type="submit" value="스케쥴 생성">
    </form>


    <!-- 고객 필터 OPTgroup -->
    <!--출력고객 수-->
    <select id="CustomerPrintCount" name="CustomerPrintCount">
        <option value=""> CustomerCount </option>
        <option value="gangnam">5명씩</option>
        <option value="gwangjin">10명씩</option>
        <option value="boondang">15명ㅅ</option>
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
        <option value="gangnam"> VIP</option>
        <option value="gwangjin">GOLD</option>
        <option value="boondang">SILVER</option>
        <option value="incheon">BRONZE</option>
        <option value="boocheon">NOMAL</option>
        </optgroup>
    </select>




</body>
</html>







