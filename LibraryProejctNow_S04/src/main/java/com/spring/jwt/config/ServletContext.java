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
@ComponentScan(basePackages = {"com.spring.jwt.controller", "com.spring.jwt.interceptor"}) // Interceptor도 스캔
public class ServletContext implements WebMvcConfigurer {

	// Interceptor 등록
	@Autowired
	JwtInterceptor jwtInterceptor;
	
	@Override
	public void addCorsMappings(CorsRegistry registry) { // client에서 header추출이 가능하도록 하기 위해 등록
		log.info("#Interaaa");
		registry.addMapping("/**")
				.allowedOrigins("*")
				.allowedMethods("GET", "POST")
				.allowedHeaders("*")
				.exposedHeaders("jwt-auth-token");
	}
	@Override
	public void addInterceptors(InterceptorRegistry registry) { // 인터셉터 등록
		registry.addInterceptor(jwtInterceptor)
				.addPathPatterns("/**") // Interceptor가 적용될 경로
				.excludePathPatterns(new String[]{"/api/excludePath/**"}); // Interceptor가 적용되지 않을 경로
	}
}