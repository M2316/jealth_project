package net.ddns.jealth.user.service;

import net.ddns.jealth.model.UserVO;

public interface IUserService {
	//가입
	boolean userInsert(UserVO user);
	
	//유저 확인
	UserVO userCheck(String userId, String userPw);
	
	//유저 아이디 중복 체크
	String idOverlapCheck(String userId);
	
}
