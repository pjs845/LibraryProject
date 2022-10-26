package library.site.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class BookFavoriteListResult {
	private List<BookFavorite> items;
	private int cp;
	private int ps;
	private long totalCount;
	private long totalPageCount;
	private int startpaging;
	private int endpaging;

	
	public BookFavoriteListResult(int cp, long totalCount, int ps, List<BookFavorite> items) {
		this.cp = cp;
		this.totalCount = totalCount;
		this.ps = ps;
		this.items = items;
		this.totalPageCount = calTotalPageCount();
	}
	private long calTotalPageCount() {
		long tpc = totalCount/ps;
		if(totalCount%ps != 0) tpc++;
		return tpc;
	}
}