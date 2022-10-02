package net.ddns.jealth.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import net.ddns.jealth.model.WorkoutVO;

public interface IWorkoutMapper {

	//날짜별 운동 기록 요청
	List<WorkoutVO> getWorkoutRecode(@Param("selectedDate") int selectedDate,@Param("userId") String userId);
	
	//운동 목록 조회 요청
	List<WorkoutVO> getWorkoutlist(@Param("userId") String userId);
}
