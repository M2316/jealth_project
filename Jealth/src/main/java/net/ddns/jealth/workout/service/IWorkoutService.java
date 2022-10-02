package net.ddns.jealth.workout.service;

import java.util.List;

import net.ddns.jealth.model.WorkoutVO;

public interface IWorkoutService {
	//날짜별 운동 기록 요청
	List<WorkoutVO> getWorkoutRecode(int selectedDate, String userId);
	
	//운동 목록 조회 요청
	List<WorkoutVO> getWorkoutlist(String userId);
	
}
