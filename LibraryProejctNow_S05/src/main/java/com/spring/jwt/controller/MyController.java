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
	@PostMapping("/getUser") // ��ū�� ����ִ� ����� ������ ����, ��ū�� �ʿ��� ���
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
	
	@PostMapping("/excludePath/login") // �α���, ��ū�� �ʿ����� �ʴ� ���
	public String login(@RequestBody Member member, HttpServletResponse response,HttpServletRequest request) {
		log.info("#xxx" + member);
		try {
			Member DBMember = new Member(); // ������ DB�� ����Ǿ� �ִ� ����� ���� �����;� �ϴ� �κ�
			DBMember.setMem_id("rhemddj");
			DBMember.setMem_pass("12345");
			
			if(DBMember.getMem_id().equals(member.getMem_id()) && DBMember.getMem_pass().equals(member.getMem_pass())) { // ��ȿ�� ������� ���
				log.info("����");
				String token = jwtService.createToken(member); // ����� ������ ��ū ����
				log.info(token);
				log.info(jwtService.getInfo(token));
				
				response.setHeader("jwt-auth-token", token); // client�� token ����
				
				//response.setHeader("aa", "hohoho");
				return token;
//				return new ResponseEntity<Object>("login Success", HttpStatus.OK);
			} else {
				log.info("����");
				return "����";
//				return new ResponseEntity<Object>("login Fail", HttpStatus.OK);
			}
		} catch(Exception e) {
			return "����";
//			return new ResponseEntity<Object>(null, HttpStatus.CONFLICT);
		}
	}
}