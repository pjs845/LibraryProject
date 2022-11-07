package library.site.service;

import java.util.Date;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import library.site.domain.Member;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;


@Component
public class JwtServiceImpl {
	private String secretKey = "myKey"; // ���� ����� secretKey
	private long exp = 1000L * 60 * 60; // ��ū ��밡�� �ð�, 30��
	
	// ��ū �����ϴ� �޼���
	public String createToken(Member member) { // ��ū�� ������ �� �Ķ���ͷ� ��������
		return Jwts.builder()
				   .setHeaderParam("typ", "JWT") // ��ū Ÿ��
				   .setSubject("memberToken") // ��ū ����
				   .setExpiration(new Date(System.currentTimeMillis() + exp)) // ��ū ��ȿ�ð�
				   .claim("member", member) // ��ū�� ���� ������
				   .signWith(SignatureAlgorithm.HS256, secretKey.getBytes()) // secretKey�� ����Ͽ� �ؽ� ��ȣȭ �˰��� ó��
				   .compact(); // ����ȭ, ���ڿ��� ����
	}
	
	// ��ū�� ��� ������ �������� �޼���
	public Map<String, Object> getInfo(String token) throws Exception {
		Jws<Claims> claims = null;
		try {
			claims = Jwts.parser().setSigningKey(secretKey.getBytes()).parseClaimsJws(token); // secretKey�� ����Ͽ� ��ȣȭ
		} catch(Exception e) {
			throw new Exception();
		}
		
		return claims.getBody();
	}
	
	// interceptor���� ��ū ��ȿ���� �����ϱ� ���� �޼���
	public void checkValid(String token) {
		Jwts.parser().setSigningKey(secretKey.getBytes()).parseClaimsJws(token);
	}
}