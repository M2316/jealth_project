package net.ddns.jealth.workout.service;

import java.util.List;

import net.ddns.jealth.model.WorkoutVO;

public interface IWorkoutService {
	//날짜별 운동 기록 요청
	List<WorkoutVO> getWorkoutRecode(int selectedDate, String userId);
}
