package com.spring.jwt.controller;

import java.io.PrintWriter;
import java.sql.Time;
import java.util.Enumeration;
import java.util.Map;
import java.util.Timer;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import library.site.domain.Member;
import library.site.service.JwtServiceImpl;
import lombok.extern.log4j.Log4j;

@Log4j
@RestController
@CrossOrigin("*")
@RequestMapping("/api")
public class MyController {
	
	@Autowired
	JwtServiceImpl jwtService;
	
	@ResponseBody
	@PostMapping("/getUser") // 토큰에 담겨있는 사용자 정보를 리턴, 토큰이 필요한 경로
	public ResponseEntity<Object> getUser(@RequestBody String data) {
		
		JsonParser parser = new JsonParser();
		JsonElement element = parser.parse(data);
		JsonObject jsonObject = element.getAsJsonObject();
		String token = jsonObject.get("tokenData").getAsString();
		log.info(token);
		try {
			
			Map<String, Object> tokenInfoMap = jwtService.getInfo(token);
			
			Member member = new ObjectMapper().convertValue(tokenInfoMap.get("member"), Member.class);
			
			return new ResponseEntity<Object>(member, HttpStatus.OK);
		} catch(Exception e) {
			
			return new ResponseEntity<Object>(null, HttpStatus.CONFLICT);
		}
	}
	
	@PostMapping("/excludePath/login") // 로그인, 토큰이 필요하지 않는 경로
	public String login(@RequestBody Member member, HttpServletResponse response,HttpServletRequest request) {
		log.info("#xxx" + member);
		try {
			Member DBMember = new Member(); // 원래는 DB에 저장되어 있는 사용자 정보 가져와야 하는 부분
			DBMember.setMem_id("rhemddj");
			DBMember.setMem_pass("12345");
			
			if(DBMember.getMem_id().equals(member.getMem_id()) && DBMember.getMem_pass().equals(member.getMem_pass())) { // 유효한 사용자일 경우
				log.info("성공");
				String token = jwtService.createToken(member); // 사용자 정보로 토큰 생성
				log.info(token);
				log.info(jwtService.getInfo(token));
				
				response.setHeader("jwt-auth-token", token); // client에 token 전달
				
				//response.setHeader("aa", "hohoho");
				return token;
//				return new ResponseEntity<Object>("login Success", HttpStatus.OK);
			} else {
				log.info("실패");
				return "실패";
//				return new ResponseEntity<Object>("login Fail", HttpStatus.OK);
			}
		} catch(Exception e) {
			return "실패";
//			return new ResponseEntity<Object>(null, HttpStatus.CONFLICT);
		}
	}
}