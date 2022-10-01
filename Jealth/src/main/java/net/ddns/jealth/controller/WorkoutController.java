package net.ddns.jealth.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.ddns.jealth.model.UserVO;
import net.ddns.jealth.model.WorkoutVO;
import net.ddns.jealth.workout.service.IWorkoutService;

@Controller
@RequestMapping("/app")
public class WorkoutController {
	
	

	/*
		Slf4j logger
	*/
	private static final Logger logger = LoggerFactory.getLogger(WorkoutController.class);
	
	@Autowired
	private IWorkoutService service;
	
	
	//app/main 화면 요청
	@GetMapping("/main")
	public void appMainAccess(HttpServletRequest request) {
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("userInfo"));
	}
	
	@ResponseBody
	@GetMapping("/getWorkoutRecode/{selectedDate}")
	public List<WorkoutVO> getWorkoutRecode(@PathVariable int selectedDate,HttpServletRequest request){
		
		logger.info("선택한 날짜 : " + selectedDate);
		HttpSession session = request.getSession();
		UserVO userInfo = (UserVO)session.getAttribute("userInfo");
		System.out.println(userInfo.getUserId());
		List<WorkoutVO> workoutList = service.getWorkoutRecode(selectedDate, userInfo.getUserId());
		System.out.println("workoutList Size : "+workoutList.size());
		System.out.println("workoutList : "+workoutList);
		for(int i=0; i<workoutList.size(); i++) {
			
		}
		return workoutList;
	}

}