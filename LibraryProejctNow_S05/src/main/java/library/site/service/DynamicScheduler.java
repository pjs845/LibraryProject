package library.site.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Calendar;
import java.util.Date;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.Trigger;
import org.springframework.scheduling.concurrent.ThreadPoolTaskScheduler;
import org.springframework.scheduling.support.CronTrigger;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import library.site.domain.Seat;
import library.site.domain.SeatTime;

@Service
@Component
public class DynamicScheduler {
	@Autowired
	SeatService seatService;
	private ThreadPoolTaskScheduler scheduler1;
//	private String cron = "*/10 * * * * *";
	private String cron = "0 0 0 * * *";

	public void changeCronSet(String cron) {
		this.cron = cron;
	}
	public void stopScheduler() {
		scheduler1.shutdown();
	}
	public void startScheduler() {
		scheduler1 = new ThreadPoolTaskScheduler();
		scheduler1.initialize();

		scheduler1.schedule(getRunnable(),getTrigger());
	}
	public Runnable getRunnable() {
		return () ->{
			SeatTime seatTime = new SeatTime();
			for(int i=208;i<=412;i++) {
				seatTime.setSeat_seq(i);
				for(int j=9;j<=21;j++) {
					Calendar cal = Calendar.getInstance();
					cal.setTime(new Date());
				    DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
				    seatTime.setSeat_time(df.format(cal.getTime())+" "+j+":00:00"); //오늘 날짜
			    
					seatTime.setBefore_time(seatService.selectTimeBySeq().substring(0, 10)+" "+j+":00:00"); // 어제 날짜
				
					seatService.updateSeatTimeAll(seatTime);
				}
			}
		};
	}
	public Trigger getTrigger() {
		return new CronTrigger(cron);
	}
	@PostConstruct
	public void init() {
		startScheduler();
	}
//	@PreDestroy
//	public void destroy() {
//		stopScheduler();
//	}
	
//	public void startScheduler(Seat seat,SeatTime seatTime,String cron2) {
//	scheduler1 = new ThreadPoolTaskScheduler();
//	scheduler1.setPoolSize(4);
//	scheduler1.initialize();
//	changeCronSet(cron2);
//	scheduler1.schedule(getRunnable(seat,seatTime,cron),getTrigger());
//}
//
//public void startScheduler2(Seat seat,SeatTime seatTime) {
//	scheduler2 = new ThreadPoolTaskScheduler();
//	scheduler2.setPoolSize(4);
//	scheduler2.initialize();
//	scheduler2.schedule(getRunnable2(seat,seatTime),getTrigger());
//}
//	public Runnable getRunnable2(Seat seat,SeatTime seatTime) {
//	return () ->{
//		seat.setSeat_use("");
//		seatService.updateSeat(seat);
//		System.out.println("#2: "+ seat);
//		stopScheduler2();
//	};
//}
}
