package library.site.service;

import java.util.List;

import library.site.domain.ClubCalendar;
import library.site.domain.ClubMain;

public interface ClubMainService {
	List<ClubMain> selectClubMain();
	List<ClubCalendar> selectClubCalendar();
	void saveClubCalendarAll(ClubCalendar clubCalendar);
	ClubCalendar selectDetail(long id);
	void deleteClub(long id);
	void updateClub(ClubCalendar clubCalendar);
}
