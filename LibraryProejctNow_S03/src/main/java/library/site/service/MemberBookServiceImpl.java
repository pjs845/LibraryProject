package library.site.service;

import java.util.List;

import org.springframework.stereotype.Service;

import library.site.domain.BookFavorite;
import library.site.domain.BookFavoriteListResult;
import library.site.domain.BookListResult;
import library.site.domain.BookRequestDAO;
import library.site.domain.BookRequestListResult;
import library.site.domain.BookVo;
import library.site.domain.LibraryBook;
import library.site.domain.RentalBook;
import library.site.domain.RentalBookListResult;
import library.site.repository.BookFavoriteRepository;
import library.site.repository.BookRequestRepository;
import library.site.repository.RentalBookRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@RequiredArgsConstructor
public class MemberBookServiceImpl implements MemberBookService {
	
	private final RentalBookRepository rbRepository;
	private final BookRequestRepository brRepository;
	private final BookFavoriteRepository bfRepository;

	@Override
	public RentalBookListResult getRBLR(int cp, int ps, long mem_num) {
		BookVo bookVo = new BookVo(cp, ps);		
		int startRow = bookVo.getStartRow();
		int endRow = bookVo.getEndRow();
		long totalcount = rbRepository.getRentalBookMem(mem_num);
		List<RentalBook> list = rbRepository.selectPerPageMem(startRow, endRow, mem_num);
		RentalBookListResult rblr = new RentalBookListResult(cp, totalcount, ps, list);
		
		//페이징 (시작페이지, 끝페이지)
		int endpaging = ((int)Math.ceil((double)cp / (double)5)) * 5;
		int startpaging = endpaging - 4;
		int cntpg = 0;
		cntpg = (int)(totalcount/ps);
		if(totalcount % ps != 0) {
			cntpg++;
		} 	
		if (cntpg < endpaging) {
			endpaging = cntpg;
		}
		rblr.setStartpaging(startpaging);
		rblr.setEndpaging(endpaging);
		log.info("###blr1 : " + rblr);
		return rblr;
	}

	@Override
	public BookRequestListResult getBRLR(int cp, int ps, long mem_num) {
		BookVo bookVo = new BookVo(cp, ps);		
		int startRow = bookVo.getStartRow();
		int endRow = bookVo.getEndRow();
		long totalcount = rbRepository.getRentalBookMem(mem_num);
		List<BookRequestDAO> list = brRepository.selectPerPageMem(startRow, endRow, mem_num);
		BookRequestListResult brlr = new BookRequestListResult(cp, totalcount, ps, list);
		
		//페이징 (시작페이지, 끝페이지)
		int endpaging = ((int)Math.ceil((double)cp / (double)5)) * 5;
		int startpaging = endpaging - 4;
		int cntpg = 0;
		cntpg = (int)(totalcount/ps);
		if(totalcount % ps != 0) {
			cntpg++;
		} 	
		if (cntpg < endpaging) {
			endpaging = cntpg;
		}
		brlr.setStartpaging(startpaging);
		brlr.setEndpaging(endpaging);
		log.info("###blr1 : " + brlr);
		return brlr;
	}

	@Override
	public BookFavoriteListResult getBFLR(int cp, int ps, long mem_num) {
		BookVo bookVo = new BookVo(cp, ps);		
		int startRow = bookVo.getStartRow();
		int endRow = bookVo.getEndRow();
		long totalcount = bfRepository.getFavBookMem(mem_num);
		List<BookFavorite> list = bfRepository.selectPerPageMem(startRow, endRow, mem_num);
		BookFavoriteListResult bflr = new BookFavoriteListResult(cp, totalcount, ps ,list);
		
		//페이징 (시작페이지, 끝페이지)
		int endpaging = ((int)Math.ceil((double)cp / (double)5)) * 5;
		int startpaging = endpaging - 4;
		int cntpg = 0;
		cntpg = (int)(totalcount/ps);
		if(totalcount % ps != 0) {
			cntpg++;
		} 	
		if (cntpg < endpaging) {
			endpaging = cntpg;
		}
		bflr.setStartpaging(startpaging);
		bflr.setEndpaging(endpaging);
		log.info("###blr1 : " + bflr);
		return bflr;
	}

}
