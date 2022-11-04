package com.spring.jwt.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.spring.jwt.interceptor.JwtInterceptor;

import lombok.extern.log4j.Log4j;

@Log4j
@Configuration
@EnableWebMvc
@ComponentScan(basePackages = {"com.spring.jwt.controller", "com.spring.jwt.interceptor"}) // Interceptor�� ��ĵ
public class ServletContext implements WebMvcConfigurer {

	// Interceptor ���
	@Autowired
	JwtInterceptor jwtInterceptor;
	
	@Override
	public void addCorsMappings(CorsRegistry registry) { // client���� header������ �����ϵ��� �ϱ� ���� ���
		log.info("#Interaaa");
		registry.addMapping("/**")
				.allowedOrigins("*")
				.allowedMethods("GET", "POST")
				.allowedHeaders("*")
				.exposedHeaders("jwt-auth-token");
	}
	@Override
	public void addInterceptors(InterceptorRegistry registry) { // ���ͼ��� ���
		registry.addInterceptor(jwtInterceptor)
				.addPathPatterns("/**") // Interceptor�� ����� ���
				.excludePathPatterns(new String[]{"/api/excludePath/**"}); // Interceptor�� ������� ���� ���
	}
}