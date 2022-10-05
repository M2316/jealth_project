package net.ddns.jealth.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
/*
CREATE TABLE workout_list(
    workout_no NUMBER(4),
    user_id VARCHAR2(15 CHAR) NOT NULL,
    workout_name VARCHAR2(30 CHAR),
    muscle_part VARCHAR2(10 CHAR),
    workout_create_date NUMBER(8)
);
CREATE TABLE workout_recode(
    workout_no NUMBER(4) NOT NULL,
    workout_recode_add_no NUMBER(2) NOT NULL, -- 운동 목록을 추가한 순서
    user_id VARCHAR2(15 CHAR) NOT NULL,
    workout_round_no NUMBER(2) NOT NULL,
    workout_count NUMBER(4),
    workout_weight NUMBER(4),
    workout_date NUMBER(8)
);
*/	
@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class WorkoutVO {
	private String userId;
	private int workoutNo;
	private int workoutRecodeAddNo;
	private String workoutName;
	private String musclePart;
	private int workoutRoundNo;
	private int workoutCount;
	private int workoutWeight;
	private int workoutDate;
	private int workoutCreateDate;
	
}
