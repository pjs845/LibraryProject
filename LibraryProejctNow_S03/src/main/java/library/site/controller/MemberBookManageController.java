package library.site.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
			long mem_num, int category) {		
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
}
