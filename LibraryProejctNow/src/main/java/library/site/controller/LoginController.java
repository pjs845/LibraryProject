package library.site.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import library.site.domain.Member;
import library.site.domain.RentalBook;
import library.site.domain.Seat;
import library.site.service.LoginService;
import library.site.service.NaverSensV2Service;
import library.site.service.SeatService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@AllArgsConstructor
@Log4j
@Controller
@RequestMapping("/")
public class LoginController {
	
	private LoginService loginService;
	private SeatService seatService;
	// �α���
	@PostMapping("login.do")
	public String login(HttpServletRequest request, HttpSession session, Member member, RedirectAttributes ratb) {
		Member memberCheck = loginService.login(member);		
		log.info("##�α��� ����: "+memberCheck);
		

		
		Calendar cal = Calendar.getInstance();
		cal.setTime(new Date());
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		HashMap<String, Object> map = new HashMap<String, Object>();
		try {
			map.put("mem_num", memberCheck.getMem_num());
			map.put("today", df.format(cal.getTime())+" "+"00:00:00");
			session.setAttribute("rez",seatService.selectTimeByMem(map));
			Seat seat1 = seatService.selectTakenAll(seatService.selectTimeByMem(map).getSeat_seq());
			session.setAttribute("seatNum", seat1.getSeat_num());
			int a1 = 0;
			if (seat1.getF_num() == 6) a1 = 1;else if(seat1.getF_num() == 7) a1=2;
			else if(seat1.getF_num() == 8) a1=3;else if(seat1.getF_num() == 9) a1=4;
			session.setAttribute("fNum", a1);
		}catch(NullPointerException ne) {
			session.setAttribute("rez",null);
			session.setAttribute("seatNum", null);
			session.setAttribute("fNum", null);
		}
		
		if(memberCheck == null) {
			session.setAttribute("member", null);
			ratb.addFlashAttribute("loginFail", false);
		}else {			
			session.setAttribute("member", memberCheck);
			
			ratb.addFlashAttribute("loginOk", true);
		}

		//request.setAttribute(name, o);
		return "redirect:/";
	}
	
	// ȸ������
	@PostMapping("signup.do")
	public String signUp(Member member, RedirectAttributes ratb) {
		int i = loginService.signUp(member);
		log.info("## ȸ������ Ȯ�ο� "+i);
		if(i == 1) {
			ratb.addFlashAttribute("singup", true);
		}
		return "redirect:/";
	}
	
	//�̸��� �ߺ� üũ
	@ResponseBody
	@PostMapping("emailcheck.do")
	public int emailCheck(@RequestParam("mem_email") String mem_email) {
		int ec = loginService.emailCheck(mem_email);
		log.info("##�̸��� �ߺ�: "+ec);
		return ec;
	}
	
	//�ڵ��� �ߺ� üũ
	@ResponseBody
	@PostMapping("phonecheck.do")
	public int phoneCheck(@RequestParam("mem_phone") String mem_phone) {
		int pc = loginService.phoneCheck(mem_phone);
		log.info("##����ȣ �ߺ�: "+pc);
		return pc;
	}
	
	//���̵� �ߺ� üũ
	@ResponseBody
	@PostMapping("idcheck.do")
	public int idCheck(@RequestParam("mem_id") String mem_id) {
		int ic = loginService.idCheck(mem_id);
		log.info("##���̵� �ߺ�: "+ic);
		return ic;
	}
	
	// �α׾ƿ�
	@GetMapping("logout.do")
	public String logOut(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	//����������
	@GetMapping("mypage.do")
	public ModelAndView moveMypage(long mem_num, HttpServletRequest request) {
		Member member = loginService.mypage(mem_num);
		
		ModelAndView mav = new ModelAndView("login/mypage", "member", member);
		return mav;
	}
	
	// �ڵ��� �ߺ� üũ(���� ã���)
	@ResponseBody
	@PostMapping("findphonecheck.do")
	public int findPhoneCheck(@RequestParam("mem_phone") String mem_phone) {
		int fpc = loginService.phoneCheck(mem_phone);
		log.info("##����ã�� ����ȣ �ߺ�: "+fpc);
		return fpc;
	}
	
	// �̸��� �ߺ� üũ(�н����� ã���)
	@ResponseBody
	@PostMapping("findpasswordcheck.do")
	public int findPasswordCheck(@RequestParam("mem_email") String mem_email) {
		int fec = loginService.emailCheck(mem_email);
		log.info("##�н����� ã�� �̸��� �ߺ�: "+fec);
		return fec;
	}
	
	
	// ȸ�� Ż�� (Ȩ������ ����)
	@PostMapping("deletenormal.do")
	public String deleteMemberNormal(Member member, HttpSession session) {
		int deleteResult = loginService.deleteMember(member);
		session.invalidate();
		log.info("##Normal���� ���� �Ϸ�!!: "+deleteResult);
		
		return "redirect:/";
	}
	
	// ȸ�� Ż�� �� �ش��̸��Ͽ� ���� ��й�ȣ�� �´��� Ȯ�ο�
	@ResponseBody
	@PostMapping("deletepasswordcheck")
	public int deletePasswordCheck(Member member) {
		int passCheck = loginService.passCheck(member);
		log.info("## ȸ��Ż��� �н����� üũ 1�̸� ����: "+passCheck);
		return passCheck;
	}
	
	// ȸ�� ���� ����
	@PostMapping("updatemember.do")
	public String updatePassword(Member member, RedirectAttributes ratb) {
		int result = loginService.passUpdate(member);
		log.info("## ȸ�� ������ Ȯ�� ����: "+result);
		if(result == 1) {
			ratb.addFlashAttribute("updateOK", true);
		}else {
			ratb.addFlashAttribute("updateFAIL", false);
		}
		return "redirect:/";
	}
}
