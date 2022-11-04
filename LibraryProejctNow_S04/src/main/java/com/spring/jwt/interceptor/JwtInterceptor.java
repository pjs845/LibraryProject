package com.spring.jwt.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import library.site.service.JwtServiceImpl;



@Component
public class JwtInterceptor implements HandlerInterceptor {
	
	
	@Autowired
	private JwtServiceImpl jwtService;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		if(request.getMethod().equals("OPTIONS")) { // preflight�� �Ѿ�� options�� ���
			return true;
		} else {
			String token = request.getHeader("jwt-auth-token"); // client���� ��û�� �� header�� �־�� "jwt-auth-token"�̶�� Ű ���� Ȯ��
			if(token != null && token.length() > 0) {
				jwtService.checkValid(token); // ��ū ��ȿ�� ����
				return true;
			} else { // ��ȿ�� ������ū�� �ƴ� ���
				throw new Exception("��ȿ�� ������ū�� �������� �ʽ��ϴ�.");
			}
		}
	}
}
