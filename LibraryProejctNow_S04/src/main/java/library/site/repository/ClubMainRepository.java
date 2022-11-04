package library.site.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import library.site.domain.BookFavorite;
import library.site.domain.BookRequestDAO;
import library.site.domain.ClubMain;

public interface ClubMainRepository extends JpaRepository<ClubMain, Long>{
	@Query(value = "select * from CLUBMAIN",
			nativeQuery = true)	
	List<ClubMain> selectClubMain();	
	
}
