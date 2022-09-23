package net.ddns.jealth.user.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.ddns.jealth.model.UserVO;
import net.ddns.jealth.user.service.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {
	/*
		Slf4j logger
	*/
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private IUserService service;
	
	@GetMapping("/userLogin")	//로그인페이지 요청
	public void userLogin() {}
	
	//로그인 시도
	@PostMapping("/loginTry")
	public String loginTry(String userId, String userPw, HttpServletRequest request, HttpServletResponse response, Model model) {
		UserVO user = service.userCheck(userId, userPw);
		
		if(user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("userInfo", user);
			return "redirect:/app/main";
		}else {
			model.addAttribute("msg","loginFail");
			logger.info("loginTry : loginFail");
			return "/user/userLogin";
		}		
	}
	//로그아웃 시도
	@PostMapping("/logoutTry")
	public String logoutTry(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "/user/userLogin";
	}
	
	//회원가입 페이지 요청
	@GetMapping("/userJoin")
	public void userJoin() {}
	
	
	//회원가입시 필요한 ID 중복체크 서비스
	@ResponseBody
	@PostMapping("/userIdOverlapCheck")
	public String userJoinTry(@RequestBody Map<String, String> id) {
		String userId = id.get("userId");
		String msg = service.idOverlapCheck(userId);
		System.out.println(userId);
		return msg;
	}
	
	@PostMapping("/userJoinTry")
	public String userJoinTry(UserVO user,Model model) {
		logger.info("userJoinTry"+user);
		if(service.userInsert(user)) {
			model.addAttribute("msg","JoinSuccess");
		}else{
			model.addAttribute("msg","JoinFail");
		};
		return "redirect:/user/userLogin";
	}
	
}

