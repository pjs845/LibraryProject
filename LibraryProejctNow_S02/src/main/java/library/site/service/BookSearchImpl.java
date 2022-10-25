package library.site.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



import library.site.domain.Book;
import library.site.domain.BookListResult;
import library.site.domain.BookVo;
import library.site.domain.LibraryBook;
import library.site.mapper.BookSearchMapper;
import library.site.mapper.FacilityMapper;
import library.site.repository.LibraryBookRepository;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@RequiredArgsConstructor
public class BookSearchImpl implements BookSearch {
	@Autowired
	private BookSearchMapper bookmapper;
	@Autowired
	private FacilityMapper fcmapper;
	
	private final LibraryBookRepository lbRepository;
	
	String key = "ttbqkrwlstjrzoq2232001";
	@Override
	public BookListResult getBookListResult(int cp, int ps) {
		BookListResult blr = new BookListResult();
		return blr;
	}
	
	@Override
	public BookListResult getBookListResult(int sorted, int cp, int ps, long catgo, String keyword) {
		String QueryType = "";
		if(catgo==1) { //Keyword (�⺻��) : ����+����
			QueryType="Keyword";
		}else if(catgo==2) { //Title : ����˻�
			QueryType="Title";
		}else if(catgo==3) { //Author : ���ڰ˻�
			QueryType="Author";
		}else if(catgo==4) { //Publisher : ���ǻ�˻�
			QueryType="Publisher";
		}else {
			QueryType="Keyword";
		}
		String sort = "";
		if(sorted==1) { //�Ǹŷ�
			sort = "SalesPoint";
		}else if(sorted==2) { //��Ȯ��
			sort = "Accuracy";
		}else if(sorted==3) { //������
			sort = "PublishTime";
		}else if(sorted==4) { //������
			sort = "CustomerRating";
		}
		//log.info("### QueryType: " + QueryType);
		//log.info("### keyword: " + keyword);
		BookListResult blr = new BookListResult();
		try {
			//�˶�� API ��� �����˻� API
			keyword = URLEncoder.encode(keyword, "UTF-8");
			String searchUrl = "https://www.aladin.co.kr/ttb/api/ItemSearch.aspx?"
					+ "ttbkey="+key+"&Query="+ keyword
					+ "&QueryType="+QueryType+"&MaxResults="+ps+"&cover=Big&start="+cp
					+"&SearchTarget=Book&Sort="+sort
					+"&output=js&Version=20131101"; 
			String popBookUrl = "https://www.aladin.co.kr/ttb/api/ItemSearch.aspx?"
					+ "ttbkey="+key+"&Query="+ keyword
					+ "&QueryType="+QueryType+"&MaxResults=10&cover=Big&start=1"
					+"&SearchTarget=Book&Sort=SalesPoint&output=js&Version=20131101"; 
			String dvdUrl = "https://www.aladin.co.kr/ttb/api/ItemSearch.aspx?"
					+ "ttbkey="+key+"&Query="+ keyword
					+ "&QueryType="+QueryType+"&MaxResults=5&cover=Big&start=1"
					+"&SearchTarget=DVD&Sort=SalesPoint&output=js&Version=20131101";
			//api url�� jsonŸ���� ������ ��������
			JSONObject json = readJsonFromUrl(searchUrl);
			JSONArray jsonarray = json.getJSONArray("item");
			List<Book> list = new ArrayList<Book>();
			//log.info("##jsonarray: " + jsonarray);
			//book ������ ����
			for(int i=0; i<jsonarray.length(); i++) {
				Book book = new Book();
				JSONObject order = jsonarray.getJSONObject(i);
				book.setTitle(order.getString("title"));
				String writer = order.getString("author");				
				book.setWriter(writer);
				book.setDescription(order.getString("description"));
				book.setPublisher(order.getString("publisher"));
				book.setCatgo(order.getString("categoryName"));
				book.setImg(order.getString("cover"));
				String isbnnum = order.getString("isbn13");
				if(isbnnum.length()>0) { //isbn13���� ������ isbn������ ��ü
					book.setIsbn(isbnnum);
				}else {
					book.setIsbn(order.getString("isbn"));
				}
				list.add(book);
			}
			
			//����¡ (����������, ��������)
			int endpaging = ((int)Math.ceil((double)cp / (double)5)) * 5;
			int startpaging = endpaging - 4;
			int cntpg = 0;
			int totalPageCount = json.getInt("totalResults");
			log.info("###tot: " + totalPageCount);
			int pageCountLimit = 0;
			if(totalPageCount>200) { //�˶�� API �˻��� 200������
				pageCountLimit = 200;
			}else {
				pageCountLimit = totalPageCount;
			}
			cntpg = (int)(pageCountLimit/ps);
			if(pageCountLimit % ps != 0) {
				cntpg++;
			} 	
			if (cntpg < endpaging) {
				endpaging = cntpg;
			}
			if(totalPageCount>(cntpg*ps)) {
				totalPageCount=cntpg*ps;//�˶�� API �˻��� 200�� �ʰ��ص� ������ ������ŭ�� ����
			}			
			blr.setTotalPageCount(cntpg);
			blr.setStartpaging(startpaging);
			blr.setEndpaging(endpaging);			
			//book, ����������, �������� ������ ����
			blr.setItems(list);
			blr.setTotalCount(totalPageCount);
			blr.setCp(cp);
			blr.setPs(ps);		
			blr.setSorted(sorted);
			//�α⵵�� �˻� ����
			JSONObject jsonpop = readJsonFromUrl(popBookUrl);
			JSONArray jsonarraypop = jsonpop.getJSONArray("item");
			List<Book> listpop = new ArrayList<Book>();			
			for(int i=0; i<jsonarraypop.length(); i++) {
				Book bookpop = new Book();
				JSONObject order = jsonarraypop.getJSONObject(i);
				bookpop.setTitle(order.getString("title"));
				String writer = order.getString("author");
				bookpop.setWriter(writer);
				bookpop.setPublisher(order.getString("publisher"));
				bookpop.setCatgo(order.getString("categoryName"));
				bookpop.setImg(order.getString("cover"));
				String isbnnum = order.getString("isbn13");
				if(isbnnum.length()>0) { //isbn13���� ������ isbn������ ��ü
					bookpop.setIsbn(isbnnum);
				}else {
					bookpop.setIsbn(order.getString("isbn"));
				}
				listpop.add(bookpop);
			}
			blr.setPopBook(listpop);
			//DVD�˻� ����
			JSONObject jsondvd = readJsonFromUrl(dvdUrl);
			JSONArray jsonarraydvd = jsondvd.getJSONArray("item");
			List<Book> listdvd = new ArrayList<Book>();
			for(int i=0; i<jsonarraydvd.length(); i++) {
				Book bookdvd = new Book();
				JSONObject order = jsonarraydvd.getJSONObject(i);
				bookdvd.setTitle(order.getString("title"));				
				String writer = order.getString("author");
				bookdvd.setWriter(writer);
				bookdvd.setImg(order.getString("cover"));					
				String isbnnum = order.getString("isbn13");
				if(isbnnum.length()>0) { //isbn13���� ������ isbn������ ��ü
					bookdvd.setIsbn(isbnnum);
				}else {
					bookdvd.setIsbn(order.getString("isbn"));
				}
				listdvd.add(bookdvd);
			}
			blr.setDvd(listdvd);
		}
		catch(Exception e) {
			log.info("#e :"+ e);
		}
		return blr;
	}	
	
	@Override
	public BookListResult getBookCatgoListResult(int typed, int cp, int ps, int catgoId) {
		String type = "";
		if(typed==1) { //�Ű� ��ü ����Ʈ
			type = "ItemNewAll";
		}else if(typed==2) { //�ָ��� ���� �Ű� ����Ʈ
			type = "ItemNewSpecial";
		}else if(typed==3) { //������ ��õ ����Ʈ
			type = "ItemEditorChoice";
		}else if(typed==4) { //����Ʈ����
			type = "Bestseller";
		}else {
			type = "ItemNewAll"; //default
		}
		
		String catgoUrl = "http://www.aladin.co.kr/ttb/api/ItemList.aspx?"
				+ "ttbkey="+key+"&QueryType="+type+"&MaxResults="+ps+"&cover=Big"
				+ "&start="+cp+"&SearchTarget=Book&CategoryId="+catgoId+"&output=js&Version=20131101";
		log.info("catgoUrl: " + catgoUrl);
		BookListResult blr = new BookListResult();
		try {
			JSONObject json = readJsonFromUrl(catgoUrl);
			JSONArray jsonarray = json.getJSONArray("item");
			List<Book> list = new ArrayList<Book>();
			//log.info("##jsonarray: " + jsonarray);
			//book ������ ����
			for(int i=0; i<jsonarray.length(); i++) {
				Book book = new Book();
				JSONObject order = jsonarray.getJSONObject(i);
				book.setTitle(order.getString("title"));
				String writer = order.getString("author");				
				book.setWriter(writer);
				book.setDescription(order.getString("description"));
				book.setPublisher(order.getString("publisher"));
				book.setCatgo(order.getString("categoryName"));
				book.setImg(order.getString("cover"));
				String isbnnum = order.getString("isbn13");
				if(isbnnum.length()>0) { //isbn13���� ������ isbn������ ��ü
					book.setIsbn(isbnnum);
				}else {
					book.setIsbn(order.getString("isbn"));
				}
				list.add(book);				
			}
			//����¡ (����������, ��������)
			int endpaging = ((int)Math.ceil((double)cp / (double)5)) * 5;
			int startpaging = endpaging - 4;
			int cntpg = 0;
			int totalPageCount = json.getInt("totalResults");
			log.info("###tot: " + totalPageCount);
			int pageCountLimit = 0;
			if(totalPageCount>200) { //�˶�� API �˻��� 200������
				pageCountLimit = 200;
			}else {
				pageCountLimit = totalPageCount;
			}
			cntpg = (int)(pageCountLimit/ps);
			if(pageCountLimit % ps != 0) {
				cntpg++;
			} 	
			if (cntpg < endpaging) {
				endpaging = cntpg;
			}
			if(totalPageCount>(cntpg*ps)) {
				totalPageCount=cntpg*ps;//�˶�� API �˻��� 200�� �ʰ��ص� ������ ������ŭ�� ����
			}
			blr.setTotalPageCount(cntpg);
			blr.setStartpaging(startpaging);
			blr.setEndpaging(endpaging);			
			//book, ����������, �������� ������ ����
			blr.setItems(list);
			long count = cntpg*ps;
			blr.setTotalCount(count);
			blr.setCp(cp);
			blr.setPs(ps);	
			blr.setQtype(typed);
			
			log.info("#books: " + list);
		}
		catch(Exception e) {
			log.info("e: " + e);
		}		
		return blr;
	}
	
	
	@Override
	public Book getBook(String isbn) {		
		String searchUrl =
		"http://www.aladin.co.kr/ttb/api/ItemLookUp.aspx?ttbkey="+key
	    + "&itemIdType=ISBN&ItemId="+isbn+"&output=js&cover=Big" 
		+ "&Version=20131101&OptResult=ebookList,usedList,reviewList,packing";		
		Book book = new Book();
		try {
			JSONObject json = readJsonFromUrl(searchUrl);	
			JSONArray jsonitem = json.getJSONArray("item");
			
			int catgoId = 0;
			log.info(jsonitem);
			//�� ���� ����
			for(int i=0; i<jsonitem.length(); i++) {
				JSONObject order = jsonitem.getJSONObject(i);
				book.setTitle(order.getString("title"));
				String writer = order.getString("author");			
				book.setWriter(writer);
				book.setPublisher(order.getString("publisher"));
				book.setDescription(order.getString("description"));
				book.setCatgo(order.getString("categoryName"));
				book.setImg(order.getString("cover"));
				String isbnnum = order.getString("isbn13");
				if(isbnnum.length()>0) { //isbn13���� ������ isbn������ ��ü
					book.setIsbn(isbnnum);
				}else {
					book.setIsbn(order.getString("isbn"));
				}
				catgoId = order.getInt("categoryId");
				book.setCatgoId(catgoId);
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				Date pubDate = format.parse(order.getString("pubDate"));
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy��MM��dd��");
				String date = sdf.format(pubDate);
				log.info(date);
				
				book.setPubDate(date);
				JSONObject jsonsub = order.getJSONObject("subInfo");
				log.info(jsonsub);
				book.setPage(jsonsub.getInt("itemPage"));
				JSONObject jsonpack = jsonsub.getJSONObject("packing");
				book.setSizeWidth(jsonpack.getInt("sizeWidth"));
				book.setSizeHeight(jsonpack.getInt("sizeHeight"));
				book.setSizeDepth(jsonpack.getInt("sizeDepth"));
				book.setWeight(jsonpack.getInt("weight"));
				
			}			
		}
		catch(Exception e) {
			log.info("#e :"+ e);
		}	
		return book;
	}	
	public BookListResult getBookCatgoRefer(int catgoId) {
		//ī�װ� ���� ���� ���� ����
		String catgoreferUrl = "http://www.aladin.co.kr/ttb/api/ItemList.aspx?"
				+ "ttbkey="+key+"&QueryType=ItemNewAll&MaxResults=5&cover=MidBig"
				+ "&start=1&SearchTarget=Book&CategoryId="+catgoId+"&output=js&Version=20131101";	
		log.info("catgoreferUrl: " + catgoreferUrl);
		BookListResult blr = new BookListResult();
		try {
			JSONObject json = readJsonFromUrl(catgoreferUrl);
			JSONArray jsonarray = json.getJSONArray("item");
			List<Book> list = new ArrayList<Book>();
			//log.info("##jsonarray: " + jsonarray);
			//book ������ ����
			for(int i=0; i<jsonarray.length(); i++) {
				Book book = new Book();
				JSONObject order = jsonarray.getJSONObject(i);
				book.setTitle(order.getString("title"));
				String writer = order.getString("author");			
				book.setWriter(writer);
				book.setImg(order.getString("cover"));		
				String isbnnum = order.getString("isbn13");
				if(isbnnum.length()>0) { //isbn13���� ������ isbn������ ��ü
					book.setIsbn(isbnnum);
				}else {
					book.setIsbn(order.getString("isbn"));
				}
				list.add(book);
			}	
			blr.setCatgoBook(list);
		}
		catch(Exception e) {
			log.info("e: " + e);
		}	
		
		return blr;
	}
	public BookListResult getBookWriterRefer(String writer) {
		//�۰� ���� ���� ����
		BookListResult blr = new BookListResult();
		try {
			writer = URLEncoder.encode(writer, "UTF-8");
			String searchWriterUrl = "https://www.aladin.co.kr/ttb/api/ItemSearch.aspx?"
					+ "ttbkey="+key+"&Query="+ writer
					+ "&QueryType=Author&MaxResults=10&cover=Big&start=1"
					+"&SearchTarget=Book&"
					+"&output=js&Version=20131101"; 
			log.info("catgoreferUrl: " + searchWriterUrl);			
			JSONObject json = readJsonFromUrl(searchWriterUrl);
			JSONArray jsonarray = json.getJSONArray("item");
			List<Book> list = new ArrayList<Book>();
			//log.info("##jsonarray: " + jsonarray);
			//book ������ ����
			for(int i=0; i<jsonarray.length(); i++) {
				Book book = new Book();
				JSONObject order = jsonarray.getJSONObject(i);
				book.setTitle(order.getString("title"));
				String author = order.getString("author");			
				book.setWriter(author);
				book.setImg(order.getString("cover"));
				String isbnnum = order.getString("isbn13");
				if(isbnnum.length()>0) { //isbn13���� ������ isbn������ ��ü
					book.setIsbn(isbnnum);
				}else {
					book.setIsbn(order.getString("isbn"));
				}
				list.add(book);
			}	
			blr.setWriterBook(list);
		}
		catch(Exception e) {
			log.info("e: " + e);
		}	
		
		return blr;
	}
	private static String jsonReadAll(Reader reader) throws IOException{
        StringBuilder sb = new StringBuilder();
        int cp;
        while((cp = reader.read()) != -1){
            sb.append((char) cp);
            
        }
        return sb.toString();
    }
	
	private static JSONObject readJsonFromUrl(String url) throws IOException, JSONException{
		InputStream is = new URL(url).openStream();
		try{
            BufferedReader br = new BufferedReader(new InputStreamReader(is, Charset.forName("utf-8")));
            String jsonText = jsonReadAll(br);
            JSONObject json = new JSONObject(jsonText);
            return json;
        } finally {
            is.close();
        }
    }
	
	@Override
	public LibraryBook getLibraryBook(String isbn) {
		LibraryBook book = bookmapper.select(isbn);
		return book;
	}
	@Override
	public List<LibraryBook> autoComplete(String title) {
		return bookmapper.selectByName(title); 
	}
	
	@Override
	public String BookLocation(String isbn) { //å��ġ
		LibraryBook book = bookmapper.select(isbn);
		long locnum = 0;
		try {
			locnum = book.getF_num();
		}catch(NullPointerException npe) {
			locnum = 0;
		}
		String loc =  fcmapper.book_loc(locnum);
		return loc;
	}
	@Override
	public long BookFloor(String isbn) { //å��ġ(��)
		LibraryBook book = bookmapper.select(isbn);
		long locnum = 0;
		try {
			locnum = book.getF_num();
		}catch(NullPointerException npe) {
			locnum = 0;
		}
		long loc =  fcmapper.book_floor(locnum);
		return loc;
	}
	@Override
	public LibraryBook getLibraryBookNum(long book_num) {
		LibraryBook book = bookmapper.select_num(book_num);
		return book;
	}
	
	@Override
	public List<LibraryBook> getRecomendBook(){
		List<LibraryBook> list = lbRepository.searchRecomendBook();
		return list;
	}
	@Override
	public BookListResult getRecomendBookMore(int cp, int ps) {
		BookVo bookVo = new BookVo(cp, ps);
		int startRow= bookVo.getStartRow();
		int endRow= bookVo.getEndRow();
		List<LibraryBook> list = lbRepository.searchRecomendBook(startRow, endRow);
		long totalCount = lbRepository.RecomendTot();
		BookListResult blr = new BookListResult(cp, totalCount, ps, list);
		//����¡ (����������, ��������)
		int endpaging = ((int)Math.ceil((double)cp / (double)5)) * 5;
		int startpaging = endpaging - 4;
		int cntpg = 0;
		cntpg = (int)(totalCount/ps);
		if(totalCount % ps != 0) {
			cntpg++;
		} 	
		if (cntpg < endpaging) {
			endpaging = cntpg;
		}
		blr.setStartpaging(startpaging);
		blr.setEndpaging(endpaging);
		return blr;
	}
	
	
}
