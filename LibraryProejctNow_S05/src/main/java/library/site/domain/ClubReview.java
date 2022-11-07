package library.site.domain;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "club_review")
public class ClubReview {
	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private long cr_num;
	@Column
	private long ccnum;
	@Column
	private long mem_num;
	@Column
	private String mem_name;
	@Column
	private String cr_content;
	@Column
	private int cr_rating;
	@Column
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern="yyyy-MM-dd hh:mm:ss", timezone="Asia/Seoul")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date cr_date;

}
