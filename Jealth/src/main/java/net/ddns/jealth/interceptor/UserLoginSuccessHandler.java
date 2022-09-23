package net.ddns.jealth.interceptor;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import net.ddns.jealth.model.UserVO;
import net.ddns.jealth.user.service.IUserService;

public class UserLoginSuccessHandler implements HandlerInterceptor {

	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
		ModelAndView modelAndView) throws IOException {
		System.out.println("user Login 인터샙터 작동");
		
		ModelMap mv = modelAndView.getModelMap();
		UserVO vo = (UserVO)mv.get("user");
		System.out.println( "interceptor vo : " + vo);
		
		if(vo != null) {
			System.out.println(vo.getUserId() + "님 로그인 성공!!");
			HttpSession session = request.getSession();
			session.setAttribute("userInfo", vo);
			response.sendRedirect(request.getContextPath()+"/workout/main");
		}else {
			modelAndView.addObject("msg","loginFail");
			modelAndView.setViewName("/user/userLogin");
		}
	}
}
