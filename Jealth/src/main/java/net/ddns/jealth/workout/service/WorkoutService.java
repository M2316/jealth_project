package net.ddns.jealth.workout.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.ddns.jealth.mapper.IWorkoutMapper;
import net.ddns.jealth.model.WorkoutVO;

@Service
public class WorkoutService implements IWorkoutService {

	@Autowired
	private IWorkoutMapper mapper;
	
	@Override
	public List<WorkoutVO> getWorkoutRecode(int selectedDate, String userId) {
		
		return mapper.getWorkoutRecode(selectedDate, userId);
	}
	
	
	@Override
	public List<WorkoutVO> getWorkoutlist(String userId) {
		
		return mapper.getWorkoutlist(userId);
	}
	
	@Override
	public void workoutListInsert(WorkoutVO workout) {
		mapper.workoutListInsert(workout);
	}
	
	
	@Override
	public void workoutListUpdate(WorkoutVO workout) {
		mapper.workoutListUpdate(workout);	
	}
	
	
	@Override
	public void workoutListDelete(WorkoutVO workout) {
		mapper.workoutListDelete(workout);
	}
}
