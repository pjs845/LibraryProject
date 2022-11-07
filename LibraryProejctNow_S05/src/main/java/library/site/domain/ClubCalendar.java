package library.site.domain;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name="CLUB_CALENDAR")
public class ClubCalendar {
	@Id @Column(name = "CCNUM")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "CC_SequenceGenerator")
	@SequenceGenerator(sequenceName = "CLUB_CALENDAR_SEQ", name = "CC_SequenceGenerator", allocationSize = 1,initialValue=10)
	private long ccnum;
	@Column
	private long mem_num;
	@Column
	private String cc_subject;
	@Column
	private String cc_leader;
	@Column
	private String cc_img;
	@Column
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern="yyyy-MM-dd", timezone="Asia/Seoul")
	private Date cc_date;
	@Column
	private String cc_catgo;
	@Column
	private String cc_content;
	@Column
	private long cc_times;
	@Column
	private long cc_headcount;
	@Column
	private String cc_roundtopic;
	@Column
	private String cc_detail;
	@Column
	private long cc_like;
	@Column
	private String cc_onoff;
	@Column
	private int cc_auth;
}
