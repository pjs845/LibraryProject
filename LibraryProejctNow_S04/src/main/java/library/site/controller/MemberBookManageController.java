package library.site.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import library.site.domain.BookFavoriteListResult;
import library.site.domain.BookRequestListResult;
import library.site.domain.LibraryBook;
import library.site.domain.Member;
import library.site.domain.RentalBook;
import library.site.domain.RentalBookDAO;
import library.site.domain.RentalBookListResult;
import library.site.service.MemberBookService;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/bookManage")
public class MemberBookManageController {
	
	@Autowired
	private MemberBookService mbService;
	
	@RequestMapping(value = "/library", method = RequestMethod.GET)
	public ModelAndView rental_manage(HttpServletRequest request, HttpSession session, RedirectAttributes ratb,
			long mem_num) {		
		ModelAndView mv = null;
		Object memberObj = session.getAttribute("member");
		if(memberObj != null) { //로그인 상태
			Map<String, Object> map = new HashMap<String, Object>();				
			RentalBookListResult rentalList = mbService.getRBLR(1, 6, mem_num);
			BookRequestListResult requestList = mbService.getBRLR(1, 6, mem_num);
			BookFavoriteListResult favoriteList = mbService.getBFLR(1, 6, mem_num);			
			map.put("rentalList", rentalList);
			map.put("requestList", requestList);
			map.put("favoriteList", favoriteList);
			mv= new ModelAndView("/book_manage", "map", map);
			return mv;		
		}else { //비로그인 상태
			request.setAttribute("msg", "로그인이 필요합니다.");
			request.setAttribute("url", "/");
			mv = new ModelAndView("alert", "", "");
			return mv;
		}				
	}
	
	@GetMapping("/ajax/library/rental")
	public @ResponseBody HashMap<String, Object> ajax_rental_manage(HttpServletRequest request, HttpSession session,
			int category, long mem_num) {		
		String cpStr = request.getParameter("cp");
		String psStr = request.getParameter("ps");		
		
		//(1) cp 
		int cp = 1; // 현재페이지 초기화
		if(cpStr != "") {
			cpStr = cpStr.trim();
			cp = Integer.parseInt(cpStr);
		}		
		
		//(2) ps 
		int ps = 6; // 페이지 사이즈 초기화
		if(psStr != "") {
			psStr = psStr.trim();
			ps = Integer.parseInt(psStr);
		}		

		//(3) ModelAndView 
		HashMap<String, Object> listResult = new HashMap<String, Object>();
		RentalBookListResult rentalList = mbService.getRBLR(cp, ps, mem_num);				
				
		listResult.put("rentalList", rentalList);		
		if(rentalList.getItems().size()==0) {
			if(cp > 1) {				
				rentalList = mbService.getRBLR(cp-1, ps, mem_num);				
				listResult.put("rentalList", rentalList);		
				return listResult;
			}
			else { 
				return listResult;
			}
		}else {			
			return listResult;
		}
	}
	
	@GetMapping("/ajax/library/request")
	public @ResponseBody HashMap<String, Object> ajax_request_manage(HttpServletRequest request, HttpSession session,
			int category, long mem_num) {		
		String cpStr = request.getParameter("cp");
		String psStr = request.getParameter("ps");		
		
		//(1) cp 
		int cp = 1; // 현재페이지 초기화
		if(cpStr != "") {
			cpStr = cpStr.trim();
			cp = Integer.parseInt(cpStr);
		}		
		
		//(2) ps 
		int ps = 6; // 페이지 사이즈 초기화
		if(psStr != "") {
			psStr = psStr.trim();
			ps = Integer.parseInt(psStr);
		}		

		//(3) ModelAndView 
		HashMap<String, Object> listResult = new HashMap<String, Object>();		
		BookRequestListResult requestList = mbService.getBRLR(cp, ps, mem_num);
				
		listResult.put("requestList", requestList);		
		if(requestList.getItems().size()==0) {
			if(cp > 1) {				
				requestList = mbService.getBRLR(cp-1, ps, mem_num);	
				listResult.put("requestList", requestList);		
				return listResult;
			}
			else { 
				return listResult;
			}
		}else {			
			return listResult;
		}
	}
	
	@GetMapping("/ajax/library/favorite")
	public @ResponseBody HashMap<String, Object> ajax_favorite_manage(HttpServletRequest request, HttpSession session,
			int category, long mem_num) {		
		String cpStr = request.getParameter("cp");
		String psStr = request.getParameter("ps");		
		
		//(1) cp 
		int cp = 1; // 현재페이지 초기화
		if(cpStr != "") {
			cpStr = cpStr.trim();
			cp = Integer.parseInt(cpStr);
		}		
		
		//(2) ps 
		int ps = 6; // 페이지 사이즈 초기화
		if(psStr != "") {
			psStr = psStr.trim();
			ps = Integer.parseInt(psStr);
		}		

		//(3) ModelAndView 
		HashMap<String, Object> listResult = new HashMap<String, Object>();				
		BookFavoriteListResult favoriteList = mbService.getBFLR(cp, ps, mem_num);
				
		listResult.put("favoriteList", favoriteList);		
		if(favoriteList.getItems().size()==0) {
			if(cp > 1) {				
				favoriteList = mbService.getBFLR(cp-1, ps, mem_num);	
				listResult.put("favoriteList", favoriteList);		
				return listResult;
			}
			else { 
				return listResult;
			}
		}else {			
			return listResult;
		}
	}
}
