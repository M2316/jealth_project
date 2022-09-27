package net.ddns.jealth.workout;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/app")
public class WorkoutController {
	
	//app/main 화면 요청
	@GetMapping("/main")
	public void appMainAccess(HttpServletRequest request) {
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("userInfo"));
	}
	

}