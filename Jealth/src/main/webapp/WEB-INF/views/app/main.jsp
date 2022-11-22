<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta name="_csrf_header" th:content="${_csrf.headerName}">
	<meta name="_csrf" th:content="${_csrf.token}">
</head>
<body oncontextmenu="return false" onselectstart="return false">
<div id="main_wrap" class="">

    <%@include file="/resources/include/main_header.jsp" %>
    
        <div class="workout-recode-wrap width_value">
            <div class="container workout-Function-btn">
                <div class="row center-btn-box">
                    <div class="col-7" >${userInfo.userId}님 <br> userInfo session으로 확인</div>
                    <div class="col-2">
                        <div class="workout-function-btn-wrap" style="padding-right: 0;">
                            <button type="button" class="function-btn" id="recode_lock_btn" style="border: none; width: 26px;"><img src="${pageContext.request.contextPath}/resources/imgs/unlock.png" alt="" style="height: 26px; margin: 0 auto;"></button>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="workout-function-btn-wrap">
                            <button type="button" class="function-btn" id="workout_list_open_btn">루틴추가</button>
                        </div>
                    </div>
                </div>
            </div>
    
            <!-- 루틴 목록이 들어가는 공간 -->
            <div class="workout-item-wrap">
                
            </div>
        
            
            
            
            



            <div id="fixed_selector_wrap" class="fixed_selector_wrap width_value display_none">
                <div class="recode_bg"></div>
                <div class="recode_value_ok" id="recode_value_ok" style="cursor: pointer; width: 20%; margin: 0 auto;">확인</div>
                <div class="fixed_selector width_value">
                    <div class="recode_weight"><div id="recode_weight_minus5" class="recode_weight_minus5" data-name="weight" style="cursor: pointer;">-5</div></div>
                    <div class="recode_weight"><div id="recode_weight_minus1" class="recode_weight_minus1" data-name="weight" style="cursor: pointer;">-1</div></div>
                    <div class="recode_weight"><div id="recode_weight_v" class="recode_weight_t row" style="background: none; border:none"><input class="col-9" id="" type="text" placeholder="0"><span class="col-4" style="color:black">Kg</span></div></div>
                    <div class="recode_weight"><div id="recode_weight_plus1" class="recode_weight_plus1" data-name="weight" style="cursor: pointer;">+1</div></div>
                    <div class="recode_weight"><div id="recode_weight_plus5" class="recode_weight_plus5" data-name="weight" style="cursor: pointer;">+5</div></div>
                </div>
                <div class="fixed_selector width_value">
                    <div class="recode_weight"><div id="recode_count_minus5" class="recode_weight_minus5" data-name="count" style="cursor: pointer;">-5</div></div>
                    <div class="recode_weight"><div id="recode_count_minus1" class="recode_weight_minus1" data-name="count" style="cursor: pointer;">-1</div></div>
                    <div class="recode_weight"><div id="recode_count_v" class="recode_weight_t row" style="background: none; border:none"><input class="col-9" id="" type="text" placeholder="0"><span class="col-4" style="color:black">회</span></div></div>
                    <div class="recode_weight"><div id="recode_count_plus1" class="recode_weight_plus1" data-name="count" style="cursor: pointer;">+1</div></div>
                    <div class="recode_weight"><div id="recode_count_plus5" class="recode_weight_plus5" data-name="count" style="cursor: pointer;">+5</div></div>
                </div>
            </div>
            



            <div class="width_value" style="height: 20px;"></div>









        </div>
        
</div>



<div id="workout_list_wrap" class="display_none">
    <div class="width_value" style="z-index: 100; background: white; position: fixed;">
        <div class="workout_list_header row width_value">
            <div class="col-2"><img id="close_workout_list" src="${pageContext.request.contextPath}/resources/imgs/back-left-arrow-symbol_icon-icons.com_74324.png" alt="" style="cursor: pointer;"></div>
            <div class="col-7 workout_list_header_title">운동선택</div>
            <div class="col-3 worout_list_modify_btn" style="cursor: pointer;"><span id="workout_modify_btn">목록편집</span></div>
        </div>
    </div>
        <div class="workout_list_container container row width_value">





            <div class="workout_bundle width_value" name="가슴">
                <div class="workout_target_muscle row">
                    <div class="workout_target_muscle_name col-8"><span value="1">가슴</span><img src=""></img></div>
                    <div class="workout_add_del_btn col-4 display_none"><span name="addBtn"style="cursor: pointer;">추가</span><span name="delBtn" style="cursor: pointer;">삭제</span></div>
                </div>
                <div class="workout_title_box">
                </div>
            </div>







            <div class="workout_bundle width_value" name="어깨">
                <div class="workout_target_muscle row">
                    <div class="workout_target_muscle_name col-8"><span value="2">어깨</span><img src=""></img></div>
                    <div class="workout_add_del_btn col-4 display_none"><span name="addBtn"style="cursor: pointer;">추가</span><span name="delBtn" style="cursor: pointer;">삭제</span></div>
                </div>
                <div class="workout_title_box">
                </div>
            </div>






            <div class="workout_bundle width_value" name="팔">
                <div class="workout_target_muscle row">
                    <div class="workout_target_muscle_name col-8"><span value="3">팔</span><img src=""></img></div>
                    <div class="workout_add_del_btn col-4 display_none"><span name="addBtn"style="cursor: pointer;">추가</span><span name="delBtn" style="cursor: pointer;">삭제</span></div>
                </div>
                <div class="workout_title_box">
                </div>
            </div>







            <div class="workout_bundle width_value" name="등">
                <div class="workout_target_muscle row">
                    <div class="workout_target_muscle_name col-8"><span value="4">등</span><img src=""></img></div>
                    <div class="workout_add_del_btn col-4 display_none"><span name="addBtn"style="cursor: pointer;">추가</span><span name="delBtn" style="cursor: pointer;">삭제</span></div>
                </div>
                <div class="workout_title_box">
                </div>
            </div>







            <div class="workout_bundle width_value" name="코어">
                <div class="workout_target_muscle row">
                    <div class="workout_target_muscle_name col-8"><span value="5">코어</span><img src=""></img></div>
                    <div class="workout_add_del_btn col-4 display_none"><span name="addBtn"style="cursor: pointer;">추가</span><span name="delBtn" style="cursor: pointer;">삭제</span></div>
                </div>
                <div class="workout_title_box">
                </div>
            </div>







            <div class="workout_bundle width_value" name="하체">
                <div class="workout_target_muscle row">
                    <div class="workout_target_muscle_name col-8"><span value="6">하체</span><img src=""></img></div>
                    <div class="workout_add_del_btn col-4 display_none"><span name="addBtn"style="cursor: pointer;">추가</span><span name="delBtn" style="cursor: pointer;">삭제</span></div>
                </div>
                <div class="workout_title_box">
                </div>
            </div>







            <div class="workout_bundle width_value" name="기타">
                <div class="workout_target_muscle row">
                    <div class="workout_target_muscle_name col-8"><span value="7">기타</span><img src=""></img></div>
                    <div class="workout_add_del_btn col-4 display_none"><span name="addBtn"style="cursor: pointer;">추가</span><span name="delBtn" style="cursor: pointer;">삭제</span></div>
                </div>
                <div class="workout_title_box">
                </div>
            </div>
            <div class="width_value" style="height: 100px;"></div>



            
        </div>
        <div class="workout_list_footer_box width_value">
            <div class="row workout_list_footer_item" style="cursor: pointer;" onclick="selected_workout_list_add_in_recode()"><span id="choose_count">0</span><span>개 운동 추가</span></div>
        </div>
    </div>
    
    
    
    <!-- 모달 영역 -->
    <div id="modalBox" class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title" id="myModalLabel">what's your workout name?</h4>
            </div>
            <div class="modal-body col-12">
              <input id="modal_input" type="text" style="width: 100%;">
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-primary" id="okModalBtn">확인</button>
              <button type="button" class="btn btn-default" id="closeModalBtn">취소</button>
            </div>
          </div>
        </div>
    </div>
</div>
</body>
</html>
 

<script>
//security를 이용하여 post ajax 통신을 위해 필요한 변수들
let header = $("meta[name='_csrf_header']").attr('th:content');
let token = $("meta[name='_csrf']").attr('th:content');    

//더블클릭 무시
document.body.addEventListener('dblclick',function(){
    return;
});

click_calendar_date(document.querySelector('.today').parentElement.parentElement);


//recode를 debouncing 하여 서버에 update 요청
	  let timeout;
function recode_debounce(callback, limit) {
	if(timeout){
		clearTimeout(timeout);
	}
	timeout = setTimeout(function (){
		callback.apply();
	},limit);
	}


//운동목록 input 모달창을 열어주는 이벤트
    function open_modal_event(e){
        $('#modalBox').modal('show');
        modal_local = e;
    }
// 모달 취소 버튼 이벤트    
	function closeModalBtn(){
        $('#modal_input').val('');
        $('#modalBox').modal('hide');
	}
//모달에 입력된 값을 모달 밖으로 적용시킨다
	function okModalBtnClick(){
        modal_local.target.parentElement.parentElement.querySelector('.col-9 span').innerHTML = $('#modal_input').val();
        if(modal_local.target.parentElement.parentElement.getAttribute('name') !== 'new'){
	        modal_local.target.parentElement.parentElement.setAttribute("name","update");        	
        }
        $('#modal_input').val('');
        $('#modalBox').modal('hide');
    }    
//운동목록 창을 열고 main 창은 닫아주는 이벤트
    function display_toggle(){
    	$('.workout_title_box').text('');
        document.querySelector('#workout_list_wrap').classList.toggle('display_none');
        document.querySelector('#main_wrap').classList.toggle('display_none');
        document.querySelector('#choose_count').innerHTML = 0;
        //열었을때 AJAX로 운동목록 가져오는 코드
		$.ajax({ // ajax 시작
			type:'get',
			url:'/app/getWorkoutlist/',
			dataType:'text',
			success:function(result){
				console.log("/app/getWorkoutlist/ 통신 성공~!");
				workout_list_expressing(result);
			},error: function(request, status, error) {
				console.log('code: ' + request + '\n message: ' + request.responseText + "\n" + 'error: ' + error);
				alert('업로드에 실패했습니다. 관리자에게 문의 해 주세요.');
			}
		}); // ajax 끝
		$('.workout_bundle .workout_title .col-2 img').on('click',recode_title_del_img_click);
    }
    $('#workout_list_open_btn').on('click',display_toggle);
    
    
   
    document.querySelector('#close_workout_list').addEventListener('click',function(e){
        try{    //편집모드에서 뒤로가기 눌렀을 때 저장 여부 확인하기 위한 코드
            if(e.target.parentElement.parentElement.querySelector('#workout_save_btn').innerHTML === '목록저장'){
                workout_save_btn();
            }else if(e.target.parentElement.parentElement.querySelector('#workout_modify_btn').innerHTML === '목록편집'){
                return;
            } else{}

        }catch(err){
            if(err.message !== "Cannot read properties of null (reading 'innerHTML')"){
                console.log("document.querySelector('#close_workout_list').addEventListener err : " + err.log);
            }
        }
        // 체크박스 해제 코드
        $inputdom = e.target.parentElement.parentElement.parentElement.parentElement.querySelectorAll('.workout_title_box input[type="checkbox"]');
        for(let i=0; i < $inputdom.length; i++){
            if($inputdom[i].checked){
                $inputdom[i].checked = false;
            }
        }
        display_toggle();
        
    });



//운동 세트 추가
    //AJAX로 UPDATE 처리 해줄것
    function workout_recode_set_add(e){
        console.log('workout_recode_set_add 이벤트 실행') ;
        let set_count = e.target.parentElement.parentElement.parentElement.querySelectorAll('.workout_recode_wrap .workout-list-wrap').length;
        const $dom = document.createElement('div');
        if(e.target.parentElement.parentElement.parentElement.querySelectorAll('.workout_recode_wrap .workout-list-wrap')[0] === undefined){
            $dom.classList.add('row','workout-list-wrap');
            $dom.innerHTML = 
            `<div class="col-6 workout_recode_box">
                            <input type="checkbox"> <span class="workout_recode" id="workout_recode_set_count">1</span><strong>세트</strong>
                        </div>
                        <div class="col-6 workout_recode_box workout_recode_count" style="cursor: pointer;">
                            <span class="workout_recode">0</span>
                            <strong>Kg</strong>
                            <strong> X </strong>
                            <span class="workout_recode">0</span>
                            <strong>회</strong>
                        </div>`;
            e.target.parentElement.parentElement.parentElement.querySelector('.workout_recode_wrap').append($dom);
            $('.workout_recode_count').off('click',workout_recode_count_open);
            $('.workout_recode_count').on('click',workout_recode_count_open);
        }else{
            $dom.classList.add('row','workout-list-wrap');
            $dom.innerHTML = e.target.parentElement.parentElement.parentElement.querySelectorAll('.workout-list-wrap')[set_count-1].innerHTML;
            $dom.querySelector('#workout_recode_set_count').innerHTML = set_count+1;
            e.target.parentElement.parentElement.parentElement.querySelector('.workout_recode_wrap').append($dom);
            $('.workout_recode_count').off('click',workout_recode_count_open);
            $('.workout_recode_count').on('click',workout_recode_count_open);
        }
            
            
            let workoutListJSON = [];
            
            
            let workoutNo = e.target.parentElement.parentElement.parentElement.querySelector('.workout-name').getAttribute('value');
            let workoutRecodeAddNo =  e.target.parentElement.parentElement.parentElement.getAttribute('recodecount');
            let workoutRoundNo = $dom.querySelector('#workout_recode_set_count').innerHTML;
            let workoutCount = $dom.querySelectorAll('.workout_recode')[2].innerHTML;
            let workoutWeight = $dom.querySelectorAll('.workout_recode')[1].innerHTML;
            
            
            let top_date = document.querySelector('.year-month').innerHTML;

            
           let workoutDate = (top_date.substring(0,4)) + (top_date.substring(6,8)*1 < 10 ? "0"+top_date.substring(6,8)*1 : top_date.substring(6,8)*1) + (top_date.substring(10,12)*1 < 10 ? "0"+top_date.substring(10,12)*1 : top_date.substring(10,12)*1);
           let insert_workout = {
           		"workoutNo":workoutNo,
           		"workoutRecodeAddNo":workoutRecodeAddNo*1,
           		"workoutRoundNo":workoutRoundNo*1,
           		"workoutCount":workoutCount*1,
           		"workoutWeight":workoutWeight*1,
           		"workoutDate":workoutDate 
           }
           workoutListJSON[0] = insert_workout;
           //JSON 데이터를 insert 하기위해 통신 시도
	   		$.ajax({ // ajax 시작
	      				type: 'post',
	      				url: '<c:url value="/app/insertWorkoutRecode" />',
	      				data: JSON.stringify(workoutListJSON), //폼 데이터 객체를 넘깁니다.
	      				contentType: 'application/json', //ajax 방식에서 파일을 넘길 때는 반드시 false로 처리 -> "multipart/form-data"로 선언됨.
	      				error: function(request, status, error) {
	      					alert('서버와 통신 오류! 관리자에게 문의해 주세요~~!');
	      				}
	   		}); 
            
            
        
    }
    
    //운동 세트 삭제
    //AJAX로 DELETE 처리 해줄것
    function workout_recode_set_del(e){
        let workoutNo = e.target.parentElement.parentElement.parentElement.querySelector('.workout-name').getAttribute('value');
        let workoutRecodeAddNo =  e.target.parentElement.parentElement.parentElement.getAttribute('recodecount');
        let workoutRoundNo = e.target.parentElement.parentElement.parentElement.querySelectorAll('.workout-list-wrap').length;

    	
        let set_count = e.target.parentElement.parentElement.parentElement.querySelectorAll('.workout_recode_wrap .workout-list-wrap').length;
        const $del = e.target.parentElement.parentElement.parentElement.querySelectorAll('.workout-list-wrap')[set_count-1];
        e.target.parentElement.parentElement.parentElement.querySelector('.workout_recode_wrap').removeChild($del);
        let workoutListJSON = [];
        
        //DB에 workout_recode 삭제요청 보내는 코드

        
        
        let top_date = document.querySelector('.year-month').innerHTML;

        
       let workoutDate = (top_date.substring(0,4)) + (top_date.substring(6,8)*1 < 10 ? "0"+top_date.substring(6,8)*1 : top_date.substring(6,8)*1) + (top_date.substring(10,12)*1 < 10 ? "0"+top_date.substring(10,12)*1 : top_date.substring(10,12)*1);
       let delete_workout = {
       		"workoutNo":workoutNo,
       		"workoutRecodeAddNo":workoutRecodeAddNo*1,
       		"workoutRoundNo":workoutRoundNo*1,
       		"workoutDate":workoutDate 
       }
       workoutListJSON[0] = delete_workout;
   		$.ajax({ // ajax 시작
      				type: 'post',
      				url: '<c:url value="/app/deleteWorkoutRecode" />',
      				data: JSON.stringify(workoutListJSON), //폼 데이터 객체를 넘깁니다.
      				contentType: 'application/json', //ajax 방식에서 파일을 넘길 때는 반드시 false로 처리 -> "multipart/form-data"로 선언됨.
      				error: function(request, status, error) {
      					alert('서버와 통신 오류! 관리자에게 문의해 주세요~~!');
      				}
   		});
        
    }




    //운동 list 삭제
    //AJAX로 DELETE 처리 해줄것
    function recode_list_del(e){
        console.log('실행');
        let $target;
        if(e.target.tagName === 'DIV' && e.target.className === 'col-3'){
        	$target = e.target.parentElement.parentElement;
        }else if(e.target.tagName === 'IMG' && e.target.className === ''){
        	$target = e.target.parentElement.parentElement.parentElement;
        }
        $target.remove();
    }

    //잠금 해제 기능
    function recode_unlock_btn(){
        let $recode = document.querySelectorAll('.workout-item .workout_recode_void');
        for(let i=0; i<$recode.length; i++){
            document.querySelectorAll('.workout-del-btn .col-3')[i].style = "display:disable";
            document.querySelectorAll('.add_del_box')[i].style = "display:disable";
        }
        let $recode_2 = document.querySelectorAll('.workout_recode_box[style]');
        for(let i=0; i<$recode_2.length; i++){
            $recode_2[i].style = "cursor: pointer"
        }
        $('.workout_recode_set_add').on('click',workout_recode_set_add);
        $('.workout_recode_set_del').on('click',workout_recode_set_del);
        $('.workout-del-btn .col-3').on('click',recode_list_del);
        //잠금 버튼과 이벤트를 변경 > 잠금해제+이벤트 부여
        $('#recode_unlock_btn img').attr('src','${pageContext.request.contextPath}/resources/imgs/unlock.png')
        $('#recode_unlock_btn').attr('id','recode_lock_btn');
        $('#recode_lock_btn').off('click');
        $('#recode_lock_btn').on('click',recode_lock_btn);
    }

    //잠금 기능
    function recode_lock_btn(){
        let $recode = document.querySelectorAll('.workout-item .workout_recode_void');
        for(let i=0; i<$recode.length; i++){
            document.querySelectorAll('.workout-del-btn .col-3')[i].style = "display:none";
            document.querySelectorAll('.add_del_box')[i].style = "display:none";
        }
        let $recode_2 = document.querySelectorAll('.workout_recode_box[style]');
        for(let i=0; i<$recode_2.length; i++){
            $recode_2[i].style = "cursor: default"
        }
        $('.workout_recode_set_add').off('click',workout_recode_set_add);
        $('.workout_recode_set_del').off('click',workout_recode_set_del);
        $('.workout-del-btn .col-3').off('click',recode_list_del);
        //잠금 버튼과 이벤트를 변경 > 잠금해제+이벤트 부여
        $('#recode_lock_btn img').attr('src','${pageContext.request.contextPath}/resources/imgs/lock.png')
        $('#recode_lock_btn').attr('id','recode_unlock_btn');
        $('#recode_unlock_btn').off('click');
        $('#recode_unlock_btn').on('click',recode_unlock_btn);
    }


    
////////////////////////////////////////////////////////////
//////////recode를 선택해서 횟수, 중량 입력 기능/////////////
////////////////////////////////////////////////////////////
    let $target ;
    function workout_recode_count_open(e){
        console.log('workout_recode_count_open 이벤트 실행');
        if(e.target.parentElement.parentElement.classList.value === 'row workout-list-wrap'){
                $target = e.target.parentElement.parentElement;
            }else if(e.target.parentElement.classList.value === 'row workout-list-wrap'){
                $target = e.target.parentElement;
            }else if(e.target.parentElement.className === 'row workout-list-wrap selected_element'){
                document.querySelector('.selected_element').classList.remove('selected_element'); 
                workout_recode_count_close();
                return;
            }else if(e.target.parentElement.parentElement.className === 'row workout-list-wrap selected_element'){
                document.querySelector('.selected_element').classList.remove('selected_element'); 
                workout_recode_count_close();
                return;
            }
            
            
            else{
                return;
            }
        if(document.querySelector('.selected_element') !== null){// selected 되어있는 것을 해제 
            document.querySelector('.selected_element').classList.remove('selected_element'); 
        }

        if($target.parentElement.parentElement.parentElement.parentElement.lastChild.className !== 'width_value null_box'){
            let $dom = document.createElement('div');
            $dom.style = "height:150px";
            $dom.classList.add('width_value','null_box');
            document.querySelector('.workout-recode-wrap').append($dom);
        }else{}
        $target.classList.toggle('selected_element'); // selected 적용
        $('#fixed_selector_wrap').removeClass('display_none');
        $('#recode_weight_v input[type="text"]').val($target.querySelectorAll('.workout_recode_count span')[0].innerHTML);
        $('#recode_count_v input[type="text"]').val($target.querySelectorAll('.workout_recode_count span')[1].innerHTML);
    }

    function workout_recode_count_close(e){
        console.log('이벤트 실행 : workout_recode_count_close');
        document.querySelector('#fixed_selector_wrap').classList.add('display_none');
    }
    function workout_recode_count_updown_btn(e){
        if(e.target.innerHTML.substring(0,1)==='-'){
            e.target.parentElement.parentElement.querySelector('input').value -= e.target.innerHTML.substring(1);
        }else if(e.target.innerHTML.substring(0,1) === '+'){
            e.target.parentElement.parentElement.querySelector('input').value = (1*e.target.parentElement.parentElement.querySelector('input').value) + (1*e.target.innerHTML.substring(1));
        }
    }
    function workout_recode_count_change(e){
        let $a
        if(e.target.tagName === 'INPUT'){
            $a = e.target;
        }else{
            $a = e.target.parentElement.parentElement.querySelector('input');
        }
        let dataName = $a.parentElement.parentElement.parentElement.querySelector('.recode_weight div').dataset.name
        if(dataName === 'weight'){
        	$target.querySelectorAll('.workout_recode_count .workout_recode')[0].innerHTML = $a.value
        	recode_debounce(function(){
        		//ajax 로 update요청하면 됨
        		let top_date = document.querySelector('.year-month').innerHTML;
        		let workoutNo = document.querySelector('.selected_element').parentElement.parentElement.querySelector('.workout-name').getAttribute('value');
                let workoutRoundNo = document.querySelectorAll('.selected_element .workout_recode')[0].innerHTML;
        		let workoutDate = (top_date.substring(0,4)) + (top_date.substring(6,8)*1 < 10 ? "0"+top_date.substring(6,8)*1 : top_date.substring(6,8)*1) + (top_date.substring(10,12)*1 < 10 ? "0"+top_date.substring(10,12)*1 : top_date.substring(10,12)*1);
        		let workoutWeight = document.querySelectorAll('.selected_element .workout_recode')[1].innerHTML;
        		let workoutCount = document.querySelectorAll('.selected_element .workout_recode')[2].innerHTML;
        		let workoutRecodeAddNo = document.querySelector('.selected_element').parentElement.parentElement.getAttribute('recodecount');
        		let workoutListJSON = [{
       	       		"workoutNo":workoutNo*1,
       	       		"workoutRoundNo":workoutRoundNo*1,
       	       		"workoutDate":workoutDate*1,
       	       		"workoutWeight":workoutWeight*1,
       	       		"workoutCount":workoutCount*1,
       	       		"workoutRecodeAddNo":workoutRecodeAddNo*1
        		}];
           		$.ajax({ // ajax 시작
      				type: 'post',
      				url: '<c:url value="/app/updateWorkoutRecode" />',
      				data: JSON.stringify(workoutListJSON), //폼 데이터 객체를 넘깁니다.
      				contentType: 'application/json', //ajax 방식에서 파일을 넘길 때는 반드시 false로 처리 -> "multipart/form-data"로 선언됨.
      				error: function(request, status, error) {
      					alert('서버와 통신 오류! 관리자에게 문의해 주세요~~!');
      				}
   				});
        	},250);
			//$target.querySelectorAll('.workout_recode_count .workout_recode')[0].innerHTML = $a.value
        }else if(dataName === 'count'){
        	$target.querySelectorAll('.workout_recode_count .workout_recode')[1].innerHTML = $a.value
        	recode_debounce(function(){
        		//ajax 로 update요청하면 됨
        		let top_date = document.querySelector('.year-month').innerHTML;
        		let workoutNo = document.querySelector('.selected_element').parentElement.parentElement.querySelector('.workout-name').getAttribute('value');
                let workoutRoundNo = document.querySelectorAll('.selected_element .workout_recode')[0].innerHTML;
        		let workoutDate = (top_date.substring(0,4)) + (top_date.substring(6,8)*1 < 10 ? "0"+top_date.substring(6,8)*1 : top_date.substring(6,8)*1) + (top_date.substring(10,12)*1 < 10 ? "0"+top_date.substring(10,12)*1 : top_date.substring(10,12)*1);
        		let workoutWeight = document.querySelectorAll('.selected_element .workout_recode')[1].innerHTML;
        		let workoutCount = document.querySelectorAll('.selected_element .workout_recode')[2].innerHTML;
        		let workoutRecodeAddNo = document.querySelector('.selected_element').parentElement.parentElement.getAttribute('recodecount');
        		let workoutListJSON = [{
       	       		"workoutNo":workoutNo*1,
       	       		"workoutRoundNo":workoutRoundNo*1,
       	       		"workoutDate":workoutDate*1,
       	       		"workoutWeight":workoutWeight*1,
       	       		"workoutCount":workoutCount*1,
       	       		"workoutRecodeAddNo":workoutRecodeAddNo*1
        		}];
           		$.ajax({ // ajax 시작
      				type: 'post',
      				url: '<c:url value="/app/updateWorkoutRecode" />',
      				data: JSON.stringify(workoutListJSON), //폼 데이터 객체를 넘깁니다.
      				contentType: 'application/json', //ajax 방식에서 파일을 넘길 때는 반드시 false로 처리 -> "multipart/form-data"로 선언됨.
      				error: function(request, status, error) {
      					alert('서버와 통신 오류! 관리자에게 문의해 주세요~~!');
      				}
   				});
        	},250);
        }else{return;}
    }
    
 
////////////////////////////////////////////////////////////
//////////recode를 선택해서 횟수, 중량 입력 기능/////////////
////////////////////////////////////////////////////////////    

    $('.workout_recode_set_add').on('click',workout_recode_set_add);
    $('.workout_recode_set_del').on('click',workout_recode_set_del);
    $('.workout-del-btn .col-3').on('click',recode_list_del);
    $('#recode_lock_btn').on('click',recode_lock_btn);
    $('.workout_recode_count').on('click',workout_recode_count_open);
    $('#recode_value_ok').on('click',workout_recode_count_close);
    $('.recode_weight_minus5, .recode_weight_minus1, .recode_weight_plus1, .recode_weight_plus5').on('click',workout_recode_count_updown_btn);
    $('.recode_weight_minus5, .recode_weight_minus1, .recode_weight_plus1, .recode_weight_plus5').on('click',workout_recode_count_change);
    $('.recode_weight input').on('change',workout_recode_count_change);



//========================================//
//============= 운동선택창 ===============//   
//========================================//
    //선택한 모달 위치를 저장할 변수
    let modal_local;


    
    
    $(function(){//JQuery 시작
    	
    	//security 토큰 인증 절차
		$.ajaxPrefilter(function(options, originalOptions, xhr){
			if (options['type'].toLowerCase() === "post") {
				xhr.setRequestHeader(header,token);
			  }else{
		  }
		});    	
    	
    	
    	
    	
        //input 창 마스크 셋팅
        $('#recode_weight_v input[type="text"], #recode_count_v input[type="text"]').mask('000');




        



        // 운동 선택 창 편집모드에서 운동목록 추가
        $('.workout_add_del_btn span[name="addBtn"]').on('click',function(e){
            console.log('addBtn 이벤트 실행')
            $mdom = document.createElement('div');
            $mdom.setAttribute('name','new');
            $mdom.setAttribute('value',document.querySelectorAll('.workout_title').length+1);
            $mdom.classList.add('workout_title','row');
            $mdom.innerHTML =
            `
            <div class="col-2"><input class="display_none" type="checkbox"><img src="${pageContext.request.contextPath}/resources/imgs/delete.png" alt="" style="width:25px;height:25px;margin: 7.5px; cursor: pointer;"></div>
            <div class="col-9"><span>what's your workout name?</span></div>
            <div class="col-1"><img class="openModalBtn" src="${pageContext.request.contextPath}/resources/imgs/pen_create.png" style="width:20px;height:20px;margin: 10px 5px; cursor: pointer;"></div>
            `;

            e.target.parentElement.parentElement.parentElement.querySelector('.workout_title_box').appendChild($mdom);
            $('.workout_bundle .workout_title .col-2 img').on('click',recode_title_del_img_click);
            $('.openModalBtn').on('click',open_modal_event);
            
        });

        
        
        
    }); // JQuery 끝

    
    let choose_count = 0;
   	
    // 운동 선택 창 편집모드에서 삭제
    function workout_del_btn_evnt(e){
    	let $dom = e.target.parentElement.parentElement.parentElement.querySelectorAll('.workout_title')[(e.target.parentElement.parentElement.parentElement.querySelectorAll('.workout_title').length-1)-e.target.parentElement.parentElement.parentElement.querySelectorAll('.workout_title[name="delete"]').length];
        $dom.classList.add('display_none');
        $dom.setAttribute('name','delete');
    }
    $('.workout_add_del_btn span[name="delBtn"]').on('click',workout_del_btn_evnt);
    
    //운동선택 편집모드에서 휴지통 img로 삭제 이벤트
    function recode_title_del_img_click(e){
        console.log('recode_title_del_img_click 이벤트 실행');
        e.target.parentElement.parentElement.classList.add('display_none');
        e.target.parentElement.parentElement.setAttribute('name','delete');
    }
    
    //체크박스를 감싸고 있는 .workout_title 을 클릭해도 체크 되는 이벤트 + checkbox 선택시 발생되는 이벤트 들
    function workout_title_checked_of_tag_selected(e){
        //target 통일화
        if(e.target.tagName === 'SPAN'){//span 태그를 클릭시
            inputTag = e.target.parentElement.parentElement.querySelector('input[type="checkbox"]');
        }else if(e.target.className === 'col-9'){
        	inputTag = e.target.parentElement.querySelector('input[type="checkbox"]');
        }else if(e.target.className === 'workout_title row' || e.target.className === 'col-2' || e.target.className === 'workout_title_box'){
        	inputTag = e.target.querySelector('input[type="checkbox"]');
        }else if(e.target.tagName === 'INPUT'){
        	inputTag = e.target;            
            if(inputTag.checked){
                choose_count ++;
                document.getElementById('choose_count').innerHTML = choose_count;
                inputTag.setAttribute('data-add-order',choose_count-1);
                /* return; */
            }else{
                choose_count --;
                inputTag.removeAttribute('data-add-order');
                document.getElementById('choose_count').innerHTML = choose_count;
                /* return; */
            }
        }else{ //입력된 곳이 위에 조건에 해당되지 않으면 이벤트 종료!
            return;
        }

        
        if(e.target.tagName !== 'INPUT'){
            if(inputTag.checked){ //체크가 되어있다면 choose_count를 1 차감 시키고 data 속성을 삭제 함
            	inputTag.checked = false;
                choose_count --;
                inputTag.removeAttribute('data-add-order');
                document.getElementById('choose_count').innerHTML = choose_count;
                return;
            }else{ //체크가 되어있지 않으면 choose_count를 1 증가 시키고 data에 순서를 입력 함
            	inputTag.checked = true;
                choose_count ++;
                inputTag.setAttribute('data-add-order',choose_count-1);
                document.getElementById('choose_count').innerHTML = choose_count;
                return;
            }
        }
        


    }
    
    $('.workout_title_box').on('click',workout_title_checked_of_tag_selected);





    function toggle_attribute_fn(){
        // 편집모드이기 때문에 footer를 가려준다
        document.querySelector('.workout_list_footer_box').classList.toggle('display_none');
        
        for(let i=0; i<document.querySelectorAll('.workout_target_muscle').length;i++){
            document.querySelectorAll('.workout_target_muscle .workout_add_del_btn')[i].classList.toggle('display_none');
        }
        for(let a = 0; a < document.querySelectorAll('.workout_title .col-1').length; a++){
            //연필모양 표시하기
            document.querySelectorAll('.workout_title .col-1')[a].classList.toggle('display_none');
            //체크박스 삭제하고 delet버튼 표시하기
            document.querySelectorAll('.workout_title input[type="checkbox"]')[a].classList.toggle('display_none');
            document.querySelectorAll('.workout_title .col-2 img')[a].classList.toggle('display_none');
        }
    }




    //변경한 목록을 저장합니다. [insert update delete]
    function workout_save_btn(){
       	let newWorkoutList = [];
		let updateWorkoutList = [];
		let deleteWorkoutList = [];
		
		
       	const date = new Date();
       	/* 
       	date.getFullYear()
       	date.getDay()
       	 */
       	const nowMonth = date.getMonth()+1 < 10 ? "0"+(date.getMonth()+1) :date.getMonth()+1;
       	const nowDate = date.getDate() < 10 ? "0"+date.getDate() :date.getDate();
       	
       	const today = date.getFullYear()+""+nowMonth+""+nowDate;
       	
        toggle_attribute_fn();
        //버튼을 다시 편집모드로 변경해 준다
        document.querySelector('#workout_save_btn').removeEventListener('click',workout_save_btn);
        document.querySelector('#workout_save_btn').innerHTML = '목록편집';
        document.querySelector('#workout_save_btn').setAttribute('id','workout_modify_btn');
        document.querySelector('#workout_modify_btn').addEventListener('click',workout_modify_btn);
        
        if(confirm('저장하시겠습니까?')){
        	
        	//insert
        	if(document.querySelectorAll('.workout_title_box .workout_title[name="new"]').length !== 0){
                //새로 입력된 운동 목록을 찾아서 insert해줌h
            	let $insertDom = document.querySelectorAll('.workout_title_box .workout_title[name="new"]');
            	for(let i=0; i<$insertDom.length; i++){
            		const workoutNo = $insertDom[i].getAttribute('value');
            		const name = $insertDom[i].querySelectorAll('.workout_title[name="new"] .col-9 span')[i].innerHTML;
            		const musclePart = $insertDom[i].querySelectorAll('.workout_title[name="new"] .col-9 span')[i].parentElement.parentElement.parentElement.parentElement.querySelector('.workout_target_muscle_name span').innerHTML;
            		let newWorkout = {
            			'workoutNo':workoutNo,
            			'workoutName':name,
            			'musclePart':musclePart,
            			'workoutCreateDate':today
            			};
            		newWorkoutList[i] = newWorkout;
            	}
            	console.log(newWorkoutList);
            	$.ajax({ // ajax 시작
    				type: 'post',
    				url: '<c:url value="/app/insertWorkoutList" />',
    				data: JSON.stringify(newWorkoutList), //폼 데이터 객체를 넘깁니다.
    				contentType: 'application/json', //ajax 방식에서 파일을 넘길 때는 반드시 false로 처리 -> "multipart/form-data"로 선언됨.
    				error: function(request, status, error) {
    					alert('서버와 통신 오류! 관리자에게 문의해 주세요~~!');
    				}
            	}); // insert ajax 끝
        	}
        		
        	//update
        	if(document.querySelectorAll('.workout_title_box .workout_title[name="update"]').length !== 0){
	        	//기존 데이터에서 수정된 데이터가 있으면 update 해줌
	        	let $updateDom = document.querySelectorAll('.workout_title_box .workout_title[name="update"]');
	        	for(let i=0;i < $updateDom.length; i++){
	        		const workoutNo = document.querySelectorAll('.workout_title[name="update"]')[i].getAttribute('value');
	        		const name = document.querySelectorAll('.workout_title[name="update"] .col-9 span')[i].innerHTML;
	        		const musclePart = document.querySelectorAll('.workout_title[name="update"] .col-9 span')[i].parentElement.parentElement.parentElement.parentElement.querySelector('.workout_target_muscle_name span').innerHTML;
		        	let updateWorkout = {
		        			'workoutNo':workoutNo,
		        			'workoutName':name,
		        			'musclePart':musclePart,
		        			'workoutCreateDate':today
		        			};
	        		updateWorkoutList[i] = updateWorkout;
	        	}
	       		$.ajax({ // ajax 시작
	   				type: 'post',
	   				url: '<c:url value="/app/updateWorkoutList" />',
	   				data: JSON.stringify(updateWorkoutList), //폼 데이터 객체를 넘깁니다.
	   				contentType: 'application/json', //ajax 방식에서 파일을 넘길 때는 반드시 false로 처리 -> "multipart/form-data"로 선언됨.
	   				error: function(request, status, error) {
	   					alert('서버와 통신 오류! 관리자에게 문의해 주세요~~!');
	   				}
	           	}); // update ajax 끝
        	}
        	//delete
        	if(document.querySelectorAll('.workout_title_box .workout_title[name="delete"]').length !== 0){
        		//기존 데이터에서 삭제된 데이터가 있으면 delete 해줌
	        	let $deleteDom = document.querySelectorAll('.workout_title_box .workout_title[name="delete"]');
	        	for(let i=0;i < $deleteDom.length; i++){
	        		const workoutNo = document.querySelectorAll('.workout_title[name="delete"]')[i].getAttribute('value');
	        		const name = document.querySelectorAll('.workout_title[name="delete"] .col-9 span')[i].innerHTML;
	        		const musclePart = document.querySelectorAll('.workout_title[name="delete"] .col-9 span')[i].parentElement.parentElement.parentElement.parentElement.querySelector('.workout_target_muscle_name span').innerHTML;
		        	let deleteWorkout = {
		        			'workoutNo':workoutNo,
		        			'workoutName':name,
		        			'musclePart':musclePart,
		        			'workoutCreateDate':today
		        			};
		        	deleteWorkoutList[i] = deleteWorkout;
	        	}
	        	$.ajax({ // ajax 시작
	   				type: 'post',
	   				url: '<c:url value="/app/deleteWorkoutList" />',
	   				data: JSON.stringify(deleteWorkoutList), //폼 데이터 객체를 넘깁니다.
	   				contentType: 'application/json', //ajax 방식에서 파일을 넘길 때는 반드시 false로 처리 -> "multipart/form-data"로 선언됨.
	   				error: function(request, status, error) {
	   					alert('서버와 통신 오류! 관리자에게 문의해 주세요~~!');
	   				}
	           	}); // delete ajax 끝
	        	
	        	
        	}
        	
        }
        
    }

    /* 토크인증 시도 */
    $(function(){

    });
    //목록 편집모드로 변경되는 이벤트
    function workout_modify_btn(){
        toggle_attribute_fn();
        document.querySelector('#workout_modify_btn').removeEventListener('click',workout_modify_btn);
        document.querySelector('#workout_modify_btn').setAttribute('id','workout_save_btn');
        document.querySelector('#workout_save_btn').innerHTML = '목록저장';
        document.querySelector('#workout_save_btn').addEventListener('click',workout_save_btn);
        $('.workout_bundle .workout_title .col-2 img').on('click',recode_title_del_img_click);
        
    }






    // 요소에 이벤트 등록!
    document.querySelector('#workout_modify_btn').addEventListener('click',workout_modify_btn);

    //체크박스에 체크된 순서를 data속성으로 기록해주는 함수
    function checkbox_checked_insert_nomber(e){
    	
    }
        
    //선택된 운동 목록들을 recode에 등록
        //AJAX로 UPDATE처리 해주기~
    function  selected_workout_list_add_in_recode(){
    	
    	//JSON 배열로 묶어 controller로 전달된 객체 선언
    	let workoutListJSON = [];
    	
        const $checked_box = document.querySelectorAll('.workout_title input[type="checkbox"]'); //체크되어 있는 항목을 리스트로 가져옴
        let $checked_box_sorted = [];
        //체크된 순서대로 workout_list에 뿌져주어야 하기 때문에 data-add-order 속성으로 정렬 해주기
        for(let i=0; i < $checked_box.length; i++){
        	if(document.querySelector('.workout_title input[type="checkbox"][data-add-order="'+i+'"]') !== null){
	        	$checked_box_sorted[i] = document.querySelector('.workout_title input[type="checkbox"][data-add-order="'+i+'"]');
        	}
        }
        
        
        
        for(let i=0; i < $checked_box_sorted.length; i++){
           	let workout_name = document.querySelector('.workout_title input[type="checkbox"][data-add-order="'+i+'"]').parentElement.parentElement.querySelector('.col-9 span').innerHTML;
           	const $dom = document.createElement('div');
           	const workoutNo = document.querySelector('.workout_title input[type="checkbox"][data-add-order="'+i+'"]').parentElement.parentElement.getAttribute('value');
           	$dom.classList.add('workout_recode_void');
           	$dom.innerHTML =
           		`
           		<div class="row workout-del-btn">
                    <div class="col-9"></div>
                    <div class="col-3" style="cursor: pointer; font-size: 12px; font-weight: 600; color: var(-font_color1); text-align: right;">DELETE<img src="${pageContext.request.contextPath}/resources/imgs/delete.png" alt="" style=" display:inline; width: 17px;"></div>
               	</div>
                   <div class="row workout-name" value="`+workoutNo+`">
                       <strong>`+workout_name+`</strong>
                   </div>
                   <div class="row workout_recode_wrap">
                       <div class="row workout-list-wrap">
                           <div class="col-6 workout_recode_box">
                               <input type="checkbox"> <span class="workout_recode" id="workout_recode_set_count">1</span><strong>세트</strong>
                           </div>
                           <div class="col-6 workout_recode_box workout_recode_count" style="cursor: pointer;">
                               <span class="workout_recode">0</span>
                               <strong>Kg</strong>
                               <strong> X </strong>
                               <span class="workout_recode">0</span>
                               <strong>회</strong>
                           </div>
                       </div>
                   </div>
                   <div class="add_del_box row">
                       <div class="col-6 set_modify_btn"><span class="workout_recode_set_add" style="cursor: pointer;">+ 세트 추가</span></div>
                       <div class="col-6 set_modify_btn"><span class="workout_recode_set_del"style="cursor: pointer;">- 세트 삭제</span></div>
                   </div>
           		`;
           		
           	document.querySelector('.workout-item').appendChild($dom);
            $checked_box_sorted[i].checked = false;
            
            choose_count = 0;
            document.querySelector('.workout_list_footer_item span').innerHTML = '0';//0개 운동 추가 로 다시 바꿔줌
            //json배열 data로 만들어서 한번에 서버와 통신하기위한 작업 
            
            let top_date = document.querySelector('.year-month').innerHTML;
            
            let workoutDate = (top_date.substring(0,4)) + (top_date.substring(6,8)*1 < 10 ? "0"+top_date.substring(6,8)*1 : top_date.substring(6,8)*1) + (top_date.substring(10,12)*1 < 10 ? "0"+top_date.substring(10,12)*1 : top_date.substring(10,12)*1);
            const workout_length = document.querySelectorAll('.workout_recode_void').length;
			let insert_workout = {
        			'workoutNo':workoutNo, //workout_list 일렬번호
        			'workoutRecodeAddNo':workout_length, // workout_recode 목록에 추가된 다음에 카운트 되기 때문에 workout_recode_void 길이로 계산이 가능하다|
        			'workoutRoundNo':1, //셋트 번호
        			'workoutCount':0, //반복 횟수
        			'workoutWeight':0, //운동 무게
        			'workoutDate':workoutDate //운동 날짜
        			}; 
            workoutListJSON[i] = insert_workout;
        }
        //JSON 데이터를 insert 하기위해 통신 시도
		$.ajax({ // ajax 시작
   				type: 'post',
   				url: '<c:url value="/app/insertWorkoutRecode" />',
   				data: JSON.stringify(workoutListJSON), //폼 데이터 객체를 넘깁니다.
   				contentType: 'application/json', //ajax 방식에서 파일을 넘길 때는 반드시 false로 처리 -> "multipart/form-data"로 선언됨.
   				error: function(request, status, error) {
   					alert('서버와 통신 오류! 관리자에게 문의해 주세요~~!');
   				}
		}); 
        //체크 했던 항목을 체크 해제 상태로 변경함
        display_toggle();
        //이미 기존에 표시되어있는 데이터는 이벤트가 걸려있기 때문에 기존 이벤트 삭제후에 다시 적용
        $('.workout_recode_set_add').off('click',workout_recode_set_add);
        $('.workout_recode_set_del').off('click',workout_recode_set_del);
        $('.workout-del-btn .col-3').off('click',recode_list_del);
        $('.workout_recode_count').off('click',workout_recode_count_open);
        $('.workout_recode_set_add').on('click',workout_recode_set_add);//레코드 추가 이벤트
        $('.workout_recode_set_del').on('click',workout_recode_set_del);//레코드 삭제 이벤트
        $('.workout-del-btn .col-3').on('click',recode_list_del); //레코드 번들 삭제 이벤트
        $('.workout_recode_count').on('click',workout_recode_count_open);
        
    }
    



//========================================//
//============= 운동선택창 끝 ===============//   
//========================================//









//========================================//
//========= AJAX 통신후 실행되는 이벤트=========//   
//========================================//
    
/* 
	받아온 데이터로 운동 레코드 뿌려주기 
*/
	function workout_recode_expressing(data){
		document.querySelector('.workout-recode-wrap .workout-item-wrap').innerHTML = '';
		const jsonData = JSON.parse(data);
		let list_no = 1;
        const $workoutItem = document.createElement('div');
        $workoutItem.classList.add('workout-item');
        
        
		for(let i=0;i<jsonData.length;i++){
			
			let $workoutVoid = document.createElement('div');
			
			
			if(jsonData[i].workoutRecodeAddNo === (list_no-1)){
                $workoutVoid.classList.add('workout_recode_void');
                $workoutVoid.setAttribute('recodeCount',jsonData[i].workoutRecodeAddNo);
                $workoutVoid.innerHTML += `
				<div class="row workout-del-btn">
				    <div class="col-9"></div>
				    <div class="col-3" style="cursor: pointer; font-size: 12px; font-weight: 600; color: var(-font_color1); text-align: right;">DELETE<img src="${pageContext.request.contextPath}/resources/imgs/delete.png" alt="" style=" display:inline; width: 17px;"></div>
				</div>
				<div class="row workout-name" value="`+jsonData[i].workoutNo+`">
			    <strong>`+jsonData[i].workoutName+`</strong>
				</div>
				<div class="row workout_recode_wrap">
				    <div class="row workout-list-wrap">
				        <div class="col-6 workout_recode_box">
				            <input type="checkbox"> <span class="workout_recode" id="workout_recode_set_count">`+jsonData[i].workoutRoundNo+`</span><strong>세트</strong>
				        </div>
				        <div class="col-6 workout_recode_box workout_recode_count" style="cursor: pointer;">
				            <span class="workout_recode">`+jsonData[i].workoutWeight+`</span>
				            <strong>Kg</strong>
				            <strong> X </strong>
				            <span class="workout_recode">`+jsonData[i].workoutCount+`</span>
				            <strong>회</strong>
				        </div>
				    </div>					
				</div>				
				<div class="add_del_box row">
				    <div class="col-6 set_modify_btn"><span class="workout_recode_set_add" style="cursor: pointer;">+ 세트 추가</span></div>
				    <div class="col-6 set_modify_btn"><span class="workout_recode_set_del"style="cursor: pointer;">- 세트 삭제</span></div>
				</div>
            `;
				list_no ++;
				$workoutItem.append($workoutVoid);
			}else{
				
				$workoutItem.querySelectorAll('.workout_recode_void')[list_no-2].querySelector('.workout_recode_wrap').innerHTML += 
					`
				    <div class="row workout-list-wrap">
				        <div class="col-6 workout_recode_box">
				            <input type="checkbox"> <span class="workout_recode" id="workout_recode_set_count">`+jsonData[i].workoutRoundNo+`</span><strong>세트</strong>
				        </div>
				        <div class="col-6 workout_recode_box workout_recode_count" style="cursor: pointer;">
				            <span class="workout_recode">`+jsonData[i].workoutWeight+`</span>
				            <strong>Kg</strong>
				            <strong> X </strong>
				            <span class="workout_recode">`+jsonData[i].workoutCount+`</span>
				            <strong>회</strong>
				        </div>
				    </div>`;
			}
			
			
			
		}
		document.querySelector('.workout-recode-wrap .workout-item-wrap').append($workoutItem);
		
        //이미 기존에 표시되어있는 데이터는 이벤트가 걸려있기 때문에 기존 이벤트 삭제후에 다시 적용
        $('.workout_recode_set_add').off('click',workout_recode_set_add);
        $('.workout_recode_set_del').off('click',workout_recode_set_del);
        $('.workout-del-btn .col-3').off('click',recode_list_del);
        $('.workout_recode_count').off('click',workout_recode_count_open);
        $('.workout_recode_set_add').on('click',workout_recode_set_add);//레코드 추가 이벤트
        $('.workout_recode_set_del').on('click',workout_recode_set_del);//레코드 삭제 이벤트
        $('.workout-del-btn .col-3').on('click',recode_list_del); //레코드 번들 삭제 이벤트
        $('.workout_recode_count').on('click',workout_recode_count_open);
	}
	
	/* 
		받아온 운동 리스트 목록을 뿌려줌
	*/
	function workout_list_expressing(data){
		
		
			//운동목록을 추가한 적이 없으면 가이드 목록으로 넘어갈 수 있도록 해줌
		if(data.length === 0){
			const $temporaryDom = document.createElement('div');
			$temporaryDom.classList.add('workout_title','row');
			$temporaryDom.setAttribute('name','new')
			$temporaryDom.setAttribute('value','')
			$temporaryDom.innerHTML += `
	                <div class="col-2"><input type="checkbox"><img class="display_none" src="${pageContext.request.contextPath}/resources/imgs/delete.png" alt="" style="width:25px;height:25px;margin: 7.5px; cursor: pointer;"></div>
	                <div class="col-9"><span>[목록편집] 버튼으로 운동 추가</span></div>
	                <div class="col-1 display_none"><img class="openModalBtn" src="${pageContext.request.contextPath}/resources/imgs/pen_create.png" style="width:20px;height:20px;margin: 10px 5px; cursor: pointer;"></div>
				`;
			document.querySelector('.workout_bundle[name="가슴"]').querySelector('.workout_title_box').append($temporaryDom);
			console.log('null')
		}else{
			const jsonData = JSON.parse(data);
			for(let i=0; i<jsonData.length; i++){
				const $temporaryDom = document.createElement('div');
				$temporaryDom.classList.add('workout_title','row');
				$temporaryDom.setAttribute('name','saved');
				$temporaryDom.setAttribute('value',jsonData[i].workoutNo)
				$temporaryDom.innerHTML += `
	                
		                <div class="col-2"><input type="checkbox"><img class="display_none" src="${pageContext.request.contextPath}/resources/imgs/delete.png" alt="" style="width:25px;height:25px;margin: 7.5px; cursor: pointer;"></div>
		                <div class="col-9"><span>`+jsonData[i].workoutName+`</span></div>
		                <div class="col-1 display_none"><img class="openModalBtn" src="${pageContext.request.contextPath}/resources/imgs/pen_create.png" style="width:20px;height:20px;margin: 10px 5px; cursor: pointer;"></div>
				`;
				document.querySelector('.workout_bundle[name='+jsonData[i].musclePart+']').querySelector('.workout_title_box').append($temporaryDom);
			}
		}
		// 모달 open 이벤트
        $('.openModalBtn').on('click',open_modal_event);	
        // 모달 확인 버튼 이벤트
        $('#okModalBtn').on('click', okModalBtnClick);
        // 모달 취소 버튼 이벤트
        $('#closeModalBtn').on('click', closeModalBtn); 

		
	}
	/* 
		운동 레코드 추가
	*/
	function workout_recode_add(){
		
		
	}
	
	
	/* 
		main_page로 새로고침 함
	 */
	function main_page_refresh(data){
		location.href = '/app/main';
		
	}
	 
	//========================================//
	//======== AJAX 통신후 실행되는 이벤트 끝========//   
	//========================================//
</script>




