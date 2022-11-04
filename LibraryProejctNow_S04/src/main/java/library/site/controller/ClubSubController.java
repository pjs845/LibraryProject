package library.site.controller;


import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import library.site.domain.ClubApplication;
import library.site.domain.ClubCalendar;
import library.site.domain.ClubReview;

import library.site.service.ClubSubService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@AllArgsConstructor
@Log4j
@RestController
@RequestMapping("/api")
public class ClubSubController {

	private ClubSubService ccs;
	
	@GetMapping("/cluppage")
	public Map<String, Object> page(long ccnum) {
			HashMap<String, Object> result = new HashMap<String, Object>();
			int status = ccs.personStatus(ccnum);
			log.info("@@ Ŭ�� cc_subject: "+ccnum);
			ClubCalendar clubCalendar = ccs.clupPage(ccnum);
			log.info("@@ Ŭ�� ������: "+clubCalendar);
			List<ClubReview> clubReview = ccs.reviewList(ccnum);
			System.out.println("@@ ����Ŭ�� ����: "+clubReview);
			int reviewTotal = ccs.totalReview(ccnum);
			int reviewSum = ccs.reviewSum(ccnum);
			double reviewAvg = 0;
			double total = reviewTotal;
			double sum = reviewSum;
			
			try {
				reviewAvg = sum/total;
			}catch(ArithmeticException e) {
				log.info("@@ ����Ʈ ��� ���� "+e);
			}
			double avg = Math.round(reviewAvg*10)/10.0;
			
			int oneCount = ccs.reviewNumOne(ccnum);
			int twoCount = ccs.reviewNumTwo(ccnum);
			int threeCount = ccs.reviewNumThree(ccnum);
			int fourCount = ccs.reviewNumFour(ccnum);
			int fiveCount = ccs.reviewNumFive(ccnum);
			
			result.put("status", status);
			result.put("clubCalendar", clubCalendar);
			result.put("clubReview", clubReview);
			result.put("reviewTotal", reviewTotal);
			result.put("avg", avg);
			result.put("oneCount", oneCount);
			result.put("twoCount", twoCount);
			result.put("threeCount", threeCount);
			result.put("fourCount", fourCount);
			result.put("fiveCount", fiveCount);
			
	      return result;
	   }

	   
	   @GetMapping("/api")
	   public List<ClubCalendar> mainList(){
	      log.info("@@ ����Ŭ�� OK");
	      List<ClubCalendar> clubCalendar = ccs.clupPageList();
	      return clubCalendar;
	   }
	   
	   @PostMapping("/app")
	   public int applicationPage(ClubApplication clubApplication, HttpServletResponse response) throws IOException {
		   int result = ccs.application(clubApplication);
		   
		   log.info("@@ Ŭ�� ���������� �μ�Ʈ OK: "+result);
		   if (result == 0) {
			   log.info("@@ ��û ����");
		   }else if(result== 1) {
			   response.sendRedirect("http://localhost:3000");
		   }
		   return result;
	   }
	   @PostMapping("insertReview")
	   public int insertReview(ClubReview clubReview) {
		   log.info("@@ Ŭ�� ���� ��� ��: "+clubReview);
		   int result = ccs.insertReview(clubReview);
		   log.info("@@ Ŭ�� ���� ���: "+result);
		   return result;
	   }
	   
	   @PostMapping("deleteReview")
	   public int deleteReview(long cr_num) {
		   int result = ccs.deleteReview(cr_num);
		   log.info("@@ Ŭ�� ���� ����: "+result);
		   return result;
	   }

}
