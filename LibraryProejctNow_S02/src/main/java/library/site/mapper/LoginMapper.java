package library.site.mapper;

import library.site.domain.Member;

public interface LoginMapper {
	int signUp(Member member);		// ȸ������
	Member login(Member member);	// �α���
	Member mypage(long mem_num);	// ����������
	int emailCheck(String mem_email);	// �̸��� �ߺ�üũ
	int phoneCheck(String mem_phone);	//�� �ߺ�üũ
	int idCheck(String mem_id);		//���̵� �ߺ�üũ
	String phoneAccount(String mem_phone);	//����ã��(���̵�)
	String findPass(String mem_email);	//����ã��(�н�����)
	
	int NaverSignUp(Member member);	//���̹� ȸ������(����)
	int deleteMember(Member member);	// ȸ�� Ż��
	int deleteNaverMember(String mem_email);	//���̹� ȸ��Ż��
	int passCheck(Member member);	// ȸ�� Ż��� �н����� üũ
	Member naverLogin(String mem_email);	// ���̹� �α��ν� �ڱ��� �ʱ��н����� ���� ȸ�����Զ� ������ �н����� �� ��������
	int passUpdate(Member member);	// ȸ�� ���� ����
}
