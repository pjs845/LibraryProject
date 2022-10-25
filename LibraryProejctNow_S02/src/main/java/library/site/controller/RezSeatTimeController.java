
package library.site.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import library.site.domain.Reservation;
import library.site.domain.Seat;
import library.site.domain.SeatTime;
import library.site.service.SeatService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@Controller
public class RezSeatTimeController {
	SeatService seatService;

	@RequestMapping("seatTime")
	public void insertSeatTime() {
		SeatTime seatTime = new SeatTime();
		for(int i=208;i<=412;i++) {
			seatTime.setSeat_seq(i);
			for(int j=9;j<=21;j++) {
				LocalDate now = LocalDate.now();
				DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd");         
				String formatedNow = now.format(formatter);         
				
				seatTime.setSeat_time(formatedNow+" "+j+":00:00");
				seatService.insertTime(seatTime);
			}
		}
	}
	
    
	//localhost:8080/seatTime
	@RequestMapping("seatTimeUpdate") // ������¥�� ������ ã�Ƽ� ���ó�¥�� ������Ʈ
	public void updateSeatTime() {
		
		SeatTime seatTime = new SeatTime();
		for(int i=208;i<=412;i++) {
			seatTime.setSeat_seq(i);
			for(int j=9;j<=21;j++) {
				Calendar cal = Calendar.getInstance();
				cal.setTime(new Date());
			    DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			    seatTime.setSeat_time(df.format(cal.getTime())+" "+j+":00:00"); //���� ��¥
			    log.info("#����ð�: "+ df.format(cal.getTime()));
				seatTime.setBefore_time(seatService.selectTimeBySeq().substring(0, 10)+" "+j+":00:00"); // ���� ��¥
				log.info(seatTime);
				seatService.updateSeatTimeAll(seatTime);
			}
		}
	}
	//localhost:8080/seatTimeUpdate
	@PostMapping("selectTime")
	@ResponseBody
	public String selectTime(@RequestBody String Data, Seat seat) throws JsonProcessingException{
		JsonParser parser = new JsonParser();
		JsonElement element = parser.parse(Data);
		JsonObject jsonObject = element.getAsJsonObject();
		String seatnum = jsonObject.get("seatnum").getAsString();
		long roomnum = Long.parseLong(jsonObject.get("roomid").getAsString())+5;
		seat.setSeat_num(seatnum);
		seat.setF_num(roomnum);
		List<SeatTime> list = seatService.selectSeatTime(seat);
		long seatSeq = list.get(0).getSeat_seq();
		// ���ó�¥���� ū�ɷθ� �߸���, fetch ���� ���� Reservation list ���·� ���� ��簪�� js�� �ѱ�Բ� �����
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("seq",seatSeq);
		Calendar cal = Calendar.getInstance();
		cal.setTime(new Date());
	    DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
	    
		map.put("today",df.format(cal.getTime())+" "+"00:00:00"); // ����¥�� �ֱ�
		List<Reservation> rezTime = seatService.selectTime(map);
		
		JSONObject response = new JSONObject();
		JSONArray jsonArrayList = new JSONArray(list);
		try {
			rezTime.get(0); // try �ؼ� ���� �ϰ͵� ������ catch�� ������ �뵵
			JSONArray jsonArrayTime = new JSONArray(rezTime);
			response.put("reztime", jsonArrayTime);
			response.put("timelist", jsonArrayList);
			log.info(response.toString());
			return response.toString();
		}catch(IndexOutOfBoundsException ibe) {
			
			response.put("reztime", "null");
			response.put("timelist", jsonArrayList);
			log.info(response.toString());
			return response.toString();
		}
//		ObjectMapper om = new ObjectMapper();
//		String seatJson = om.writeValueAsString(response);

	}
	
}
