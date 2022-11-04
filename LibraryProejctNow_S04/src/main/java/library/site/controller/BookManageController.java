package library.site.controller;

import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import library.site.domain.Book;
import library.site.domain.BookListResult;
import library.site.domain.BookRequestDAO;
import library.site.domain.LibraryBook;
import library.site.domain.Member;
import library.site.domain.RentalBook;
import library.site.domain.RentalBookDAO;
import library.site.service.BookFavoriteService;
import library.site.service.BookRequestService;
import library.site.service.BookSearch;
import library.site.service.RentalBookService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@Controller
public class BookManageController {	
	RentalBookService rbservice;
	BookSearch bsService;
	BookRequestService brService;
	BookFavoriteService bfService;
	
	
	@RequestMapping(value = "/rental.ok", method = RequestMethod.POST)
	public String rental(HttpServletRequest request, HttpSession session, RentalBookDAO rb, RedirectAttributes ratb) {				
		long mem_num = rb.getMem_num();
		long book_num = rb.getBook_num();		
		Object member = session.getAttribute("member");
		Member logmem = null;
		if(member != null) { //�α��� ����
			 logmem = (Member)member;
			 String grade = logmem.getMem_grade();
			 if(grade.equals("2")) { //�Ϲ�ȸ��
				 long ren_num = rbservice.mem_rentalCount(mem_num);
				 log.info("ren_num : " + ren_num);
				 if(ren_num<2) { //ȸ���� ���� ���� ���� ������ 2�� ����
					 int insert = rbservice.insertrentalBook(rb);
					 if (insert==0) { //���� insert����					 					 				 
						 request.setAttribute("msg", "���⿹���� �Ϸ�Ǿ����ϴ�!");
						 String url = "/rental_order?mem_num="+mem_num+"&book_num="+book_num;					 
						 request.setAttribute("url", url);
						 return "alert";
					 }else if(insert==1){ //�ߺ�����
						 request.setAttribute("msg", "�̹� ������ �Ϸ�Ǿ����ϴ�.");
						 request.setAttribute("url", "/");
						 return "alert";
					 }else if(insert==2) { //�������� �ش� å�� 0���� ��
						 request.setAttribute("msg", "�ش�å�� ������ �� �����ϴ�.");
						 request.setAttribute("url", "/");
						 return "alert";
					 }		
				 }else {
					 request.setAttribute("msg", "3�� �̻� ������ �� �����ϴ�.");
					 request.setAttribute("url", "/");
					 return "alert";
				 }				 				 		 			
			 }else { //�Ϲ�ȸ���� �ƴ� ����
				 request.setAttribute("msg", "�Ϲ�ȸ���� ���⿹���� �����մϴ�.");
				 request.setAttribute("url", "/");
				 return "alert";
			 }
		}//��α��� ����
		request.setAttribute("msg", "�α����� �ʿ��մϴ�.");
		request.setAttribute("url", "/");
		return "alert";
	}
	
	@PostMapping("autoData")
	public @ResponseBody List<LibraryBook> getAddressList(String title){
		List<LibraryBook> list = bsService.autoComplete(title);
		return list;
	}
	
	@RequestMapping(value = "/rental_order", method = RequestMethod.GET)
	public ModelAndView rental_order(HttpServletRequest request, HttpSession session, RedirectAttributes ratb,
			long mem_num, long book_num) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mem_num", mem_num);
		map.put("book_num", book_num);
		RentalBookDAO rbook = rbservice.rentalBookInfo(map);
		LibraryBook book = bsService.getLibraryBookNum(book_num);
		String isbn = book.getBook_isbn();
		String loc = bsService.BookLocation(isbn);
		long floor = bsService.BookFloor(isbn);
		Map<String, Object> rental = new HashMap<String, Object>();
		Object memberObj = session.getAttribute("member");
		ModelAndView mv = null;
		if(memberObj != null) { //�α��� ����
			Member member = (Member)memberObj;
			if(mem_num == member.getMem_num()) {
				rental.put("rbook", rbook);
				rental.put("book", book);
				rental.put("loc", loc);
				rental.put("floor", floor);
				mv= new ModelAndView("/shop/rental_order", "rental", rental);
				return mv;
			}
			else {
				request.setAttribute("msg", "������ ȸ���� �ƴմϴ�.");
				request.setAttribute("url", "/");
				mv = new ModelAndView("alert", "", "");
				return mv;
			}
		}else { //��α��� ����
			request.setAttribute("msg", "�α����� �ʿ��մϴ�.");
			request.setAttribute("url", "/");
			mv = new ModelAndView("alert", "", "");
			return mv;
		}				
	}
	
	@GetMapping("/recommend/more")
	public ModelAndView recommend_more(HttpServletRequest request, HttpSession session) {
		String cpStr = request.getParameter("cp");
		String psStr = request.getParameter("ps");
		//(1) cp 
		int cp = 1; // ���������� �ʱ�ȭ
		if(cpStr != null) {
			cpStr = cpStr.trim();
			cp = Integer.parseInt(cpStr);
		}		
		//(2) ps 
		int ps = 10; // ������ ������ �ʱ�ȭ
		if(psStr != null) {
			psStr = psStr.trim();
			ps = Integer.parseInt(psStr);
		}
		BookListResult blr = bsService.getRecomendBookMore(cp, ps);
		log.info("##blr: " + blr);
		ModelAndView mv = null;
		mv= new ModelAndView("/book_recomend_more", "blr", blr);
		return mv;
	}
	
	@RequestMapping(value = "/request.ok", method = RequestMethod.POST)
	public String request(HttpServletRequest request, HttpSession session, RedirectAttributes ratb, BookRequestDAO brDAO) {
		brDAO.setBr_stat(0); //��û�����
		long mem_num = brDAO.getMem_num();
		String book_isbn = brDAO.getBr_isbn();		
		String book_title = brDAO.getBr_title();
		String book_writer = brDAO.getBr_writer();
		Object member = session.getAttribute("member");
		Member logmem = null;
		if(member != null) { //�α��� ����
			 logmem = (Member)member;
			 String grade = logmem.getMem_grade();
			 if(grade.equals("2")) { //�Ϲ�ȸ��
				 int result = brService.insertBookRequest(brDAO);
				 if(result==0) {
					 request.setAttribute("msg", "������û�� �Ϸ�Ǿ����ϴ�.");
					 request.setAttribute("url", "/");
					 return "alert";
				 }else if(result==1){
					 request.setAttribute("msg", "�̹� ��û�� �����Դϴ�.");
					 request.setAttribute("url", "/");
					 return "alert";
				 }else if(result==2) {
					 request.setAttribute("msg", "��û���� �����Դϴ�.");
					 request.setAttribute("url", "/");
					 return "alert";
				 }				 
			 }else { //�Ϲ�ȸ���� �ƴ� ����
				 request.setAttribute("msg", "�Ϲ�ȸ���� ���⿹���� �����մϴ�.");
				 request.setAttribute("url", "/");
				 return "alert";
			 }
		}//��α��� ����
		request.setAttribute("msg", "�α����� �ʿ��մϴ�.");
		request.setAttribute("url", "/");
		return "alert";
	}
	
	@GetMapping("/ajax/fav/book")
	public @ResponseBody boolean favAdd(HttpServletRequest request, HttpSession session, String memnum, String isbn){		
		Member result = bfService.insertFav(isbn, memnum);
		if(result == null) {
			return false;
		}else { 
			session.setAttribute("member", result);
			return true;
		}						
	}
	@GetMapping("/ajax/favdel/book")
	public @ResponseBody boolean favDel(HttpServletRequest request, HttpSession session, String memnum, String isbn){		
		Member result = bfService.deleteFav(isbn, memnum);
		session.setAttribute("member", result);		
		return true;
	}
}
