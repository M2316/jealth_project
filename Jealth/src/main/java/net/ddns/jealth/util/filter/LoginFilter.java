package net.ddns.jealth.util.filter;

import java.io.IOException;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.web.bind.annotation.CookieValue;

import lombok.extern.java.Log;
import lombok.extern.log4j.Log4j;
import lombok.extern.log4j.Log4j2;
import net.ddns.jealth.model.UserVO;
import net.ddns.jealth.user.service.IUserService;


//app 이라는 요청이 들어오면 무조건 로그인을 확인하도록 설정
public class LoginFilter implements Filter {
	/*
		Slf4j logger
	*/
	private static final Logger logger = LoggerFactory.getLogger(LoginFilter.class);
	
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;
		String requestURI = httpRequest.getRequestURI();
		HttpSession session = httpRequest.getSession();
		logger.info("GET Session Attribute : " + session.getAttribute("userInfo"));
		if(session.getAttribute("userInfo") == null) {
			httpResponse.sendRedirect("/user/userLogin"); // session에 userInfo 데이터가 없다면 로그인 하도록 보냄
			chain.doFilter(request, response); //컨트롤러 실행되는 위치
			
		}else {
			chain.doFilter(request, response); //컨트롤러 실행되는 위치
		}
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

}
