package net.ddns.jealth.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.ddns.jealth.model.UserVO;
import net.ddns.jealth.model.WorkoutVO;
import net.ddns.jealth.util.OtherCustomMethods;
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
	
	@ResponseBody
	@GetMapping("/getWorkoutlist")
	public List<WorkoutVO> getWorkoutlist(HttpServletRequest request){
		
		HttpSession session = request.getSession();
		String userId = ((UserVO)session.getAttribute("userInfo")).getUserId();
		List<WorkoutVO> workoutList = service.getWorkoutlist(userId);
		
		return workoutList;
	}
//	
//	@ResponseBody
//	@PostMapping("/insertWorkoutList")
//	public void insertWorkoutList(@RequestBody String newWorkoutList) {
//		System.out.println("inserWorkoutList  실행 : "+newWorkoutList);
//	}
	
	
	//운동 목록 추가 요청
	@ResponseBody
	@PostMapping("/insertWorkoutList")
	public void insertWorkoutList(@RequestBody String newWorkoutList, HttpServletRequest request) {
		System.out.println("WorkoutController/inserWorkoutList  실행 : "+newWorkoutList);
		
		OtherCustomMethods ocm = new OtherCustomMethods();
		HttpSession session = request.getSession();
		String userId = ((UserVO)session.getAttribute("userInfo")).getUserId();
		System.out.println("userID : "+userId);
		ArrayList<Map<String, Object>> newWorkoutListArr = ocm.getStringToHashMap(newWorkoutList);
		for(int i=0; i<newWorkoutListArr.size();i++) {
			WorkoutVO workout = new WorkoutVO();
			workout.setUserId(userId);
			workout.setWorkoutNo(Integer.parseInt((String)newWorkoutListArr.get(i).get("workoutNo")));
			workout.setWorkoutName((String)newWorkoutListArr.get(i).get("workoutName"));
			workout.setMusclePart((String)newWorkoutListArr.get(i).get("musclePart"));
			workout.setWorkoutCreateDate(Integer.parseInt((String)newWorkoutListArr.get(i).get("workoutCreateDate")));
			service.workoutListInsert(workout);
		}
	}
	
	
	@ResponseBody
	@PostMapping("/updateWorkoutList")
	public void updateWorkoutList(@RequestBody String updateWorkoutList,HttpServletRequest request) {
		System.out.println("WorkoutController/updateWorkoutList  실행 : "+updateWorkoutList);
		
		OtherCustomMethods ocm = new OtherCustomMethods();
		HttpSession session = request.getSession();
		String userId = ((UserVO)session.getAttribute("userInfo")).getUserId();
		System.out.println("userID : "+userId);
		ArrayList<Map<String, Object>> newWorkoutListArr = ocm.getStringToHashMap(updateWorkoutList);
		for(int i=0; i<newWorkoutListArr.size();i++) {
			WorkoutVO workout = new WorkoutVO();
			workout.setUserId(userId);
			workout.setWorkoutNo(Integer.parseInt((String)newWorkoutListArr.get(i).get("workoutNo")));
			workout.setWorkoutName((String)newWorkoutListArr.get(i).get("workoutName"));
			workout.setMusclePart((String)newWorkoutListArr.get(i).get("musclePart"));
			workout.setWorkoutCreateDate(Integer.parseInt((String)newWorkoutListArr.get(i).get("workoutCreateDate")));
			service.workoutListUpdate(workout);
		}
	}
	@ResponseBody
	@PostMapping("/deleteWorkoutList")
	public void deleteWorkoutList(@RequestBody String deleteWorkoutList,HttpServletRequest request) {
		System.out.println("WorkoutController/deleteWorkoutList  실행 : "+deleteWorkoutList);
		
		OtherCustomMethods ocm = new OtherCustomMethods();
		HttpSession session = request.getSession();
		String userId = ((UserVO)session.getAttribute("userInfo")).getUserId();
		System.out.println("userID : "+userId);
		ArrayList<Map<String, Object>> newWorkoutListArr = ocm.getStringToHashMap(deleteWorkoutList);
		for(int i=0; i<newWorkoutListArr.size();i++) {
			WorkoutVO workout = new WorkoutVO();
			workout.setUserId(userId);
			workout.setWorkoutNo(Integer.parseInt((String)newWorkoutListArr.get(i).get("workoutNo")));
			workout.setWorkoutName((String)newWorkoutListArr.get(i).get("workoutName"));
			workout.setMusclePart((String)newWorkoutListArr.get(i).get("musclePart"));
			workout.setWorkoutCreateDate(Integer.parseInt((String)newWorkoutListArr.get(i).get("workoutCreateDate")));
			service.workoutListDelete(workout);
		}
	}
	@ResponseBody
	@PostMapping("/insertWorkoutRecode")
	public void insertWorkoutRecode(@RequestBody String workoutListJSON,HttpServletRequest request) {
		System.out.println("WorkoutController/insertWorkoutRecode  실행 : "+workoutListJSON);
		
		OtherCustomMethods ocm = new OtherCustomMethods();
		HttpSession session = request.getSession();
		String userId = ((UserVO)session.getAttribute("userInfo")).getUserId();
		System.out.println("userID : "+userId);
		ArrayList<Map<String, Object>> newWorkoutListArr = ocm.getStringToHashMap(workoutListJSON);
		for(int i=0; i<newWorkoutListArr.size();i++) {
			System.out.println("i : "+newWorkoutListArr.get(i));
			WorkoutVO workout = new WorkoutVO();
			workout.setWorkoutNo(Integer.parseInt((String)newWorkoutListArr.get(i).get("workoutNo")));
			workout.setWorkoutRecodeAddNo((int)newWorkoutListArr.get(i).get("workoutRecodeAddNo"));
			workout.setUserId(userId);
			workout.setWorkoutRoundNo((int)newWorkoutListArr.get(i).get("workoutRoundNo"));
			workout.setWorkoutCount((int)newWorkoutListArr.get(i).get("workoutCount"));
			workout.setWorkoutWeight((int)newWorkoutListArr.get(i).get("workoutWeight"));
			workout.setWorkoutDate(Integer.parseInt((String)newWorkoutListArr.get(i).get("workoutDate")));
			service.workoutRecodeInsert(workout);
		}
	}
	@ResponseBody
	@PostMapping("/deleteWorkoutRecode")
	public void deleteWorkoutRecode(@RequestBody String workoutListJSON,HttpServletRequest request) {
		System.out.println("WorkoutController/deleteWorkoutRecode  실행 : "+workoutListJSON);
		
		OtherCustomMethods ocm = new OtherCustomMethods();
		HttpSession session = request.getSession();
		String userId = ((UserVO)session.getAttribute("userInfo")).getUserId();
		System.out.println("userID : "+userId);
		ArrayList<Map<String, Object>> newWorkoutListArr = ocm.getStringToHashMap(workoutListJSON);
		for(int i=0; i<newWorkoutListArr.size();i++) {
			System.out.println("i : "+newWorkoutListArr.get(i));
			WorkoutVO workout = new WorkoutVO();
			workout.setWorkoutNo(Integer.parseInt((String)newWorkoutListArr.get(i).get("workoutNo")));
			workout.setWorkoutRecodeAddNo((int)newWorkoutListArr.get(i).get("workoutRecodeAddNo"));
			workout.setUserId(userId);
			workout.setWorkoutRoundNo((int)newWorkoutListArr.get(i).get("workoutRoundNo"));
			workout.setWorkoutDate(Integer.parseInt((String)newWorkoutListArr.get(i).get("workoutDate")));
			service.workoutRecodeDelete(workout);
		}
	}
	
}