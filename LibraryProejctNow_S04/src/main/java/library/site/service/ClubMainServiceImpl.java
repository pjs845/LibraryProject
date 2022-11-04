package library.site.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import library.site.domain.ClubCalendar;
import library.site.domain.ClubMain;
import library.site.repository.ClubCalendarRepository;
import library.site.repository.ClubMainRepository;
import library.site.repository.MemberRepository;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor //repository ÀÇÁ¸¼º
public class ClubMainServiceImpl implements ClubMainService {
	private final ClubMainRepository clubMainRepository;
	private final ClubCalendarRepository clubCalendarRepository;
	@Override
	@Transactional
	public List<ClubMain> selectClubMain(){
		
		return clubMainRepository.findAll();
	}
	
	@Override
	@Transactional
	public List<ClubCalendar> selectClubCalendar(){
		return clubCalendarRepository.findAll(Sort.by(Sort.Direction.DESC,"ccnum"));
	}
	@Override
	@Transactional
	public void saveClubCalendarAll(ClubCalendar clubClalendar) {
		clubCalendarRepository.save(clubClalendar);
	}
	@Override
	@Transactional
	public ClubCalendar selectDetail(long id) {
		
		return clubCalendarRepository.findById(id).orElse(null);
	}
	
	@Override
	@Transactional
	public void deleteClub(long id) {
		clubCalendarRepository.deleteById(id);
	}
	@Override
	@Transactional
	public void updateClub(ClubCalendar clubCalendar) {
		
		clubCalendarRepository.save(clubCalendar);
	}
	
}
