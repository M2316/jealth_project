package net.ddns.jealth.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import net.ddns.jealth.mapper.IUserMapper;
import net.ddns.jealth.model.UserVO;

@Service
public class UserService implements IUserService {
	
	@Autowired
	private IUserMapper mapper;
	
	private PasswordEncoder encoder = new BCryptPasswordEncoder();
	
	@Override
	public boolean userInsert(UserVO user) {
		
		user.setUserPw(encoder.encode(user.getUserPw()));
		return mapper.userInsert(user);
	}

	@Override
	public UserVO userCheck(String userId, String userPw) {
		System.out.println("userservice value : id =" + userId + " pw = " + userPw);
		UserVO vo = mapper.userCheck(userId);
		try {
			boolean matchesPw = encoder.matches(userPw, vo.getUserPw());		
			System.out.println(matchesPw);
		if(matchesPw) {
			return vo;
		}else {
			return null;
		}
		
		} catch (Exception e) {
			return null;
		}
		
	}

	@Override
	public String idOverlapCheck(String userId) {
		if(mapper.idOverLapCheck(userId) == 0) {
			return "idAvailable";
		}
		else {
			return "idOverlap";
		}
	}
	
	
	@Override
	public void autoLoginInfoUpdate(String userId,String jSessionId,int cookieAge){
		System.out.println("service : " + cookieAge);
		mapper.autoLoginInfoUpdate(userId, jSessionId, cookieAge);
	}
	
	@Override
	public UserVO autoLoginCheck(String jSessionId) {
		UserVO user = mapper.autoLoginCheck(jSessionId);
		return user;
	}
}
