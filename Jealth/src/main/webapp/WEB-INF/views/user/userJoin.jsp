<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/../resources/include/header.jsp" %>
    <link rel="stylesheet" href="https://uicdn.toast.com/tui.date-picker/latest/tui-date-picker.css" />
    <script src="https://uicdn.toast.com/tui.date-picker/latest/tui-date-picker.js"></script>   
    <style>
    /* tui datepicker CSS modify */
		.tui-datepicker{
			position: inherit;
		}
		.tui-calendar,
		.tui-datepicker-type-date{
			width:100%;
		}
	</style>
</head>
<body>
    <div class="container">
        <div class="row jealth_logo">
            <div class="col-12"><img src="${pageContext.request.contextPath}/resources/imgs/jealth_logo.png" alt="" style="width:100%;"></div>
        </div>
        <div class="row join-header">
            <div class="col-12">
                <a href="/user/userLogin"><img src="${pageContext.request.contextPath}/resources/imgs/back-left-arrow-symbol_icon-icons.com_74324.png" alt="" style="width: 25px; padding-top:5px;"></a>
                <span>회원가입</span>
            </div>
        </div>
        <div class="join-wrap">
            <div class="item-list">
            	<form name="joinForm" action="/user/userJoinTry" method="post">
                <div class="container input-wrap">
                    <div class="row">
                        <div id="idLabel" class="col-12"><span>*아이디</span><small id="idCheckText"></small></div>
                    </div>
                    <div class="row">
                        <div class="col-8"><input id="inputId" class="form-control" type="text" placeholder="ID" maxlength="12" name="userId"></div>
                        <button id="idCheckBtn" type="button" class="btn btn-secondary col-4" type="button">중복체크</button>
                    </div>
                </div>
                <div class="container input-wrap">
                    <div class="row">
                        <div class="col-12"><span>*비밀번호</span><small id="pwCheckText"></small></div>
                    </div>
                    <div class="row">
                        <div class="col-12"><input id="inputPw" class="form-control" type="password" placeholder="Password" maxlength="16" name="userPw"></div>
                    </div>
                </div>
                <div class="container input-wrap">
                    <div class="row">
                        <div class="col-12"><span>*비밀번호 확인</span><small id="pwCheckText-c"></small></div>
                    </div>
                    <div class="row">
                        <div class="col-12"><input id="pwConfirm" class="form-control" type="password" placeholder="Password"></div>
                    </div>
                </div>
                <div class="container input-wrap">
                    <div class="row">
                        <div class="col-12"><span>*닉네임</span><small id="nickCheckText"></small></div>
                    </div>
                    <div class="row">
                        <div class="col-12"><input id="inputNick" class="form-control" type="text" placeholder="Nick Name" maxlength="12" name="nickname"></div>
                    </div>
                </div>
                <div class="container input-wrap">
                    <div class="row">
                        <div class="col-12">*성별</div>
                    </div>
                    <div class="row">
                        <div class="col-3"></div>
                        <div class="input-group">
                            <div class="input-group-text col-12">
                              <div class="col-3">
                                  <input class="form-check-input mt-1" type="radio" name="userSex" value="M">
                                  <span>남자</span>
                              </div>
                              <div class="col-3">
                                  <input class="form-check-input mt-1" type="radio" name="userSex" value="W">
                                  <span>여자</span>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container input-wrap">
                    <div class="row">
                        <div class="col-12">연령대</div>
                    </div>
                    <div class="row">
                        <div class="col-12"><input class="form-control" type="text" placeholder="Age" name="userAge" disabled readonly></div>
                    </div>
                </div>
                <div class="container input-wrap">
                    <div class="row">
                        <div class="col-12">생년월일</div>
                    </div>
                    <div class="row">
                        <div class='col-sm-6' style="width:100%;">
                            <div class="tui-datepicker-input" style="width: 100%; height: 38px;  border-radius: 0.375rem;	">
                                <input type="text" id="datepicker-input" aria-label="Date-Time" name="birthday" readonly>
                                <span class="tui-ico-date"></span>
                            </div>
                            <div id="wrapper" style="margin-top: -1px;"></div>
                         </div>
                    </div>
                </div>
                <div class="container input-wrap">
                    <div class="row">
                        <div class="col-12">몸무게</div>
                    </div>
                    <div class="row">
                        <div class="col-12"><input class="form-control" type="number" step="0.1" pattern="\\d*" placeholder="body Weight" name="weight"></div>
                    </div>
                </div>
                <div class="container input-wrap">
                    <div class="row">
                        <div class="col-12">키</div>
                    </div>
                    <div class="row">
                        <div class="col-12"><input class="form-control" type="number" step="0.1" pattern="\\d*" placeholder="body length" name="stature"></div>
                    </div>
                </div>
                <div class="container input-wrap">
                    <div class="row">
                        <div class="col-12">스쿼트 PR</div>
                    </div>
                    <div class="row">
                        <div class="col-12"><input class="form-control" type="number" pattern="\\d*" placeholder="Squat => Kg" name="squatPr"></div>
                    </div>
                </div>
                <div class="container input-wrap">
                    <div class="row">
                        <div class="col-12">데드리프트 PR</div>
                    </div>
                    <div class="row">
                        <div class="col-12"><input class="form-control" type="number" pattern="\\d*" placeholder="Deadlift => Kg" name="deadliftPr"></div>
                    </div>
                </div>
                <div class="container input-wrap">
                    <div class="row">
                        <div class="col-12">벤치프레스 PR</div>
                    </div>
                    <div class="row">
                        <div class="col-12"><input class="form-control" type="number" pattern="\\d*" placeholder="Bench Press => Kg" name="benchpressPr"></div>
                    </div>
                </div>
                </form>
            </div>
        </div>
        <div class="container join-btn-container">
            <div class="row">
                <div class="col-12">
                    <button id="joinBtn" class="join-btn btn btn-secondary">회원가입</button>
                </div>
            </div>
        </div>
    </div>


</body>
<script>
//flag 가 모두 true가 되어야 가입이 정상적으로 진행 됨
let idFlag = false;	//not null인 데이터들을 검증하는 flag
let pwFlag = false;
let pwFlagC = false;
let nickFlag = false;


$(function(){ //Jquery 시작
	
	
	//ID 비동기 통신으로 중복체크
		$("#idCheckBtn").on("click",function(){
			const userId = $("#inputId").val();
			console.log(userId)
			if(userId === ''){
				alert('ID를 입력해 주세요~!');
				return;
			}else if(userId.length < 3){
				alert('ID를 4~12자 이내로 입력하세요~!');
				return;
			}
			$.ajax({ // ajax 시작
				type:'post',
				url:'/user/userIdOverlapCheck',
				contentType:'application/json',
				data:JSON.stringify({"userId":userId}),
				dataType:'text',
				success:function(result){
					console.log('result : ' + result);
					if(result === 'idAvailable'){
						console.log(userId + '는사용 가능한 아이디입니다.');
						$('#inputId').attr('readonly');
						$('#idCheckBtn').attr('disabled');
						$('#idCheckText').text('Check!');
						$('#idCheckText').css('color','blue');
						$('#idCheckText').css('margin-left','15px');
						idFlag = true;
					}else if(result === 'idOverlap'){
						alert(userId + '는 중복된 아이디입니다.');
						idFlag = false;
					}else{
						alert('글자 수를 확인해 주세요~!');
						idFlag = false;
					}
				},error:function(result){
					alert('서버와 통신 오류! 관리자에게 문의해 주세요~~!');
				}
			}); // ajax 끝
		});	
}); // Jquery 끝





/*아이디 형식 검사 스크립트*/
const id = document.getElementById("inputId");
id.onkeyup = function() {
    /*자바스크립트의 정규표현식 입니다*/
    /*test메서드를 통해 비교하며, 매칭되면 true, 아니면 false반*/
    let regex = /^[A-Za-z0-9+]{4,12}$/; 
    if(regex.test(document.getElementById("inputId").value )) {
        document.getElementById("inputId").style.borderColor = "green";
        document.getElementById("idCheckText").style.color = "red";
        document.getElementById("idCheckText").style.marginLeft = "15px";
        document.getElementById("idCheckText").innerHTML = "아이디중복체크는 필수 입니다";
    } else {
        document.getElementById("inputId").style.borderColor = "red";
        document.getElementById("idCheckText").innerHTML = "";
    }
}
/*비밀번호 형식 검사 스크립트*/
const pw = document.getElementById("inputPw");
pw.onkeyup = function(){
    let regex = /^[A-Za-z0-9+]{8,16}$/;
     if(regex.test(document.getElementById("inputPw").value )) {
        document.getElementById("inputPw").style.borderColor = "green";
        document.getElementById("pwCheckText").innerHTML = "Check!";
		document.getElementById("pwCheckText").style.color = "blue";
		document.getElementById("pwCheckText").style.marginLeft = "15px";
		pwFlag = true;
    } else {
        document.getElementById("inputPw").style.borderColor = "red";
        document.getElementById("pwCheckText").innerHTML = "";
		document.getElementById("pwCheckText").style.color = "red";
		document.getElementById("pwCheckText").style.marginLeft = "15px";
    }
}
/*비밀번호 확인검사*/
const pwConfirm = document.getElementById("pwConfirm");
pwConfirm.onkeyup = function() {
    let regex = /^[A-Za-z0-9+]{8,16}$/;
    if(document.getElementById("pwConfirm").value == document.getElementById("inputPw").value ) {
        document.getElementById("pwConfirm").style.borderColor = "green";
        document.getElementById("pwCheckText-c").innerHTML = "Check!";
		document.getElementById("pwCheckText-c").style.color = "blue";
		document.getElementById("pwCheckText-c").style.marginLeft = "15px";
		pwFlagC = true;
    } else {
        document.getElementById("pwConfirm").style.borderColor = "red";
        document.getElementById("pwCheckText-c").innerHTML = "비밀번호 확인란을 확인하세요";
		document.getElementById("pwCheckText-c").style.color = "red";
		document.getElementById("pwCheckText-c").style.marginLeft = "15px";
    }
}  
/* 닉네임 검사 */
const inputNick = document.getElementById("inputNick");
inputNick.onkeyup = function(){
	let regex = /^[A-Za-z0-9+]{4,12}$/;
	if(regex.test(document.getElementById("inputNick").value)){
		document.getElementById("nickCheckText").innerHTML = "Check!";
		document.getElementById("nickCheckText").style.color = "blue";
		document.getElementById("nickCheckText").style.marginLeft = "15px";
		document.getElementById("inputNick").style.borderColor = "green";
		nickFlag = true;
	}else{
		document.getElementById("nickCheckText").innerHTML = "사욜할 수 없는 닉네임입니다.";
		document.getElementById("nickCheckText").style.color = "red";
		document.getElementById("nickCheckText").style.marginLeft = "15px";
		document.getElementById("inputNick").style.borderColor = "red";
		nickFlag =true;
	}
}






/* 

*/

// 가입 이벤트 진행~!
$('#joinBtn').on('click',function(){
	/* 가입 전 전체적인 데이터 검증 */
	if(!idFlag){
		alert('아이디를 확인해 주세요!');
		$("#inputId").focus();
	}else if(!pwFlag && !pwFlagC){
		alert('비밀번호를 확인해 주세요!');
		console.log(pwFlag)
		$("#inputPw").focus();
	}else if(!nickFlag){
		alert('닉네임을 확인해 주세요!');
		$("#inputNick").focus();
	}else if(document.querySelector('input[name="userSex"]:checked') != null ? false:true){
		alert('성별을 선택해 주세요!');
		$("#input[name='userSex']")[0].focus();
	}else{
		if(confirm("Jealth 회원가입 하시겠습니까?")){
			document.joinForm.submit();
			console.log('회원가입 요청~!');
		} 
	}
	
})


 
////////////////////////////////////////
////		TUI DATE PICKER 		////
////////////////////////////////////////
    let datepicker = new tui.DatePicker('#wrapper', {
            date: new Date(),
            input: {
                element: '#datepicker-input',
                format: 'yyyyMMdd'
            }
        });
////////////////////////////////////////
////		TUI DATE PICKER 		////
////			  END		 		////
////////////////////////////////////////        
</script>
</html>