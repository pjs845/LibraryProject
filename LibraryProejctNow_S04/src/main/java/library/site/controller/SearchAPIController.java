package library.site.controller;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import library.site.domain.Book;
import library.site.domain.BookListResult;
import library.site.domain.BookReviews;
import library.site.domain.Classification;
import library.site.domain.LibraryBook;
import library.site.domain.RentalBook;
import library.site.service.AdminBookManageService;
import library.site.service.BookReviewsService;
import library.site.service.BookSearch;
import library.site.service.RentalBookService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class SearchAPIController {
	@Autowired
	private BookSearch bookService;
	@Autowired
	private RentalBookService rbService;
	@Autowired
	private AdminBookManageService abmService;
	
	@Autowired
	private BookReviewsService brs;
	
	@RequestMapping(value = "detail/book", method = RequestMethod.GET)
	public ModelAndView detailBook(HttpServletRequest request, HttpSession session,
			@RequestParam("isbn")String isbn, Model model) {
		HashMap<String, Object> books = new HashMap<String, Object>();
		Book book = null;
		book = bookService.getBook(isbn);
		int catgoId = book.getCatgoId();
		BookListResult blrcatgo = null;
		blrcatgo = bookService.getBookCatgoRefer(catgoId);
		String writer = book.getWriter();
		writer = writer.substring(0, writer.indexOf("("));
		log.info("#writer: " + writer);
		writer = writer.trim();
		BookListResult blrwriter = null;		
		blrwriter = bookService.getBookWriterRefer(writer); 
		String book_isbn = book.getIsbn();
		
		LibraryBook Lbook = bookService.getLibraryBook(isbn);
		request.setAttribute("Lbook", Lbook); //dbå ���� jsp�� ����
		long book_num = 0;
		String Lbook_isbn = "";
		try {
			 book_num = Lbook.getBook_num();
			 Lbook_isbn = Lbook.getBook_isbn();
		}catch(NullPointerException npe) {
			book_num = 0;
			Lbook_isbn = "";
		}
		
		//�߰���
		Object ObjId = session.getAttribute("member");
		model.addAttribute("book", book_num);
		//���� �� ���� 
		
		int reviewTotal = brs.reviewTotal(book_num);
		log.info("@@ ��ġ ���� �� ����: "+reviewTotal);
		model.addAttribute("reviewTotal", reviewTotal);

		//���� �� ���
		int sum = brs.reviewAvg(book_num); //�ش� �Խù��� �� ��
		double sums = sum;
		double reviewTotals = reviewTotal;
		double reviewAvg = 0;
		
		try {
			reviewAvg = sums/reviewTotals;
		}catch(ArithmeticException e) {
			log.info("@@ ��� ����[ArithmeticException]: "+e);
		}
		
		//String str = String.format("%.1f", reviewAvg);
		double str = Math.round(reviewAvg *10)/10.0;
		
		log.info("@@ ��ġ ���: "+str);
		model.addAttribute("reviewAvg", str);
	
		//���� ������ ��
		int one = brs.reviewOne(book_num);
		int two = brs.reviewTwo(book_num);
		int three = brs.reviewThree(book_num);
		int four = brs.reviewFour(book_num);
		int five = brs.reviewFive(book_num);
		model.addAttribute("one", one);
		model.addAttribute("two", two);
		model.addAttribute("three", three);
		model.addAttribute("four", four);
		model.addAttribute("five", five);
		
		//log.info("## ��ġ id: "+ObjId);
		//�߰���
		log.info("@@��ġ book_num: "+book_num);
		String rePlusPage = request.getParameter("plusPage");
		
		log.info("@@ ��ġ plusPage request: "+rePlusPage);
		int plusPage = 0;
		if(rePlusPage == null) {
			plusPage = 5;
		}else {
			plusPage = Integer.parseInt(rePlusPage);
		}
		log.info("@@ ��ġ PLUSPAGE: "+plusPage);
		model.addAttribute("plusPage", plusPage);
		List<BookReviews> review = brs.reviewList(book_num, plusPage);
		log.info("@@ ��ġ PLUSPAGE3: "+plusPage);
		log.info("@@���� review: "+review);

		books.put("member", ObjId);
		books.put("list", review);
		// �߰��� ��
		
		
		books.put("detail", book);
		books.put("catgo", blrcatgo);
		books.put("writer", blrwriter); //å ����å�� �˻�
		books.put("author", writer); //å ����
		books.put("isbn", book_isbn);		
				
		long book_count = rbService.rentalBookCount(book_num);
		String book_loc = bookService.BookLocation(Lbook_isbn);
		
		request.setAttribute("Rbook_count", book_count);
		request.setAttribute("book_loc", book_loc);
		
		ModelAndView mv = new ModelAndView("shop/single-product-v4", "books", books);
		return mv;
	}
	
	//@RequestMapping(value = "search/book", method = RequestMethod.POST)
	@RequestMapping(value = "search/book", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	public ModelAndView searchBook(HttpServletRequest request, HttpSession session,
			@RequestParam("keyword")String keyword, @RequestParam("type")long type,
			@RequestParam("page")int cp) {
		log.info("keyword: " + keyword);
		log.info("type: " + type);//1. ���հ˻�, 2.å����, 3.����, 4.���ǻ�		
		String sortedStr = request.getParameter("sorted"); //1�α�, 2��Ȯ, 3������, 4����
		String showStr = request.getParameter("show");// ����
		int sorted = 2;
		if(sortedStr==null) {
			Object sortedObj = session.getAttribute("sorted");
			if(sortedObj != null) {
				sorted = (Integer)sortedObj;
			}
		}else {
			sortedStr = sortedStr.trim();
			sorted = Integer.parseInt(sortedStr);
		}
		int show = 12;
		if(showStr==null) {
			Object showObj = session.getAttribute("show");
			if(showObj != null) {
				show = (Integer)showObj;
			}
		}else {
			showStr = showStr.trim();
			show = Integer.parseInt(showStr);
		}
		int index = keyword.indexOf("(������)");
		log.info("#index: " + index);
		log.info("keyword: " + keyword);
		if(type==3) {
			if(index!=-1) {
				keyword = keyword.substring(0, keyword.indexOf("(������)"));
				keyword = keyword.trim();
			}
		}
		//long isbn = Long.parseLong(keyword);
		//log.info("#isbn: " + isbn);
		//bookService.getBook(isbn);
		//bookService.getBookListResult(1, 2);
		BookListResult blr = null;
		blr = bookService.getBookListResult(sorted, cp, show, type, keyword);
		blr.setKeyword(keyword);
		log.info("#keyword: " + keyword);		
		ModelAndView mv = new ModelAndView("shop/v3", "listResult", blr);
		return mv;
	}
	
	@RequestMapping(value = "category/book", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	public ModelAndView categoryBook(HttpServletRequest request, HttpSession session,
			@RequestParam("catgoId")int catgoId, @RequestParam("page")int cp) {
		String qtypeStr = request.getParameter("qtype"); //1�Ű� ��ü ����Ʈ, 2�ָ��� ���� �Ű� ����Ʈ, 3������ ��õ ����Ʈ, 4����Ʈ����
		String showStr = request.getParameter("show");// ����
		String catgoStr = request.getParameter("catgo");// ��������, �ܱ����� �з� 
		log.info("#catgoStr: " + catgoStr);
		log.info("#catgoId: "+catgoId);
		
		if(catgoStr.equals("kor")) {//��������
			if(catgoId==1) {
				catgoId=1; // �Ҽ�/��/���
				request.setAttribute("catgosub", "�Ҽ�");
			}else if(catgoId==2) {
				catgoId=55889; //�������� ������
				request.setAttribute("catgosub", "������");
			}
			else if(catgoId==3) {
				catgoId=987; //����
				request.setAttribute("catgosub", "����");
			}
			else if(catgoId==4) {
				catgoId=656; //�ι���
				request.setAttribute("catgosub", "�ι���");
			}else if(catgoId==5) {
				catgoId=517; //����/���߹�ȭ
				request.setAttribute("catgosub", "����/���߹�ȭ");
			}
			request.setAttribute("catgo", "��������");
		}else if(catgoStr.equals("for")){ //�ܱ�����
			if(catgoId==1) {
				catgoId=90842; // �Ҽ�/��/���
				request.setAttribute("catgosub", "�Ҽ�");
			}else if(catgoId==2) {
				catgoId=106165; //���
				request.setAttribute("catgosub", "���");
			}
			else if(catgoId==3) {
				catgoId=28261; //�Ϻ�����
				request.setAttribute("catgosub", "�Ϻ�����");
			}
			else if(catgoId==4) {
				catgoId=28492; //�߱�����
				request.setAttribute("catgosub", "�߱�����");
			}else if(catgoId==5) {
				catgoId=90848; //����/���߹�ȭ
				request.setAttribute("catgosub", "����/���߹�ȭ");
			}
			request.setAttribute("catgo", "�ܱ�����");
		}		
		int typed = 1;
		if(qtypeStr==null) {
			Object sortedObj = session.getAttribute("qtype");
			if(sortedObj != null) {
				typed = (Integer)sortedObj;
			}
		}else {
			qtypeStr = qtypeStr.trim();
			typed = Integer.parseInt(qtypeStr);
		}
		int show = 12;
		if(showStr==null) {
			Object showObj = session.getAttribute("show");
			if(showObj != null) {
				show = (Integer)showObj;
			}
		}else {
			showStr = showStr.trim();
			show = Integer.parseInt(showStr);
		}
		//long isbn = Long.parseLong(keyword);
		//log.info("#isbn: " + isbn);
		//bookService.getBook(isbn);
		//bookService.getBookListResult(1, 2);
		BookListResult blr = null;
		blr = bookService.getBookCatgoListResult(typed, cp, show, catgoId);
		log.info("##controll: " + blr);
		ModelAndView mv = new ModelAndView("shop/v1", "listResult", blr);
		return mv;
	}
	@GetMapping("popup/read")
	public @ResponseBody HashMap<String, Object> read(HttpServletRequest request, HttpSession session,
			String isbn) {
		HashMap<String, Object> books = new HashMap<String, Object>();
		Book book = bookService.getBook(isbn);
		LibraryBook Lbook = bookService.getLibraryBook(isbn);
		long book_num = 0;
		String Lbook_isbn = "";
		try {
			book_num = Lbook.getBook_num();
			Lbook_isbn = Lbook.getBook_isbn();
		}catch(NullPointerException npe) {
			book_num = 0;
			Lbook_isbn = "";
		}		
		long rbook_count = rbService.rentalBookCount(book_num);
		String rbook_loc = bookService.BookLocation(Lbook_isbn);
		book.setLbook(Lbook);
		books.put("book", book);
		books.put("rbook_count", rbook_count);
		books.put("rbook_loc", rbook_loc);
		books.put("member", session.getAttribute("member"));
		return books;
	}
	
	@GetMapping("modal/read")
	public @ResponseBody HashMap<String, Object> read_modal(HttpServletRequest request, HttpSession session,
			String isbn) {
		HashMap<String, Object> books = new HashMap<String, Object>();
		Book book = bookService.getBook(isbn);			
		List<String> classList = abmService.ClassList();
		List<String> facList = abmService.facilityList();
		log.info("book : " + book);
		books.put("book", book);
		books.put("classList", classList);
		books.put("facList", facList);
		return books;
	}
	
	@PostMapping("detail/book/writereview")
	@ResponseBody
	public List<BookReviews> writeReview(long book_num, long mem_num, int brs_rating, String brs_content) {
		int result = brs.writeReviews(book_num, mem_num, brs_rating, brs_content);
		List<BookReviews> review = brs.brsList(book_num);
		log.info("@@ ���� �μ�Ʈ �����: "+result);
		log.info("@@ ���� �μ�Ʈ �����review: "+review);
		return review;
	}
	
	@PostMapping("detail/book/deletereview")
	@ResponseBody
	public int deleteReview(long brs_num) {
		int result = brs.deleteReviews(brs_num);
		log.info("@@ ���� ���� �����: "+result);
		return result;
	}
	
	
	/// �Ϲ� �۾��� , ���� �� 
	@PostMapping("detail/book/listreview")
	@ResponseBody
	public Map<String, Object> listReview(long book_num, HttpSession session){
		LinkedHashMap<String, Object> result = new LinkedHashMap<String, Object>();
	
		int plusPage = 5;
		List<BookReviews> review = brs.reviewList(book_num, plusPage);
		log.info("@@ ��ġ PLUSPAGE ��: "+plusPage);
		log.info("@@ ��� ����Ʈ: "+review);
		
		//���� �����
		Object ObjId = session.getAttribute("member");

		//���� �� ���� 
		
		int reviewTotal = brs.reviewTotal(book_num);
		log.info("@@ ��ġ ���� �� ����: "+reviewTotal);
		double reviewTotals = reviewTotal;

		//���� �� ���
		int sum = brs.reviewAvg(book_num); //�ش� �Խù��� �� ��
		double sums = sum;
		double reviewAvg = 0;
		
		try {
			reviewAvg = sums/reviewTotals;
		}catch(ArithmeticException e) {
			log.info("@@ ��� ����[ArithmeticException]: "+e);
		}
		
		String str = String.format("%.1f", reviewAvg);
		log.info("@@ ��ġ ���: "+str);
		
		//���� ������ ��
		int one = brs.reviewOne(book_num);
		int two = brs.reviewTwo(book_num);
		int three = brs.reviewThree(book_num);
		int four = brs.reviewFour(book_num);
		int five = brs.reviewFive(book_num);
		//
		result.put("book", book_num);
		result.put("plusPage", plusPage);
		result.put("reviewAvg", str);
		result.put("reviewTotal", reviewTotal);
		result.put("one", one);
		result.put("two", two);
		result.put("three", three);
		result.put("four", four);
		result.put("five", five);
		result.put("member", ObjId);
		result.put("review", review);	//BookReviews list �� 
		
		return result;
	}
	
	
	//������ 
	@PostMapping("detail/book/listreviewplus")
	@ResponseBody
	public Map<String, Object> listReviewPlus(long book_num, HttpSession session, int plusPage, HttpServletRequest request){
		LinkedHashMap<String, Object> result = new LinkedHashMap<String, Object>();
		String rePlusPage = request.getParameter("plusPage");
		int reviewTotal = brs.reviewTotal(book_num);
		log.info("@@ ������ PLUSPAGE(re) ��: "+rePlusPage);
		log.info("@@ ������ PLUSPAGE ��: "+plusPage);
		
		plusPage += 10;
		
		List<BookReviews> review = brs.reviewList(book_num, plusPage);
		log.info("@@ ������ PLUSPAGE(re) ��: "+rePlusPage);
		log.info("@@ ������ PLUSPAGE ��: "+plusPage);
		log.info("@@ ������ ��� ����Ʈ: "+review);
		log.info("@@ ������ ��� ����Ʈ ������: "+review.size());
		//plusPage += 10;
		//���� �����
		Object ObjId = session.getAttribute("member");
		if(ObjId == null) {
			ObjId = "��ȸ��";
		}
		log.info("@@ ������ ��� ��: "+ObjId);
		
		result.put("reviewTotal", reviewTotal);
		result.put("plusPage", plusPage);
		result.put("member", ObjId);
		result.put("review", review);	//BookReviews list �� 
		
		return result;
	}
	
	//���ƿ� ������Ʈ 
	@PostMapping("detail/book/reviewupdatelike")
	@ResponseBody
	public Map<String , Integer> reviewUpdateLike(long brs_num, long mem_num) {
		HashMap<String, Integer> result = new HashMap<String, Integer>();
		
		int likePlus = 0;// ���ƿ�� + 1 ������Ʈ
		int likeMinus = 0;	//���ƿ� �ѹ� �� ���� �� - 1 ������Ʈ
		int selectLike = 0;
		int dataExists = brs.dataExists(brs_num, mem_num);
		if(dataExists == 0) {	//�α� ���̺� ������ ���� ���� 
			log.info("���ƿ� ������ ����");
			int insertLikeLog = brs.likeLog(brs_num, mem_num);	//���ƿ� �� �μ�Ʈ�� like 1
			log.info("@@ ���ƿ� ������ ��� �α����̺� �μ�Ʈ: "+insertLikeLog);
			selectLike = brs.selectLike(brs_num, mem_num);	// �ش� �Խñ� ���ƿ� �� ���� select
			if(selectLike == 0) {
				likePlus = brs.reviewUpdateLike(brs_num);// ���ƿ�� + 1 ������Ʈ
				int logLikePlus = brs.updateLikePlus(brs_num, mem_num); // ���ƿ�� �α׿� +1 ������Ʈ
				
				log.info("@@ ���ƿ��[��] +1: "+likePlus);
				log.info("@@ ���ƿ�� �α׿� ������Ʈ[��]: "+logLikePlus);
			}
			
		}else if(dataExists == 1) {	//�α� ���̺� ������ ���� ����
			log.info("���ƿ� ������ ����");
			selectLike = brs.selectLike(brs_num, mem_num);	// �ش� �Խñ� ���ƿ� �� ���� select
			if(selectLike == 1) {	// �̹� ���ƿ並 ���� ���
				log.info("@@ ���ƿ� �̹� ���ƿ並 ���� ���: ");
				likeMinus = brs.reviewDownLike(brs_num);	//���ƿ� �ѹ� �� ���� �� - 1 ������Ʈ
				int logLikeMinus = brs.updateLikeMinus(brs_num, mem_num); // ���ƿ� �� �� �� ���� �� �α׿� -1 ������Ʈ
				log.info("@@ ���ƿ� ���󺹱�: "+likeMinus);
				log.info("@@ ���ƿ� �α׿��󺹱�: "+logLikeMinus);
				
			}else if(selectLike == 0) {	// ���ƿ並 ������ �Ǵ� ���
				log.info("@@ ���ƿ� ������ ��: ");
				likePlus = brs.reviewUpdateLike(brs_num);// ���ƿ�� + 1 ������Ʈ
				int logLikePlus = brs.updateLikePlus(brs_num, mem_num); // ���ƿ�� �α׿� +1 ������Ʈ
				
				log.info("@@ ���ƿ�� +1: "+likePlus);
				log.info("@@ ���ƿ�� �α׿� ������Ʈ: "+logLikePlus);
			}
		}
		
		//log.info("@@ ���ƿ� �� ����: "+dataExists);
		
		result.put("dataExists", dataExists);
		result.put("selectLike", selectLike);
		return result;
	}
	
	//�Ⱦ�� ������Ʈ
	@PostMapping("detail/book/reviewupdatehate")
	@ResponseBody
	public Map<String , Integer> reviewUpdateHate(long brs_num, long mem_num) {
		HashMap<String, Integer> result = new HashMap<String, Integer>();
		int dataExists = brs.dataExists(brs_num, mem_num);	//�α� ���̺� �����Ͱ� �ִ��� ������ üũ 
		int selectHate = 0;
		if(dataExists == 0) {
			int insertHateLog = brs.hateLog(brs_num, mem_num);	//���� �α׿� �ش���̵� ������� �μ�Ʈ
			selectHate = brs.selectHate(brs_num, mem_num);
			if(selectHate == 0) {
				int hatePlus = brs.reviewUpdateHate(brs_num);	//�Ⱦ�� �� +1 ������Ʈ
				int logHatePlus = brs.updateHatePlus(brs_num, mem_num);
			}
			
		}else if(dataExists == 1) {
			selectHate = brs.selectHate(brs_num, mem_num);
			if(selectHate == 0) {
				int hatePlus = brs.reviewUpdateHate(brs_num);	//�Ⱦ�� �� +1 ������Ʈ
				int logHatePlus = brs.updateHatePlus(brs_num, mem_num);
			}else if(selectHate == 1) {
				int hateMinus = brs.reviewDownHate(brs_num);
				int logHateMinus = brs.updateHateMinus(brs_num, mem_num);
			}
			
		}
		
		
		result.put("selectHate", selectHate);
		result.put("dataExists", dataExists);
		return result;
	}
}
