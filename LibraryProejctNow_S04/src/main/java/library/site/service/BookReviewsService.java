package library.site.service;

import java.util.List;

import org.springframework.data.repository.query.Param;

import library.site.domain.BookReviews;

public interface BookReviewsService {
	List<BookReviews> brsList(long book_num); //�ش��ϴ� �Ͽ����� ���� �������� �޼ҵ�
	List<BookReviews> reviewList(long book_num, int plusPage);
	
	int writeReviews(long book_num, long mem_num, int brs_rating, String brs_content); //���� �۾���
	int deleteReviews(long brs_num);
	int reviewTotal(long book_num); // ���� �� ����
	int reviewAvg(long book_num);	// ���� ���
	
	int reviewOne(long book_num);
	int reviewTwo(long book_num);
	int reviewThree(long book_num);
	int reviewFour(long book_num);
	int reviewFive(long book_num);
	
	
	int reviewUpdateLike(long brs_num); //���ƿ� �� 1 ������Ʈ
	int reviewDownLike(long brs_num);	// ���ƿ� �ѹ� �� ���� �� �ٿ�
	int reviewUpdateHate(long brs_num); //�Ⱦ�� �� 1 ������Ʈ
	int reviewDownHate(long brs_num);	// �Ⱦ�� �ѹ� �� ���� �� �ٿ�
	
	///////////////���� �α�////////////////
	int selectLike(long brs_num,long mem_num); // ���ƿ� Ȯ�� ���� 
	int selectHate(long brs_num,long mem_num);	// �Ⱦ�� Ȯ�� ���� 
	
	int likeLog(long brs_num,long mem_num); //���ƿ� �� �μ�Ʈ üũ
	int updateLikePlus(long brs_num, long mem_num); //���ƿ� �� ������Ʈ  + 1 üũ
	int updateLikeMinus(long brs_num, long mem_num);//���ƿ� �� ������Ʈ  - 1 üũ 
	
	int hateLog(long brs_num, long mem_num); //�Ⱦ�� �� �μ�Ʈ üũ
	int updateHatePlus(long brs_num, long mem_num);	//�Ⱦ�� �� ������Ʈ  + 1 üũ 
	int updateHateMinus(long brs_num, long mem_num);	//�Ⱦ�� �� ������Ʈ  - 1 üũ
	
	int dataExists(long brs_num, long mem_num);	//���� �α� ���̺� �����Ͱ� �����ϴ��� ���� 
	
}
