package library.site.repository;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;

import library.site.domain.ClubApplication;
import library.site.domain.ClubCalendar;
import library.site.domain.ClubReview;



public interface ClubCalendarRepository extends JpaRepository<ClubCalendar, Long>{
		@Query(value = "select * from club_calendar where ccnum = :ccnum", nativeQuery = true)
		ClubCalendar clupPage(@Param("ccnum") long ccnum);
	   
		@Query(value = "select * from club_calendar", nativeQuery = true)
		List<ClubCalendar> clupPageList();

}
