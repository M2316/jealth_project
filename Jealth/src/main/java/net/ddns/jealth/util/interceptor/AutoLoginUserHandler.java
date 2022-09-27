package net.ddns.jealth.util.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;

import net.ddns.jealth.mapper.IUserMapper;
import net.ddns.jealth.model.UserVO;

public class AutoLoginUserHandler implements HandlerInterceptor {

	private static final Logger logger = LoggerFactory.getLogger(AutoLoginUserHandler.class);
	
	@Autowired
	private IUserMapper mapper;
	
	
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		try {
			Cookie[] Cookies = request.getCookies();
			logger.info("INTERCEPTER 작동 !!!!!! Auto Session 작업~!");
			for(Cookie c : Cookies) {
				if(c.getName().equals("autoLogin")) {
					String autoLogin = c.getValue();
					UserVO user = mapper.autoLoginCheck(autoLogin);
					logger.info("검색된 user : "+user.getUserId());
					HttpSession session = request.getSession();
					session.setAttribute("userInfo", user);
					response.sendRedirect("/app/main");
					return true;
				}
			}
			
		} catch (NullPointerException e) {
			System.out.println("NullPointerException");
		}
		return true;
	}

}
