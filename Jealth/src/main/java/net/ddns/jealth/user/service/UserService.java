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

	@Override
	public boolean userInsert(UserVO user) {
		return mapper.userInsert(user);
	}

	@Override
	public UserVO userCheck(String userId, String userPw) {
		System.out.println("userservice value : id =" + userId + " pw = " + userPw);
		UserVO vo = mapper.userCheck(userId, userPw);
		return vo;
		
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

}
