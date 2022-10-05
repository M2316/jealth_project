package net.ddns.jealth.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class OtherCustomMethods {

	
	public ArrayList<String> getStringToJsonlist(String str){
		str = str.substring(1, str.length()-2);//String으로 넘겨받은 데이터에 앞,뒤 [,] 괄호를 제거함
		int strLength = str.split("}").length; //for문을 돌려줄 횟수를 정해줌
		ArrayList<String> arr = new ArrayList<String>(); //String으로 전달받은 값을 배열에 넣기위해 배열을 먼저 선언
		for(int i=0;i<strLength;i++) {
		    if(i==strLength-1) { //배열 마지막은 } 괄호가 없기 때문에 추가하여 넣어줌
		        arr.add(str+"}");
		        break ;
		    }else {
		        arr.add(i,str.substring(str.indexOf("{"),str.indexOf("}")+1)); //미리 언선되어있는 배열에 짜른 데이터를 추가
		        str = str.substring(str.indexOf("}",0)+2,str.length()); //배열에 데이터를 넣을 때 마다 기존 String에서는 삭제 작업이 이루어짐
		    }
		}	
		return arr;
	}
	
	public ArrayList<Map<String, Object>> getArrayListToMap(ArrayList<String> arr){
		ObjectMapper objMapper = new ObjectMapper(); //hashMap으로 바꿔주는 객체 생성
		ArrayList<Map<String, Object>> arrMap = new ArrayList<Map<String, Object>>(); //HashMap으로 담기위해 객체 생성 
		for(int i=0; i<arr.size();i++) {
			try {
				arrMap.add(objMapper.readValue(arr.get(i), HashMap.class)); //arrayList에 있는 String값을 하나씩 HashMap형태로 변경하여 arrayList에 추가
			} catch (JsonMappingException e) {
				e.printStackTrace();
			} catch (JsonProcessingException e) {
				e.printStackTrace();
			}	
		}
		return arrMap;
	}
	
	public ArrayList<Map<String, Object>> getStringToHashMap(String str){
		ArrayList<String> arr = getStringToJsonlist(str);
		ArrayList<Map<String, Object>> arrMap = getArrayListToMap(arr);
		return arrMap;
	}
}
