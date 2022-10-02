package net.ddns.jealth;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import net.ddns.jealth.mapper.IUserMapper;
import net.ddns.jealth.mapper.IWorkoutMapper;
import net.ddns.jealth.model.UserVO;
import net.ddns.jealth.model.WorkoutVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MapperTest {
	
	@Autowired
	private IWorkoutMapper workoutMapper;
	
	@Autowired
	private IUserMapper userMapper;
	
	private PasswordEncoder encoder = new BCryptPasswordEncoder();
	
	@Test
	public void inserTest() {
		UserVO vo = new UserVO();
		vo.setUserId("test");
		vo.setUserPw(encoder.encode("qwerqwer"));
		vo.setNickname("tester_nick");
		vo.setUserSex("M");
		vo.setUserAge(27);
		vo.setBirthday(20191104);
		vo.setWeight(75);
		vo.setStature(180);
//		vo.setSquatPr(null);
//		vo.setDeadliftPr(null);
//		vo.setBenchpressPr(null);
		userMapper.userInsert(vo);
//		for(int i=1; i<=30; i++) {
//			vo.setUserId("test"+i);
//			vo.setUserPw(encoder.encode("qwerqwer"+i));
//			vo.setNickname("tester_nick"+i);
//			vo.setUserSex(i%2 == 0 ? "M":"W");
//			vo.setUserAge(27);
//			vo.setBirthday(20191104);
//			vo.setWeight(i%2 == 0 ? 75:50);
//			vo.setStature(i%2 == 0 ? 180:160);
//			vo.setSquatPr(i%2 == 0 ? 140:60);
//			vo.setDeadliftPr(i%2 == 0 ? 170:100);
//			vo.setBenchpressPr(i%2 == 0 ? 110:40);
//			userMapper.userInsert(vo);
//		};
	}
	
	@Test
	public void userSelectTest() {
		
		UserVO vo = userMapper.userCheck("tester1");
		
		
		System.out.println(vo);
		
	}
	@Test
	public void idOverlapTest() {
		
		int vo = userMapper.idOverLapCheck("tester1");
		System.out.println(vo);
		
	}
	@Test
	public void getWorkoutList() {
		List<WorkoutVO> vo = workoutMapper.getWorkoutRecode("qwe123","1"); 
		for(WorkoutVO e : vo) {
			System.out.println(e);
		}
	}
	
	@Test
	public void testmathod() {
		/*
		 * String newWorkoutList =
		 * "[{\"workoutNo\":6,\"workoutName\":\"what's your workout name?\",\"muscle_part\":\"가슴\",\"workout_create_date\":\"20221003\"},{\"workoutNo\":6,\"workoutName\":\"what's your workout name?\",\"muscle_part\":\"가슴\",\"workout_create_date\":\"20221003\"},{\"workoutNo\":6,\"workoutName\":\"what's your workout name?\",\"muscle_part\":\"가슴\",\"workout_create_date\":\"20221003\"},{\"workoutNo\":6,\"workoutName\":\"what's your workout name?\",\"muscle_part\":\"가슴\",\"workout_create_date\":\"20221003\"}]"
		 * ; newWorkoutList = newWorkoutList.substring(1, newWorkoutList.length()-1);
		 * System.out.println(newWorkoutList);
		 * 
		 * System.out.println(a.length); for(int i=0;i<a.length;i++) {
		 * System.out.println(a[i]); System.out.println(a[i].length()); }
		 */
		
		   //1. Json 문자열
        String strJson = "{\"userId\":\"sim\", "
                        + "\"userPw\":\"simpw\","
                        + "\"userInfo\":{"
                            + "\"age\":50,"
                            + "\"sex\":\"male\""
                            + "}"
                        + "}";
        
        //2. Parser
        jacKSON jsonParser = new JSONParser();
        
        //3. To Object
        Object obj = jsonParser.parse(strJson);
        
        //4. To JsonObject
        JSONObject jsonObj = (JSONObject) obj;
        
        //print
        System.out.println(jsonObj.get("userId")); //sim
        System.out.println(jsonObj.get("userPw")); //simpw
        System.out.println(jsonObj.get("userInfo")); // {"sex":"male","age":50}
 
	}
	
}
