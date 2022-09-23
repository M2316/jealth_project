package net.ddns.jealth;

import org.junit.Test;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

public class SpringSecurityTest {
	
	@Test
	public void pwSecurityTest() {
		
		String pw = "jungsoo1247!";
		
		PasswordEncoder pwEncoder = new BCryptPasswordEncoder();
		System.out.println("spring security pw : "+pwEncoder.encode(pw));
		
		System.out.println("spring security 인증 : "+pwEncoder.matches("jungsoo1247!", "$2a$10$H3W8tzNr4Z/bhRzlnb7CjuoDPiqa3o7ANhiPNSJqAbF0Rbt574c0O"));
	}
}
