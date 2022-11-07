package library.site.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class BookListResult {
	private List<Book> items;
	private List<Book> popBook; //�α⵵��
	private List<Book> dvd; //dvd
	private List<Book> writerBook; //�۰��� �ٸ� ��ǰ
	private List<Book> catgoBook; //ī�װ��� �ٸ� ��ǰ
	private List<LibraryBook> bookList;//db�� �ִ� ����	
	private List<Facility> bookLoc; //db���ִ� ���� ��ġ
	private String keyword;
	private int cp;
	private int ps;
	private long totalCount;
	private long totalPageCount;
	private int startpaging;
	private int endpaging;
	private int sorted;
	private int qtype;
	
	public BookListResult(int cp, long totalCount, int ps, int sorted, List<Book> list) {
		this.cp = cp;
		this.totalCount = totalCount;
		this.ps = ps;
		this.items = list;
		this.totalPageCount = calTotalPageCount();
		this.sorted = sorted;
	}
	
	public BookListResult(int cp, long totalCount, int ps, List<LibraryBook>list) {
		this.cp = cp;
		this.totalCount = totalCount;
		this.ps = ps;
		this.totalPageCount = calTotalPageCount();
		this.bookList = list;
	}
	private long calTotalPageCount() {
		long tpc = totalCount/ps;
		if(totalCount%ps != 0) tpc++;
		return tpc;
	}
}
