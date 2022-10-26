package library.site.service;

import java.util.List;

import library.site.domain.Book;
import library.site.domain.BookListResult;
import library.site.domain.LibraryBook;

public interface BookSearch {
	BookListResult getBookListResult(int cp, int ps); //�α⵵�� ����Ʈ
	BookListResult getBookListResult(int sorted, int cp, int ps, long catgo, String keyword); //�����˻�
	BookListResult getBookCatgoListResult(int typed, int cp, int ps, int catgoId); //ī�װ��� �˻�
	Book getBook(String isbn); //�˶�� api å ��������
	LibraryBook getLibraryBook(String isbn); //dbå ��������(isbn����)
	LibraryBook getLibraryBookNum(long book_num); //dbå ��������(å��ȣ��)
	BookListResult getBookCatgoRefer(int catgoId);
	BookListResult getBookWriterRefer(String writer);
	List<LibraryBook> autoComplete(String title);
	String BookLocation(String isbn);
	long BookFloor(String isbn);
	List<LibraryBook> getRecomendBook();
	BookListResult getRecomendBookMore(int cp, int ps);	
}
