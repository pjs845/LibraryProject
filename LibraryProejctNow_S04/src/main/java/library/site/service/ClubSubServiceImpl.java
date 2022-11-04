package library.site.service;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import library.site.domain.ClubApplication;
import library.site.domain.ClubCalendar;
import library.site.domain.ClubJoinVO;
import library.site.domain.ClubReview;
import library.site.mapper.ClubApplicationMapper;
import library.site.mapper.ClubReviewMapper;
import library.site.repository.ClubCalendarRepository;
import lombok.RequiredArgsConstructor;


@Service
@RequiredArgsConstructor //을 사용하지 않으면 따로 생성자를 주입해야 함 아래는 final
public class ClubSubServiceImpl implements ClubSubService {

	@Autowired
	private final ClubCalendarRepository ccr;
	@Autowired
	private ClubReviewMapper crm;
	@Autowired
	private ClubApplicationMapper calm;
	
	@Override
	public List<ClubCalendar> clupPageList(){
		return ccr.clupPageList();
	}
	
	
	@Override
	public ClubCalendar clupPage(long ccnum) {
		return ccr.clupPage(ccnum);
	}


	@Override
	public int application(ClubApplication clubApplication) {
		int result = calm.application(clubApplication);
		return result;
	}


	@Override
	public int personStatus(long ccnum) {
		return calm.personStatus(ccnum);
	}


	@Override
	public List<ClubReview> reviewList(long ccnum) {
		List<ClubReview> clubReview = crm.reviewList(ccnum);
		return clubReview;
	}


	@Override
	public int deleteReview(long cr_num) {
		int result = crm.deleteReview(cr_num);
		return result;
	}


	@Override
	public int insertReview(ClubReview clupReview) {
		int result = crm.insertReview(clupReview);
		return result;
	}


	@Override
	public int totalReview(long ccnum) {
		int total = crm.totalReview(ccnum);
		return total;
	}


	@Override
	public int reviewSum(long ccnum) {
		int sum = crm.reviewSum(ccnum);
		return sum;
	}


	@Override
	public int reviewNumOne(long ccnum) {
		return crm.reviewNumOne(ccnum);
	}


	@Override
	public int reviewNumTwo(long ccnum) {
		return crm.reviewNumTwo(ccnum);
	}


	@Override
	public int reviewNumThree(long ccnum) {
		return crm.reviewNumThree(ccnum);
	}


	@Override
	public int reviewNumFour(long ccnum) {
		return crm.reviewNumFour(ccnum);
	}


	@Override
	public int reviewNumFive(long ccnum) {
		return crm.reviewNumFive(ccnum);
	}


	@Override
	public ClubJoinVO myApplication(long mem_num) {
		return calm.myApplication(mem_num);
	}


}
