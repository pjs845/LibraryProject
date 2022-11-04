package library.site.domain;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name="CLUB_APPLICATION")
public class ClubApplication {
	@Id @Column
	private long ca_num;
//	@Column
//	private long ccnum;
	@Column
	private long mem_num;
	@Column
	private int ca_count;
	@Column
	private Date ca_date;
	
	@ManyToOne
	@JoinColumn(name="ccnum")
	private ClubCalendar clubCalendar;
	
}
