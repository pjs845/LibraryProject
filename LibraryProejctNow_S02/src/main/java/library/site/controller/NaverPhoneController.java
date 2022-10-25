package library.site.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import library.site.service.LoginService;
import library.site.service.NaverSensV2Service;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@Controller
@RequestMapping("/")
public class NaverPhoneController {
	
	private NaverSensV2Service naverSensV2Service;
	@Autowired
	private LoginService loginService;
	
	
	// ȸ������ �� �ڵ��� ����
	@ResponseBody
	@PostMapping("naverphone.do")
	public String phoneCheck(@RequestParam("tel") String tel) {
		String result = naverSensV2Service.send_msg(tel);
		log.info("##���̹��ڵ��� ���� ��Ʈ�ѷ� ��ȣ��: "+result);

		return result;
	}
	
	
	// ���� ã�� �� �ڵ��� ����
	@ResponseBody
	@PostMapping("findphone.do")
	public String findPhone(@RequestParam("tel") String tel) {
		String result = naverSensV2Service.send_msg(tel);
		log.info("##���� ã�� �ڵ��� ���� ��Ʈ�ѷ� ��ȣ��: "+result);
		
		return result;
	}
	
	// ���� ã�� �� �̸��� ã�� ��
	@ResponseBody
	@PostMapping("findemails.do")
	public String checkPhone(@RequestParam("mem_phone") String mem_phone, Model model) {
		String mem_email = loginService.phoneAccount(mem_phone);
		log.info("##���� ã��(�ڵ���) �̸�����: "+mem_email);
		model.addAttribute("findemail", mem_email);
		return mem_email;
	}
}

