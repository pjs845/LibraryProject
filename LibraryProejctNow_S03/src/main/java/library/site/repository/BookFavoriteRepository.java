package library.site.repository;

import java.util.List;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import library.site.domain.BookFavorite;
import library.site.domain.BookRequestDAO;

public interface BookFavoriteRepository extends JpaRepository<BookFavorite, Long> {
	@Query(value = "select * from BOOK_FAVORITE where MEM_NUM=:memnum",
			nativeQuery = true)	
	List<BookFavorite> findByMem_num(@Param("memnum") long memnum);	
	
	@Query(value = "select * from BOOK_FAVORITE where MEM_NUM=:memnum and BOOK_NUM=:booknum",
			nativeQuery = true)
	BookFavorite findByFav(@Param("memnum") long memnum, @Param("booknum") long booknum);
	
	@Query(value = "select * from (select ROWNUM rnum, aa.* from " + 
			"(select * from BOOK_FAVORITE where MEM_NUM=:mem_num order by BOOK_NUM desc) aa) " + 
			"where rnum>:startRow and rnum<=:endRow",
			nativeQuery = true)
	List<BookFavorite> selectPerPageMem(@Param("startRow") int startRow, @Param("endRow") int endRow, @Param("mem_num") long mem_num); //회원이 찜한 책들
	
	@Query(value = "select count(*) from BOOK_FAVORITE where MEM_NUM=:mem_num",
			nativeQuery = true)
	Long getFavBookMem(@Param("mem_num") long mem_num); //회원이 찜한 책 수
}
