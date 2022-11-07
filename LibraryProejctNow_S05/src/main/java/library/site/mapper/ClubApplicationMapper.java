package library.site.mapper;

import library.site.domain.ClubApplication;
import library.site.domain.ClubJoinVO;

public interface ClubApplicationMapper {
	int application(ClubApplication clubApplication);
	int personStatus(long ccnum);
	
	ClubJoinVO myApplication(long mem_num);
}
