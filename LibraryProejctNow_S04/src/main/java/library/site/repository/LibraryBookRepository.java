package library.site.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import library.site.domain.LibraryBook;
@Repository
public interface LibraryBookRepository extends JpaRepository<LibraryBook, Long> {
	@Query(value = "SELECT * FROM book WHERE book_num = :book_num",
			nativeQuery = true)
	LibraryBook findByBook_num(@Param("book_num") long book_num);
	
	@Query(value = "SELECT * FROM book WHERE book_isbn = :book_isbn",
			nativeQuery = true)
	LibraryBook findByBook_isbn(@Param("book_isbn") String book_isbn);
	
	@Query(value = "SELECT MAX(book_num) FROM book",
			nativeQuery = true)
	long findMaxNum();
	
	@Query(value = "select * from (select ROWNUM rnum, aa.* from "
			+ "(select * from BOOK where BOOK_TITLE like %:book_title% "
			+ "order by book_num desc) aa) where rnum>:startRow and rnum<=:endRow",
			nativeQuery = true)
	List<LibraryBook> searchBook(@Param("startRow") int startRow, @Param("endRow") int endRow, @Param("book_title") String book_title);
	
	@Query(value = "select * from (select ROWNUM rnum, aa.* from "
			+ "(select * from BOOK where BOOK_WRITER like %:book_writer% "
			+ "order by book_num desc) aa) where rnum>:startRow and rnum<=:endRow",
			nativeQuery = true)
	List<LibraryBook> searchBookWriter(@Param("startRow") int startRow, @Param("endRow") int endRow, @Param("book_writer") String book_writer);
	
	@Query(value = "select * from (select ROWNUM rnum, aa.* from "
			+ "(select * from BOOK where BOOK_TITLE like %:book_title% and BOOK_CODE=:catgo "
			+ "order by book_num desc) aa) where rnum>:startRow and rnum<=:endRow",
			nativeQuery = true)
	List<LibraryBook> searchCatgoBook(@Param("startRow") int startRow, @Param("endRow") int endRow, @Param("book_title") String book_title, @Param("catgo") int catgo);
	
	@Query(value = "select nvl(max(ROWNUM), 0) from BOOK where BOOK_TITLE like %:book_title%",
			nativeQuery = true)
	long searchTot(@Param("book_title") String book_title);
	
	@Query(value = "select nvl(max(ROWNUM), 0) from BOOK where BOOK_WRITER like %:book_writer%",
			nativeQuery = true)
	long searchWriterTot(@Param("book_writer") String book_writer);
	
	@Query(value = "select nvl(max(ROWNUM), 0) from BOOK where BOOK_TITLE like %:book_title% and BOOK_CODE=:catgo",
			nativeQuery = true)
	long searchCatgoTot(@Param("book_title") String book_title, @Param("catgo") int catgo);
	
	@Transactional
	@Query(value = "select * from (select ROWNUM rnum, aa.* from " + 
			"(select * from BOOK where BOOK_RECOMEND=1 order by BOOK_NUM desc) aa) " + 
			"where rnum>0 and rnum<=10",
			nativeQuery = true)
	List<LibraryBook> searchRecomendBook();
	
	@Query(value = "select * from (select ROWNUM rnum, aa.* from " + 
			"(select * from BOOK where BOOK_RECOMEND=1 order by BOOK_NUM desc) aa) " + 
			"where rnum>:startRow and rnum<=:endRow",
			nativeQuery = true)
	List<LibraryBook> searchRecomendBook(@Param("startRow") int startRow, @Param("endRow") int endRow);
	
	@Query(value = "select nvl(max(ROWNUM), 0) from BOOK where BOOK_RECOMEND=1",
			nativeQuery = true)
	long RecomendTot();	
	
	@Query(value = "select * from BOOK where BOOK_NUM in(" + 
			"select BOOK_NUM from (select BOOK_NUM, count(BOOK_NUM) from RENTAL " + 
			"where REN_BORROW>=TO_DATE(:fDay, 'YYYY-MM-DD') and REN_BORROW<=TO_DATE(:eDay, 'YYYY-MM-DD') " + 
			"group by BOOK_NUM order by count(BOOK_NUM) desc))",
			nativeQuery = true)
	List<LibraryBook> getLastMonthPopRentalBookList(@Param("fDay") String fDay, @Param("eDay") String eDay);
	
	@Transactional
	@Modifying
	@Query(value = "insert into BOOK values(:book_num, :book_code, :f_num, :book_title, :book_writer,"
			+ ":book_publisher, :book_isbn, :book_recomend, :book_count, :book_img)",
			nativeQuery = true)
	void insertBook(@Param("book_num") long book_num, @Param("book_code") long book_code, @Param("f_num") long f_num, @Param("book_title") String book_title,
			@Param("book_writer") String book_writer, @Param("book_publisher") String book_publisher, @Param("book_isbn") String book_isbn,
			@Param("book_recomend") String book_recomend, @Param("book_count") int book_count, @Param("book_img") String book_img);
}
