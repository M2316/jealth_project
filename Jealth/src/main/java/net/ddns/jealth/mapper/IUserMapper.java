package net.ddns.jealth.mapper;

import org.apache.ibatis.annotations.Param;

import net.ddns.jealth.model.UserVO;

public interface IUserMapper {
	//가입
	boolean userInsert(UserVO user);
	
	//유저 확인
	UserVO userCheck(@Param("id") String id,@Param("pw") String pw);

	int idOverLapCheck(String userId);
}
