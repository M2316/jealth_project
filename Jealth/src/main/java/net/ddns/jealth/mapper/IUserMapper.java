package net.ddns.jealth.mapper;

import org.apache.ibatis.annotations.Param;

import net.ddns.jealth.model.UserVO;

public interface IUserMapper {
	//가입
	boolean userInsert(UserVO user);
	
	//유저 확인
	UserVO userCheck(@Param("id") String id); //ID만으로 우선 user가 있는지 check 후 service에서 암호 matches로 대조 함

	//아이디 중복 확인
	int idOverLapCheck(String userId);
	
	//JsessionID, cookiemaxage 업데이트
	void autoLoginInfoUpdate(@Param("userId") String userId,@Param("jSessionId")String jSessionId,@Param("cookieAge")int cookieAge);
	
	//Jsession ID로 user조회하여 session을 만들어준다 [autoLogin]
	UserVO autoLoginCheck(String jSessionId);
}
