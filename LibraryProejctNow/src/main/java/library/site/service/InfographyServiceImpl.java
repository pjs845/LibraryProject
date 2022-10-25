package library.site.service;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import library.site.domain.ChartDTO;
import library.site.repository.ClassificationRepository;
import library.site.repository.LibraryBookRepository;
import library.site.repository.RentalBookRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;


@Log4j
@Service
@RequiredArgsConstructor
public class InfographyServiceImpl implements InfographyService {

	private final RentalBookRepository rbRepository;
	private final ClassificationRepository cfRepository;
	private final LibraryBookRepository lbRepository;
	
	@Transactional
	@Override
	public List<ChartDTO> getWeekRentalChart() {		
		Calendar cal = Calendar.getInstance();
		List<String> dates = new ArrayList<String>(); //������ ��~�� ��¥ ����Ʈ ����
		cal.add(Calendar.DATE, -7);
		int nWeek = cal.get(Calendar.DAY_OF_WEEK); //������ ����		
		cal.add(Calendar.DATE, 1-nWeek); //�Ͽ��� �ǵ��� ����		
		for(int i=0; i<7; i++) {
			cal.add(Calendar.DATE, 1);
			int day =  cal.get(Calendar.DATE);//������ ���� �Ͽ��� ��¥ ���ϱ�
			int month = cal.get(Calendar.MONTH)+1;
			String date =cal.get(Calendar.YEAR)+"/"+month+"/"+day;
			//log.info("��¥ : " + date);
			dates.add(date);
		}					
		String days[] = {"��", "ȭ", "��", "��", "��", "��", "��"};
		List<ChartDTO> list = new ArrayList<ChartDTO>();
		for(int i=0; i<days.length; i++) {
			try {				
				long count = rbRepository.getLastWeekRentalCount(dates.get(i));
				ChartDTO dto = new ChartDTO(days[i], count);
				list.add(dto);
				
			}
			catch(NullPointerException npe) {
				ChartDTO dto = new ChartDTO(days[i], 0);
				list.add(dto);
			}			
		}		
 		return list;
	}

	@Override
	public List<ChartDTO> getMonthCatgoRentalChart() { //�Ѵް� �帣�� ���� ��
		Calendar cal = Calendar.getInstance();		
		cal.add(Calendar.MONTH, -1); 	//�Ѵ���		
		int year = cal.get(Calendar.YEAR); //�Ѵ��� �⵵
		int month = cal.get(Calendar.MONTH)+1; //�Ѵ��� ��
		int firstday = cal.getActualMinimum(Calendar.DAY_OF_MONTH); //�Ѵ��� ���� ù��° ��
		int endday = cal.getActualMaximum(Calendar.DAY_OF_MONTH);		// �Ѵ��� ���� ������ ��
		String fDay = year +"-" + month +"-" + firstday;
		String eDay = year +"-" + month +"-" + endday;
		List<String> listName = cfRepository.findClass_name();
		log.info("##listName : " + listName);
		List<ChartDTO> list = new ArrayList<ChartDTO>();
		for (int i=0; i<listName.size(); i++) {
			try {								
				String catgo = listName.get(i);				
				long count = rbRepository.getLastMonthCatgoRentalCount(catgo, fDay, eDay);
				ChartDTO dto = new ChartDTO(listName.get(i), count);
				list.add(dto);				
			}
			catch(NullPointerException npe) {
				ChartDTO dto = new ChartDTO(listName.get(i), 0);
				list.add(dto);				
			}
		}
		return list;
	}

	@Override
	public List<ChartDTO> getMonthPopRentalChart() { //�Ѵް� �α� ���� ����
		Calendar cal = Calendar.getInstance();		
		cal.add(Calendar.MONTH, -1); 	//�Ѵ���		
		int year = cal.get(Calendar.YEAR); //�Ѵ��� �⵵
		int month = cal.get(Calendar.MONTH)+1; //�Ѵ��� ��
		int firstday = cal.getActualMinimum(Calendar.DAY_OF_MONTH); //�Ѵ��� ���� ù��° ��
		int endday = cal.getActualMaximum(Calendar.DAY_OF_MONTH);		// �Ѵ��� ���� ������ ��
		String fDay = year +"-" + month +"-" + firstday;
		String eDay = year +"-" + month +"-" + endday;
		log.info("1");
		List<Long> listBookNums = rbRepository.getLastMonthPopRentalBook(fDay, eDay);
		log.info("####listBookNums : " + listBookNums);
		List<Long> listRenNums = rbRepository.getLastMonthPopRentalCount(fDay, eDay);
		log.info("####listRenNums : " + listRenNums);
		List<ChartDTO> list = new ArrayList<ChartDTO>();
		log.info("4");
		for (int i=0; i<listBookNums.size(); i++) {
			try {								
				long listBookNum = Long.parseLong(String.valueOf(listBookNums.get(i)));
				String bookName = lbRepository.findByBook_num(listBookNum).getBook_title();
				long count = Long.parseLong(String.valueOf(listRenNums.get(i)));
				ChartDTO dto = new ChartDTO(bookName, count);
				list.add(dto);				
			}
			catch(NullPointerException npe) {
				ChartDTO dto = new ChartDTO("", 0);
				list.add(dto);				
			}
		}
		return list;
	}

	@Transactional
	@Override
	public List<ChartDTO> getBookCatgoChart() {
		List<String> listName = cfRepository.findClass_name(); 
		//log.info("####names: " + listName);
		List<Long> listCount = cfRepository.countClass_num();
		//log.info("####listCount: " + listCount);
		List<ChartDTO> list = new ArrayList<ChartDTO>();
		for(int i=0; i<listName.size(); i++) {			
			try {								
				long count = Long.parseLong(String.valueOf(listCount.get(i)));
				ChartDTO dto = new ChartDTO(listName.get(i), count);
				list.add(dto);
			}
			catch(NullPointerException npe) {
				ChartDTO dto = new ChartDTO(listName.get(i), 0);
				list.add(dto);
			}
		}
		return list;
	}
	
	@Transactional
	@Override
	public List<ChartDTO> getBookWeekChart(String isbn) {
		Calendar cal = Calendar.getInstance();
		List<String> dates = new ArrayList<String>(); //������ ��~�� ��¥ ����Ʈ ����
		cal.add(Calendar.DATE, -7);
		int nWeek = cal.get(Calendar.DAY_OF_WEEK); //������ ����		
		cal.add(Calendar.DATE, 1-nWeek); //�Ͽ��� �ǵ��� ����		
		for(int i=0; i<7; i++) {
			cal.add(Calendar.DATE, 1);
			int day =  cal.get(Calendar.DATE);//������ ���� �Ͽ��� ��¥ ���ϱ�
			int month = cal.get(Calendar.MONTH)+1;
			String date =cal.get(Calendar.YEAR)+"-"+month+"-"+day;
			dates.add(date);
		}					
		String days[] = {"��", "ȭ", "��", "��", "��", "��", "��"};
		List<ChartDTO> list = new ArrayList<ChartDTO>();
		for(int i=0; i<days.length; i++) {
			try {				
				long count = rbRepository.getLastWeekBookRentalCount(dates.get(i), isbn);
				ChartDTO dto = new ChartDTO(days[i], count);
				list.add(dto);				
			}
			catch(NullPointerException npe) {
				ChartDTO dto = new ChartDTO(days[i], 0);
				list.add(dto);
			}			
		}		
 		return list;
	}

}
