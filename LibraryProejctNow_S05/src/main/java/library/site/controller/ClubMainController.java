package library.site.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import library.site.domain.ClubCalendar;
import library.site.domain.ClubMain;
import library.site.repository.ClubCalendarRepository;
import library.site.service.ClubMainService;
import library.site.service.DynamicScheduler;
import library.site.service.SeatService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@RestController
@RequestMapping("/api")
public class ClubMainController {
	
	private ClubMainService clubMainService;
	private final ClubCalendarRepository clubCalendarRepository;
	
	@GetMapping("/clubmain")
	public List<ClubMain> show() {
		return clubMainService.selectClubMain();
	}
	
	@PostMapping("/write")
	public void write(ClubCalendar clubCalendar,HttpServletResponse response)throws IOException {
		log.info(clubCalendar);
		clubMainService.saveClubCalendarAll(clubCalendar);
		//log.info("#calendar"+clubMainService.selectClubMain());
		
		response.sendRedirect("http://13.209.64.211:80/board");
	}
	@GetMapping("/showCalendar")
	public List<ClubCalendar> showCalendar() {
		return clubMainService.selectClubCalendar();
	}
	
	@GetMapping("/boardDetail/{id}")
	public ClubCalendar showDetail(@PathVariable long id) {
		log.info(id);
		return clubMainService.selectDetail(id);
	}
	
	
	@GetMapping("/clubDelete/{id}")
	public void deleteClub(@PathVariable long id,HttpServletResponse response)throws IOException {
		log.info(id);
		clubMainService.deleteClub(id);
		//response.sendRedirect("http://localhost:3000/board");
	}
	
	@PostMapping("/update")
	public void update(ClubCalendar clubCalendar, HttpServletResponse response) throws IOException{
		log.info(clubCalendar);
		clubMainService.updateClub(clubCalendar);
		response.sendRedirect("http://13.209.64.211:80/board");
	}
}
