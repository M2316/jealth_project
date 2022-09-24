package net.ddns.jealth.util.interceptor;

import java.io.IOException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import net.ddns.jealth.mapper.IUserMapper;
import net.ddns.jealth.model.UserVO;

public class AutoLoginUserHandler implements HandlerInterceptor {

	private static final Logger logger = LoggerFactory.getLogger(AutoLoginUserHandler.class);
	
	@Autowired
	private IUserMapper mapper;
	
	
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
//		Cookie[] Cookies = request.getCookies();
//		String jSessionId ;
//		logger.info("INTERCEPTER 작동 !!!!!! Auto Session 작업~!");
//		for(Cookie c : Cookies) {
//			if(c.getName() == "JSESSIONID") {
//				jSessionId = c.getValue();
//				UserVO user = mapper.autoLoginCheck(jSessionId);
//				HttpSession session = request.getSession();
//				session.setAttribute("userInfo", user);
//				return true;
//			}
//		}
//		logger.info("request : " + request);
//		logger.info("request.getCookies() : " + request.getCookies());
//		logger.info("Cookies : " + Cookies);
		return true;
	}
	
	
//	@Override
//	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
//		ModelAndView modelAndView) throws IOException {
//
//		
//		Cookie[] Cookies = request.getCookies();
////		String jSessionId ;
////		logger.info("INTERCEPTER 작동 !!!!!! Auto Session 작업~!");
////		for(Cookie c : Cookies) {
////			if(c.getName() == "JSESSIONID") {
////				jSessionId = c.getValue();
////				UserVO user = mapper.autoLoginCheck(jSessionId);
////				HttpSession session = request.getSession();
////				session.setAttribute("userInfo", user);
////				return;
////			}
////		}	
//		logger.info("request.getCookies() : " + request.getCookies());
//		logger.info("Cookies : " + Cookies);
//		logger.info("request.getCookies() : " + request.getCookies());
//		logger.info("request.getCookies() : " + request.getCookies());
//	}
	
	
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		Cookie[] Cookies = request.getCookies();
//		String jSessionId ;
//		logger.info("INTERCEPTER 작동 !!!!!! Auto Session 작업~!");
//		for(Cookie c : Cookies) {
//			if(c.getName() == "JSESSIONID") {
//				jSessionId = c.getValue();
//				UserVO user = mapper.autoLoginCheck(jSessionId);
//				HttpSession session = request.getSession();
//				session.setAttribute("userInfo", user);
//				return true;
//			}
//		}
		logger.info("request : " + request);
		logger.info("request.getCookies() : " + request.getCookies());
		logger.info("Cookies : " + Cookies);
		HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
	}
}
