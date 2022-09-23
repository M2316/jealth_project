package net.ddns.jealth.workout;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/app")
public class WorkoutController {
	
	//app/main 화면 요청
	@GetMapping("/main")
	public void appMainAccess() {}
	

}