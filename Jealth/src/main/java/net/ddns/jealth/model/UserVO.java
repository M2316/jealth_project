package net.ddns.jealth.model;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class UserVO {
	/*
    user_id VARCHAR2(15 CHAR) NOT NULL,
    user_pw VARCHAR2(50) NOT NULL,
    nickname VARCHAR2(15 CHAR) NOT NULL,
    user_sex VARCHAR2(10),
    user_age NUMBER(2),
    birthday DATE,
    weight NUMBER(3,2),
    stature NUMBER(3,2),
    squat_pr NUMBER(3),
    deadlift_pr NUMBER(3),
    benchpress_pr NUMBER(3),
    user_create_date DATE DEFAULT SYSDATE
    );
	*/
	private String userId;
	private String userPw;
	private String nickname;
	private String userSex;
	private int userAge;
	private int birthday;
	private double weight;
	private double stature;
	private int squatPr;
	private int deadliftPr; 
	private int benchpressPr;
	private Timestamp userCreateDate;
}
