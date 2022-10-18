// Date 객체 생성
let date = new Date();

const viewYear = date.getFullYear();
const viewMonth = date.getMonth();

const prevMonth = () => {
  date.setMonth(date.getMonth() - 1);
  renderCalendar();
}

const nextMonth = () => {
  date.setMonth(date.getMonth() + 1);
  renderCalendar();
}

const goToday = () => {
  date = new Date();
  renderCalendar();
}

const renderCalendar = () => {
  const viewYear = date.getFullYear();
  const viewMonth = date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1):(date.getMonth()+1);
  const viewDate = date.getDate() < 10 ? '0'+(date.getDate()):(date.getDate());
  // year-month 채우기
  document.querySelector('.year-month').textContent = `${viewYear}년 ${viewMonth}월 ${viewDate}일`;

  // 지난 달 마지막 Date, 이번 달 마지막 Date
  const prevLast = new Date(viewYear, viewMonth, 0);
  const thisLast = new Date(viewYear, viewMonth + 1, 0);

  const PLDate = prevLast.getDate();
  const PLDay = prevLast.getDay();

  const TLDate = thisLast.getDate();
  const TLDay = thisLast.getDay();

  // Dates 기본 배열들
  const prevDates = [];
  const thisDates = [...Array(TLDate + 1).keys()].slice(1);
  const nextDates = [];

  // prevDates 계산
  if (PLDay !== 6) {
    for (let i = 0; i < PLDay + 1; i++) {
      prevDates.unshift(PLDate - i);
    }
  }

  // nextDates 계산
  for (let i = 1; i < 7 - TLDay; i++) {
    nextDates.push(i)
  }

  // Dates 합치기
  const dates = prevDates.concat(thisDates, nextDates);

  // Dates 정리
  const firstDateIndex = dates.indexOf(1);
  const lastDateIndex = dates.lastIndexOf(TLDate);
  dates.forEach((date, i) => {
    const condition = i >= firstDateIndex && i < lastDateIndex + 1
                      ? 'this'
                      : 'other';

    dates[i] = `<div class="date" onclick="click_calendar_date(this)"><div class="date_inner" style="width:30px; text-align:center ;"> <span class="${condition}">${date}</span></div></div>`;
  })

  // Dates 그리기
  document.querySelector('.dates').innerHTML = dates.join('');
  // 오늘 날짜 그리기
  const today = new Date();
  if (viewMonth === (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1):(date.getMonth()+1)) && viewYear === today.getFullYear()) {
    for (let date of document.querySelectorAll('.this')) {
      if (+date.innerText === today.getDate()) {
        date.classList.add('today');
        document.querySelector('.today').parentElement.style = 'border:1px solid black; width:30px; text-align:center ; border-radius:4px';
        break;
      }
    }
  }
}

renderCalendar();


//네비게이션 페이지 이동 이벤트
document.querySelector("#header_box").addEventListener("click",function(e){

  const a = document.querySelectorAll('.header_item');
  for(let i=0; i<a.length;i++){
      a[i].style = 'background:#fff';
      document.querySelectorAll('.header_item p')[i].style = 'color:#707070';
  }


  if(e.target.getAttribute('name') == 'menu1'){
      e.target.parentElement.style= 'background:#AEAEAE';
      e.target.style = 'color:#FFF';
  }else if(e.target.getAttribute('name') == 'menu2'){
      e.target.parentElement.style= 'background:#AEAEAE';
      e.target.style = 'color:#FFF';
  }else if(e.target.getAttribute('name') == 'menu3'){
      e.target.parentElement.style= 'background:#AEAEAE';
      e.target.style = 'color:#FFF';
  }else if(e.target.getAttribute('name') == 'menu4'){
      e.target.parentElement.style= 'background:#AEAEAE';
      e.target.style = 'color :#FFF';
  }
});


function click_calendar_date(e){
  if(document.querySelector('.selected_date') !== null){
	  document.querySelector('.selected_date').classList.remove('selected_date');
  }
  let v = document.querySelectorAll('.date');
  let top_date = document.querySelector('.year-month').innerHTML;
  for(let i=0; i<v.length; i++){
      document.querySelectorAll('.date_inner')[i].style = 'border:none width:30px; text-align:center ;';
  }
  e.children[0].classList.add('selected_date')
  try{
    document.querySelector('.year-month').innerHTML = top_date.substring(0,top_date.indexOf(' ',top_date.indexOf(' ')+1)) + ' ' + (e.querySelector('.this').innerHTML < 10 ? '0'+e.querySelector('.this').innerHTML : e.querySelector('.this').innerHTML)+'일';
  } catch(err){
      return;
  }
  

  
    
  //날짜 길이 통일해 주는 변수(8)
  let selectedDate = top_date.substring(0,top_date.indexOf('년'))+(top_date.substring(top_date.indexOf(' ')+1,top_date.indexOf('월')) <= 9 ? '0'+top_date.substring(top_date.indexOf(' ')+1,top_date.indexOf('월')):top_date.substring(top_date.indexOf(' ')+1,top_date.indexOf('월')))+(e.querySelector('.this').innerHTML <= 9  ? '0'+e.querySelector('.this').innerHTML : e.querySelector('.this').innerHTML);
  console.log("선택 날짜 : "+selectedDate);
//  
//   년 : top_date.substring(0,top_date.indexOf('년'))
//   월 : top_date.substring(top_date.indexOf(' ')+1,top_date.indexOf('월'))
//   일 : e.querySelector('.this').innerHTML
	$.ajax({ // ajax 시작
		type:'get',
		url:'/app/getWorkoutRecode/'+selectedDate,
		dataType:'text',
		success:function(result){
			console.log("통신 성공~!")
			workout_recode_expressing(result);
		},error:function(result){
			alert('서버와 통신 오류! 관리자에게 문의해 주세요~~!');
		}
	}); // ajax 끝
  
//  $.getJSON(
//	`${pageContext.request.contextPath}/app/getWorkoutRecode/${selected_date}`,
//	function(result){
//		console.log(result);
//	}
//  );
  
}



