package library.site.mapper;

import java.util.List;

import library.site.domain.ClubReview;

public interface ClubReviewMapper {
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
}
