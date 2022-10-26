package library.site.service;

import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

import lombok.extern.log4j.Log4j;

@Log4j
@Component
public class MailSendService {
	
	@Autowired
	private JavaMailSenderImpl mailSender;	//������ ������ ��ũ�� ����
	private int authNumber;
	
	public void makeRandomNumber() {
		// 6�ڸ� ���� 
		Random r = new Random();
		int checkNum = r.nextInt(888888)+111111;
		log.info("##�������� ��������: "+checkNum);
		authNumber = checkNum;		
	}
	
	//�̸��� ���� ���
	public String joinEmail(String mem_email) {
		makeRandomNumber();
		String setFrom = ".com";
		String toMail = mem_email;
		String title = "[����������]�� ��й�ȣ ã�� ���������Դϴ�"; //�̸��� ����
		String content = "Ȩ�������� �湮���ּż� �����մϴ�."+
					"<br/><br/>"+"������ȣ�� ["+ authNumber +"] �Դϴ�."+
				"<br/>"+
					"�ش� ������ȣ�� ������ȣ Ȯ�ζ��� �����Ͽ� �ּ���.";
		
		mailSend(setFrom, toMail, title, content);
		return Integer.toString(authNumber);
	}
	
	//�̸��� ���� �޼ҵ�
	public void mailSend(String setFrom, String toMail, String title, String content) {
		MimeMessage message = mailSender.createMimeMessage();
		
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(content, true);
			mailSender.send(message);
			
		}catch(MessagingException me) {
			log.info("##���� ���� ����401: "+me);
		}
	}
}
