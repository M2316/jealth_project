<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
    

	
	
    <title>Jealth Workout</title>
    <script src="${pageContext.request.contextPath}/resources/node_modules/bootstrap/dist/js/bootstrap.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/node_modules/bootstrap/dist/css/bootstrap.css">
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.mask.js"></script>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">


    <style>
        
    </style>
</head>

        <div class="page_nav">
            <div class="header_box clearfix" id="header_box">
                <div class="header_item width_value"><p name="menu1"style="background:#AEAEAE;color:#FFF;">운동</p></div>
                <div class="header_item width_value"><p name="menu2" onclick="alert('준비중')">식단</p></div>
                <div class="header_item width_value"><p name="menu3" onclick="alert('준비중')">MyPage</p></div>
                <div class="header_item width_value"><p name="menu4" onclick="location.href='/user/logoutTry'">LogOut</p></div>
            </div>
            <div class="calendar_wrap width_value">
                <div class="header">
                    <div class="year-month" onchange="get_workout_recode()"></div>
                    <div class="nav">
                        <button class="nav-btn go-prev" onclick="prevMonth()"><img src="${pageContext.request.contextPath}/resources/imgs/left-chevron.png" alt=""></button>
                        <button class="nav-btn go-today" onclick="goToday()">Today</button>
                        <button class="nav-btn go-next" onclick="nextMonth()"><img src="${pageContext.request.contextPath}/resources/imgs/right-chevron.png" alt=""></button>
                    </div>
                </div>
                <div class="main">
                    <div class="days">
                        <div class="day">일</div>
                        <div class="day">월</div>
                        <div class="day">화</div>
                        <div class="day">수</div>
                        <div class="day">목</div>
                        <div class="day">금</div>
                        <div class="day">토</div>
                    </div>
                    <div class="dates"></div>
                </div>
            </div>
            <script src="${pageContext.request.contextPath}/resources/js/Calendar_Create.js"></script>
        </div>
