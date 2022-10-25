package library.site.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.github.scribejava.core.exceptions.OAuthConnectionException;
import com.github.scribejava.core.exceptions.OAuthException;
import com.github.scribejava.core.model.OAuth2AccessToken;

import library.site.domain.Member;
import library.site.domain.NaverLoginBO;
import library.site.service.LoginService;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/")
public class NaverController {
	
	@Setter(onMethod_=@Autowired)
	private LoginService loginService;
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;
	
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}
	
	//���̹� �α��� ���� ��ū
	@RequestMapping(value = "naverlogin.do", method = { RequestMethod.GET, RequestMethod.POST })
	public @ResponseBody String naverLogin(HttpSession session, Model model) {
		String resultU = naverLoginBO.getAuthorizationUrl(session);
		log.info("##���̹� �α���: "+resultU);
		model.addAttribute("naveraccessurl", resultU);
		return resultU;
	}
	//���̹� �α��� 
	@RequestMapping(value = "callback.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String callback(String code, String state, HttpSession session, Model model, RedirectAttributes ratb) throws IOException, ParseException, OAuthException {
		log.info("##���̹� �α��� �ݹ�@@@");
		
		OAuth2AccessToken oauthToken;
		oauthToken = naverLoginBO.getAccessToken(session, code, state);

		log.info("##���̹� �α��� �ݹ�2@@@");
		//log.info("##���̹� �α��� ����� �ݹ�state"+state);
		//log.info("##���̹� �α��� ����� �ݹ�oauthToken"+oauthToken);
		try {
			apiResult = naverLoginBO.getUserProfile(oauthToken);
			log.info("##���̹� �α��� ����� �ݹ�apiResult"+apiResult);
			
			JSONParser parser = new JSONParser();
			Object obj = parser.parse(apiResult);
			log.info("##���̹� �α��� obj: " + obj);
			JSONObject jsonObj = (JSONObject) obj;
			
			JSONObject response_obj = (JSONObject) jsonObj.get("response");
		
			String access_token = oauthToken.getAccessToken(); //��ū

			log.info("##���̹� �α���response_obj?" + response_obj);
			
			// response�� nickname�� �Ľ�
			String id = (String) response_obj.get("id");
			String name = (String) response_obj.get("name");
			String mem_email = (String) response_obj.get("email");
			String mobile = (String) response_obj.get("mobile");
			String profile_image = (String) response_obj.get("profile_image");
			String nickname = (String) response_obj.get("nickname");
			String uuid = UUID.randomUUID().toString();
			String pass = uuid.substring(0, 8); // ù��° - ������ �ʹ� ��
	
			log.info("##���̹� ����: "+pass+", "+id+", "+name+", "+mem_email+", "+mobile+", "+profile_image+", "+nickname);
			String str_result = access_token.replaceAll("\\\"","");
			Member member = new Member();
			member.setMem_email(mem_email);
			member.setMem_pass(pass);
			member.setMem_phone(mobile);
			if(nickname == null) {
				nickname = "���̹�ȸ��";
			}
			member.setMem_id(nickname);
			member.setMem_name(name);
			int p = loginService.emailCheck(mem_email);
			log.info("##���̹� p: "+p);
			if(p == 0) {
				loginService.NaverSignUp(member);
				log.info("##���̹� ȸ������1");
				member.setMem_email(mem_email);
				member.setMem_pass(pass);
				Member mc = loginService.login(member);
				log.info("##���̹� �α��� ��1str_result: "+str_result);
				if(mc == null) {
					session.setAttribute("member", null);
				}else {
					session.setAttribute("member", mc);
					session.setAttribute("access_token", str_result);
					ratb.addFlashAttribute("naverloginOk", true);
				}
			}else if(p == 1){
				log.info("##���̹� �α��� ��");
				member.setMem_email(mem_email);
				Member naverPass = loginService.naverLogin(mem_email);
				String passs = naverPass.getMem_pass();
				log.info("##���̹� �α��� ��2passs: "+passs);
				log.info("##���̹� �α��� ��2str_result: "+str_result);
				member.setMem_pass(passs);
				Member mc = loginService.login(member);
				if(mc == null) {
					session.setAttribute("member", null);
				}else {
					session.setAttribute("member", mc);
					session.setAttribute("access_token", str_result);
					ratb.addFlashAttribute("naverloginOk", true);
				}
			}
		}catch(NullPointerException npe) {
			log.info("���̹� �α��� ����npe: "+npe);
		}
		return "redirect:/";
		
	}
	
	//
	@PostMapping("deletenaver.do")
	public String deleteMemberNormal(String mem_email, HttpSession session) {
		int deleteResult = loginService.deleteNaverMember(mem_email);
		//session.invalidate();
		log.info("##NAVER���� ���� �Ϸ�!!: "+deleteResult);
		
		return "redirect:/";
	}
	
	
	// ���̹� ��ū ���� 
	@GetMapping("naverResign.do")
	public String removeToken(HttpSession session, HttpServletRequest request, Model model) {
		System.out.println("##���̹� ��ū ���� üũ��");
		Object obj = session.getAttribute("access_token");
		String token = (String)obj;
		System.out.println("##���̹� ��ū ���� üũ��token: "+token);
		try {
			String apiUrl = "https://nid.naver.com/oauth2.0/token?grant_type=delete&client_id=vSlofBxQX99H8_JaGUi4&client_secret=HQCK10Io_W&access_token="
			+token.replaceAll("'", "")+"&service_provider=NAVER";
			
			System.out.println("##���̹� ��ū ���� apiUrl: "+apiUrl);
			String res = requestToServer(apiUrl);
			model.addAttribute("res", res);
			session.invalidate();
		}catch(IOException ie) {
			System.out.println("##���̹� ��ū ���� ����[ie]: "+ie);
		}
		return "index";
	}
	
	// ȸ��Ż�� �� ��ū ���ֱ� �޼ҵ� ���� 1
	private String requestToServer(String apiURL) throws IOException {
		return requestToServer(apiURL, null);
	}
	
	// ȸ��Ż�� �� ��ū ���ֱ� �޼ҵ� ���� 2
	private String requestToServer(String apiURL, String headerStr) throws IOException{
		
		URL url = new URL(apiURL);
		HttpURLConnection con = (HttpURLConnection)url.openConnection();
		con.setRequestMethod("GET");
		System.out.println("##���̹� ���� �� headerStr: "+headerStr);
		if(headerStr != null && !headerStr.equals("")) {
			con.setRequestProperty("Authorization", headerStr);
		}
		int responseCode = con.getResponseCode();
		BufferedReader br;
		System.out.println("##���̹� ���� �� responseCode: "+responseCode);
		if(responseCode == 200) {	//���� ȣ�� [200]
			br = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"));
		}else {
			br = new BufferedReader(new InputStreamReader(con.getErrorStream(), "utf-8"));
		}
		String inputLine;
		StringBuffer res = new StringBuffer();
		while ((inputLine = br.readLine()) != null) {
			res.append(inputLine);
		}
		br.close();
		if(responseCode == 200) {
			String new_res=res.toString().replaceAll("&#39;", "");
			return new_res;
		}else{
			return null;
		}
			
		
	}
}
