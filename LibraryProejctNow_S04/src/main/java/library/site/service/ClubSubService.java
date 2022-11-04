package library.site.service;

import java.util.List;

import org.springframework.data.repository.query.Param;

import library.site.domain.ClubApplication;
import library.site.domain.ClubCalendar;
import library.site.domain.ClubJoinVO;
import library.site.domain.ClubReview;


public interface ClubSubService {
	List<ClubCalendar> clupPageList();
	ClubCalendar clupPage(long ccnum);
	int application(ClubApplication clubApplication);
	 
	int personStatus(long ccnum);
	 
	List<ClubReview> reviewList(long ccnum);
	int deleteReview(long cr_num);
	int insertReview(ClubReview clupReview);
	int totalReview(long ccnum);
	int reviewSum(long ccnum);
	 
	 
	int reviewNumOne(long ccnum);
	int reviewNumTwo(long ccnum);
	int reviewNumThree(long ccnum);
	int reviewNumFour(long ccnum);
	int reviewNumFive(long ccnum);
	
	
	ClubJoinVO myApplication(long mem_num);
}
