package net.ddns.jealth;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import net.ddns.jealth.mapper.IUserMapper;
import net.ddns.jealth.model.UserVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MapperTest {
	
	@Autowired
	private IUserMapper userMapper;
	
	@Test
	public void inserTest() {
		UserVO vo = new UserVO();
		for(int i=1; i<=30; i++) {
			vo.setUserId("tester"+i);
			vo.setUserPw("tester"+i);
			vo.setNickname("tester_nick"+i);
			vo.setUserSex(i%2 == 0 ? "M":"W");
			vo.setUserAge(27);
			vo.setBirthday(20191104);
			vo.setWeight(i%2 == 0 ? 75:50);
			vo.setStature(i%2 == 0 ? 180:160);
			vo.setSquatPr(i%2 == 0 ? 140:60);
			vo.setDeadliftPr(i%2 == 0 ? 170:100);
			vo.setBenchpressPr(i%2 == 0 ? 110:40);
			userMapper.userInsert(vo);
		};
	}
	
	@Test
	public void userSelectTest() {
		
		UserVO vo = userMapper.userCheck("tester1", "tester1");
		
		
		System.out.println(vo);
		
	}
	@Test
	public void idOverlapTest() {
		
		int vo = userMapper.idOverLapCheck("tester1");
		System.out.println(vo);
		
	}
	
	
}
