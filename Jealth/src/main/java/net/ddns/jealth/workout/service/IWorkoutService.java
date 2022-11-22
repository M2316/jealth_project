package net.ddns.jealth.workout.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import net.ddns.jealth.model.WorkoutVO;

public interface IWorkoutService {
	//날짜별 운동 기록 요청
	List<WorkoutVO> getWorkoutRecode(int selectedDate, String userId);
	
	//운동 목록 조회 요청
	List<WorkoutVO> getWorkoutlist(String userId);

	//운동 목록 추가 요청
	void workoutListInsert(WorkoutVO workout);
	
	//운동 목록 업데이트 요청
	void workoutListUpdate(WorkoutVO workout);
	
	//운동 목록 삭제 요청
	void workoutListDelete(WorkoutVO workout);

	//운동 기록 추가 요청
	void workoutRecodeInsert(WorkoutVO workout);

	//운동 기록 삭제 요청
	void workoutRecodeDelete(WorkoutVO workout);
	
	//운동 기록 업데이트 요청
	void workoutRecodeUpdate(WorkoutVO workout);
	
}
