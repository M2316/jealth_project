<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css">	
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
<title>Jealth</title>
    <style>
        input{
            border: 1px solid black;
        }
        .clearfix::after{
            content: '';
            clear: both;
            display: block;
        }
/* login page logo */
        .loginlogo{
            margin: 130px 30px;
        }
        .loginlogo img{
            margin: 0 auto;
        }
/* input_box 위 글[login_info] */

    .login_info div{
        text-align: center;
        line-height: 1rem;
    }

    .login_header1{
        color: #707070;
        font-size: 1.1rem;
        font-weight: 900;
        margin: 5px;
    }
    .login_header2{
        font-size: 0.9rem;
        font-weight: 900;
        color: #707070;
    }
    .login_header2 strong{
        color: black;
        font-size: 1rem;
    }
/* login_input_box */
        .login_input_box{
            width: 280px;
            margin: 30px auto;
        }
        .checkgroup{
            margin-bottom: 5px;
        }
        .login_save{
            width: 100px;
            float: left;
        }
        
        .login_save input[type=checkbox]{
            width: 18px;
            height: 18px;
            float: left;
            line-height: 18px;
        }
        .login_save p{
            font-size: 12px;
        }
        .user_input{
            display: flex;

        }
        .logininfo_input input{
            height: 30px;
            width: 200px;
            padding: 0 15px;
            border-color: black;
        }
        .login_btn{
            border: 1px solid black;
            width: 80px;
            height: 60px;
            text-align: center;
        }
        .login_btn a{
            line-height: 60px;
            font-size: 1.2rem;
            font-weight: 900;
            height: 60px;
        }
        

        /* 다른 방법으로 로그인 */
        .other_loginbox{
            margin: 10px;
            text-align: center;
        }
        .other_lognbox_header p{
            font-size: 1.1rem;
            font-weight: 900;
            color: #707070;
            text-align: center;
        }
        .other_login_list{
            width: 202px;
            margin: 0 auto;
        }
        .other_login{
            float: left;
            margin: 2px;
            padding: 0 5px;
            border: 1px solid #707070;
            font-weight: 900;
        }
        .other_loginbox{
            margin: 0 auto;
            padding: 3px;
            width: 209px;
            border: 1px solid #707070;
        }

        .kakao{
            background-color: #ffdc00;
        }
        .kakao p{
            font-weight: 600;
        }
        .naver{
            background-color: #19ce60;
        }
        .naver p{
            color: #fff;
        }
        .google{
            width: 65px;
            height: 26px;
            padding-left:8px ;
            
        }
        .google img{
            padding-top: 5px;
            line-height: 26px;
            height: 20px;
            
        }
        .checkgroup input[type="checkbox"]{
        	border-color:black;
        }
/* 회원가입 */
        .create_user{
            font-size: 1.8rem;
            font-weight: 900;
            color:black;
            text-align: center;
            margin: 40px;
        }
    </style>
<body>
    <div class="loginlogo"><img src="${pageContext.request.contextPath}/resources/imgs/jealth_logo.png" alt="logo"></div>
    <div class="login_box">
        <div class="login_info">
            <div class="login_header1">로그인이 필요한 서비스입니다.</div>
            <div class="login_header2"><strong>JEALTH</strong> 회원이 아니면, 지금 회원가입을 해주세요.</div>
        </div>
        <div class="login_input_box">
           	<form name="loginForm" action="${pageContext.request.contextPath}/user/loginTry" method="post">
	            <div class="checkgroup clearfix">
	                <div class="login_save clearfix">
	                    <input type="checkbox" name="loginCookieFlag">
	                    <p>로그인 유지</p>
	                </div>
	                <div class="login_save clearfix">
	                    <input type="checkbox" name="idCookieFlag">
	                    <p>아이디 유지</p>
	                </div>
	            </div>
	            <div class="user_input">
	                <div>
	                    <div class="logininfo_input">
	                        <input type="text" name="userId">
	                    </div>
	                    <div class="logininfo_input">
	                        <input type="password" name="userPw">
	                    </div>
	                </div>
	                <div class="login_btn">
	                    <a id="loginBtn" href="javascript:void(0)" onClick="javascript:loginTry()">로그인</a>
	                </div>
	            </div>
           	</form>
        </div>
     <%--    <div class="other_lognbox_header">
            <p>다른 방법으로 로그인</p>
        </div>
        <div class="other_loginbox">
            <div class="other_login_list clearfix" style="margin: 0 auto;">
                <div class="other_login kakao">
                    <p class="kakao_p">KaKao</p>
                </div>
                <div class="other_login naver">
                    <p class="naver_p">NAVER</p>
                </div>
                <div class="other_login google">
                    <img src="${pageContext.request.contextPath}/resources/imgs/google.png" alt="google_logo">
                </div>
            </div>
        </div> --%>
        <div class="create_user">
            <a href="/user/userJoin" style="color:black;">회원가입</a>
        </div>
    </div>
</body>
<script>

	let msg = '${msg}';
	console.log(msg);
	
	if (msg === 'loginFail'){
		console.log('로그인 실패');
		alert('아이디 혹은 비밀번호가 다릅니다.');
		location.href = "/user/userLogin";
	}else if(msg === 'JoinSuccess'){
		alert('로그인하여 Jealth에서 활동을 기록해 보세요~!');
	}else if(msg === 'JoinFail'){
		alert('불편을 드려 죄송합니다. 회원가입시 오류가 발생 되었습니다. %n관리자에게 문의 하세요.');
	}
	
	let cookies = document.cookie.split('; ');
	
	for(let i=0 ; i < cookies.length; i++){
		if(cookies[i].split('=')[0] === 'saveIdCookie'){
			let saveId = cookies[i].split('=')[1];
			document.querySelector('input[name="userId"]').value = saveId;
			document.querySelector('input[name="idCookieFlag"]').checked = true
		}
	}
	
	function loginTry(){
		let inputId = document.querySelector('input[name="userId"]').value;
		let inputPw = document.querySelector('input[name="userPw"]').value;
		if(inputId !== "" && inputPw !== ""){
			loginForm.submit();
			
		}else{
			alert('아이디 혹은 비밀번호를 입력해 주세요.');
		}
		
		
	}
	
</script>
</html>