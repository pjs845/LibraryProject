package library.site.service;

import library.site.domain.BookFavoriteListResult;
import library.site.domain.BookRequestListResult;
import library.site.domain.RentalBookListResult;

public interface MemberBookService {
	RentalBookListResult getRBLR(int cp, int ps, long mem_num);
	BookRequestListResult getBRLR(int cp, int ps, long mem_num);
	BookFavoriteListResult getBFLR(int cp, int ps, long mem_num);
}
